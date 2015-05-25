package com.aspose.client;

import com.google.gson.Gson;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.filter.LoggingFilter;
import com.sun.jersey.api.client.WebResource.Builder;
import com.sun.jersey.multipart.FormDataMultiPart;

import javax.ws.rs.core.Response.Status.Family;

import java.util.Map;
import java.util.HashMap;

import java.io.UnsupportedEncodingException;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.URLEncoder;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.ws.rs.core.MediaType;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.IOUtils;

import com.aspose.cells.model.ResponseMessage;

public class ApiInvoker {
  private static ApiInvoker INSTANCE = new ApiInvoker();
  private Map<String, Client> hostMap = new HashMap<String, Client>();
  private Map<String, String> defaultHeaderMap = new HashMap<String, String>();
  private boolean isDebug = false;
  private static final String HMAC_SHA1_ALGORITHM = "HmacSHA1";

  public void enableDebug() {
    isDebug = true;
  }

  public static ApiInvoker getInstance() {
    return INSTANCE;
  }

  public void addDefaultHeader(String key, String value) {
     defaultHeaderMap.put(key, value);
  }

  public static String escapeString(String str) {
		try {
      return URLEncoder.encode(str, "utf8").replaceAll("\\+", "%20");
		} catch (UnsupportedEncodingException e) {
      return str;
    }
  }

  public static Object deserialize(ApiInvokerResponse aiResponse, String containerType, Class cls) throws ApiException {
	String json = "";
	  try {
		  if (cls.isInstance(new ResponseMessage())) {
			  ResponseMessage rm = new ResponseMessage();
				rm.setStatus("OK");
			  rm.setCode(200);
			  if (aiResponse.getInputStream() != null) {
				  rm.setInputStream(aiResponse.getInputStream());
			  }
			  return rm;		  
		  }
			json = (String)IOUtils.toString(aiResponse.getInputStream());			
			if (String.class.equals(cls)) {
			  if (json != null && json.startsWith("\"") && json.endsWith("\"") && json.length() > 1) {
          return json.substring(1, json.length() - 2);
			  } else {
          return json;
      }
		  } else {		  
				Gson gson = new Gson();
				return gson.fromJson(json, cls);
      }
		} catch (IOException e) {
		
      throw new ApiException(500, e.getMessage());
    }
  }

  public static String serialize(Object obj) throws ApiException {
    try {
			if (obj != null) {
				Gson gson = new Gson();
 
				// convert java object to JSON format,
				// and returned as JSON formatted string
				return gson.toJson(obj);
			} else {
				return null;
    }
		} catch (Exception e) {
      throw new ApiException(500, e.getMessage());
    }
  }

         public boolean SaveStreamToFile(String FileNameWithPath, InputStream inputStream) {

           try {
              // write the inputStream to a FileOutputStream
              OutputStream out = new FileOutputStream(new File(FileNameWithPath));

              int read = 0;
              byte[] bytes = new byte[8192];

              while ((read = inputStream.read(bytes)) != -1) {
                 out.write(bytes, 0, read);
				}

              inputStream.close();
              out.flush();
              out.close();
              return true;

          } catch (IOException e) {
              e.printStackTrace();
              return false;
    }
       }	   

	public static String Sign(String data, String AppKey, String AppSID, Map<String, String> queryParams, Map<String, String> headerParams, Map<String, String> formParams) {
		try {
			
			if (queryParams.get("Path") != null) {
				data = queryParams.get("Path").isEmpty() ? data.replace("/{path}/", "/") : data.replace("{path}", queryParams.get("Path"));
			} else if (formParams.get("Path") != null) {
				data = formParams.get("Path").isEmpty() ? data.replace("/{path}/", "/") : data.replace("{path}", formParams.get("Path"));
			}
			
			if (queryParams.get("src") != null) {
				data = queryParams.get("src").isEmpty() ? data.replace("/{src}/", "/") : data.replace("{src}", queryParams.get("src"));
			} else if (formParams.get("src") != null) {
				data = formParams.get("src").isEmpty() ? data.replace("/{src}/", "/") : data.replace("{src}", formParams.get("src"));
			}
			
			data = data.replace("/?", "?");
			data = data.replace(" ", "%20");
			data = data.replace("&amp;", "&");
			data = data.replace("{appSid}", AppSID);
			
			data = queryParams.get("storage") == null || queryParams.get("storage").isEmpty() ? data.replace("&storage={storage}", "") : data.replace("{storage}", queryParams.get("storage"));
			data = queryParams.get("dest") == null || queryParams.get("dest").isEmpty() ? data.replace("&dest={dest}", "") : data.replace("{dest}", queryParams.get("dest"));
			data = queryParams.get("versionId") == null || queryParams.get("versionId").isEmpty() ? data.replace("&versionId={versionId}", "") : data.replace("{versionId}", queryParams.get("versionId"));

			data = queryParams.get("newdest") == null || queryParams.get("newdest").isEmpty() ? data.replace("&newdest={newdest}", "") : data.replace("{newdest}", queryParams.get("newdest"));
			data = queryParams.get("destStorage") == null || queryParams.get("destStorage").isEmpty() ? data.replace("&destStorage={destStorage}", "") : data.replace("{destStorage}", queryParams.get("destStorage"));
			
			data = queryParams.get("name") == null || queryParams.get("name").isEmpty() ? data.replace("&name={name}", "") : data.replace("{name}", queryParams.get("name"));
			data = queryParams.get("hyperlinkIndex") == null || queryParams.get("hyperlinkIndex").isEmpty() ? data.replace("&hyperlinkIndex={hyperlinkIndex}", "") : data.replace("{hyperlinkIndex}", queryParams.get("hyperlinkIndex"));
			data = queryParams.get("withRegions") == null || queryParams.get("withRegions").isEmpty() ? data.replace("&withRegions={withRegions}", "") : data.replace("{withRegions}", queryParams.get("withRegions"));
			data = queryParams.get("bookmarkName") == null || queryParams.get("bookmarkName").isEmpty() ? data.replace("&bookmarkName={bookmarkName}", "") : data.replace("{bookmarkName}", queryParams.get("bookmarkName"));
			data = queryParams.get("objectIndex") == null || queryParams.get("objectIndex").isEmpty() ? data.replace("&objectIndex={objectIndex}", "") : data.replace("{objectIndex}", queryParams.get("objectIndex"));
			data = queryParams.get("folder") == null || queryParams.get("folder").isEmpty() ? data.replace("&folder={folder}", "") : data.replace("{folder}", queryParams.get("folder"));
			data = queryParams.get("outPath") == null || queryParams.get("outPath").isEmpty() ? data.replace("&outPath={outPath}", "") : data.replace("{outPath}", queryParams.get("outPath"));
			data = queryParams.get("password") == null || queryParams.get("password").isEmpty() ? data.replace("&password={password}", "") : data.replace("{password}", queryParams.get("password"));
			data = queryParams.get("url") == null || queryParams.get("url").isEmpty() ? data.replace("&url={url}", "") : data.replace("{url}", queryParams.get("url"));
			data = queryParams.get("withEmpty") == null || queryParams.get("withEmpty").isEmpty() ? data.replace("&withEmpty={withEmpty}", "") : data.replace("{withEmpty}", queryParams.get("withEmpty"));
			data = queryParams.get("format") == null || queryParams.get("format").isEmpty() ? data.replace("&toFormat={toFormat}", "") : data.replace("{toFormat}", queryParams.get("format")).replace("&toFormat=", "&format=");

			data = queryParams.get("rectX") == null || queryParams.get("rectX").isEmpty() ? data.replace("&rectX={rectX}", "") : data.replace("{rectX}", queryParams.get("rectX"));
			data = queryParams.get("rectY") == null || queryParams.get("rectY").isEmpty() ? data.replace("&rectY={rectY}", "") : data.replace("{rectY}", queryParams.get("rectY"));
			data = queryParams.get("rectWidth") == null || queryParams.get("rectWidth").isEmpty() ? data.replace("&rectWidth={rectWidth}", "") : data.replace("{rectWidth}", queryParams.get("rectWidth"));
			data = queryParams.get("rectHeight") == null || queryParams.get("rectHeight").isEmpty() ? data.replace("&rectHeight={rectHeight}", "") : data.replace("{rectHeight}", queryParams.get("rectHeight"));
			data = queryParams.get("useDefaultDictionaries") == null || queryParams.get("useDefaultDictionaries").isEmpty() ? data.replace("&useDefaultDictionaries={useDefaultDictionaries}", "") : data.replace("{useDefaultDictionaries}", queryParams.get("useDefaultDictionaries"));
			data = queryParams.get("language") == null || queryParams.get("language").isEmpty() ? data.replace("&language={language}", "") : data.replace("{language}", queryParams.get("language"));

			data = queryParams.get("text") == null || queryParams.get("text").isEmpty() ? data.replace("&text={text}", "") : data.replace("{text}", queryParams.get("text"));
			data = queryParams.get("type") == null || queryParams.get("type").isEmpty() ? data.replace("&type={type}", "") : data.replace("{type}", queryParams.get("type"));
			data = queryParams.get("format") == null || queryParams.get("format").isEmpty() ? data.replace("&format={format}", "") : data.replace("{format}", queryParams.get("format"));
			data = queryParams.get("resolutionX") == null || queryParams.get("resolutionX").isEmpty() ? data.replace("&resolutionX={resolutionX}", "") : data.replace("{resolutionX}", queryParams.get("resolutionX"));
			data = queryParams.get("resolutionY") == null || queryParams.get("resolutionY").isEmpty() ? data.replace("&resolutionY={resolutionY}", "") : data.replace("{resolutionY}", queryParams.get("resolutionY"));
			data = queryParams.get("dimensionX") == null || queryParams.get("dimensionX").isEmpty() ? data.replace("&dimensionX={dimensionX}", "") : data.replace("{dimensionX}", queryParams.get("dimensionX"));
			data = queryParams.get("dimensionY") == null || queryParams.get("dimensionY").isEmpty() ? data.replace("&dimensionY={dimensionY}", "") : data.replace("{dimensionY}", queryParams.get("dimensionY"));
			data = queryParams.get("enableChecksum") == null || queryParams.get("enableChecksum").isEmpty() ? data.replace("&enableChecksum={enableChecksum}", "") : data.replace("{enableChecksum}", queryParams.get("enableChecksum"));			
			data = queryParams.get("checksumValidation") == null || queryParams.get("checksumValidation").isEmpty() ? data.replace("&checksumValidation={checksumValidation}", "") : data.replace("{checksumValidation}", queryParams.get("checksumValidation"));
			data = queryParams.get("stripFnc") == null || queryParams.get("stripFnc").isEmpty() ? data.replace("&stripFnc={stripFnc}", "") : data.replace("{stripFnc}", queryParams.get("stripFnc"));
			data = queryParams.get("rotationAngle") == null || queryParams.get("rotationAngle").isEmpty() ? data.replace("&rotationAngle={rotationAngle}", "") : data.replace("{rotationAngle}", queryParams.get("rotationAngle"));
			data = queryParams.get("barcodesCount") == null || queryParams.get("barcodesCount").isEmpty() ? data.replace("&barcodesCount={barcodesCount}", "") : data.replace("{barcodesCount}", queryParams.get("barcodesCount"));
			data = queryParams.get("codeLocation") == null || queryParams.get("codeLocation").isEmpty() ? data.replace("&codeLocation={codeLocation}", "") : data.replace("{codeLocation}", queryParams.get("codeLocation"));
			data = queryParams.get("grUnit") == null || queryParams.get("grUnit").isEmpty() ? data.replace("&grUnit={grUnit}", "") : data.replace("{grUnit}", queryParams.get("grUnit"));
			data = queryParams.get("autoSize") == null || queryParams.get("autoSize").isEmpty() ? data.replace("&autoSize={autoSize}", "") : data.replace("{autoSize}", queryParams.get("autoSize"));
			data = queryParams.get("barHeight") == null || queryParams.get("barHeight").isEmpty() ? data.replace("&barHeight={barHeight}", "") : data.replace("{barHeight}", queryParams.get("barHeight"));
			data = queryParams.get("imageHeight") == null || queryParams.get("imageHeight").isEmpty() ? data.replace("&imageHeight={imageHeight}", "") : data.replace("{imageHeight}", queryParams.get("imageHeight"));
			data = queryParams.get("imageWidth") == null || queryParams.get("imageWidth").isEmpty() ? data.replace("&imageWidth={imageWidth}", "") : data.replace("{imageWidth}", queryParams.get("imageWidth"));
			data = queryParams.get("imageQuality") == null || queryParams.get("imageQuality").isEmpty() ? data.replace("&imageQuality={imageQuality}", "") : data.replace("{imageQuality}", queryParams.get("imageQuality"));
			data = queryParams.get("rotAngle") == null || queryParams.get("rotAngle").isEmpty() ? data.replace("&rotAngle={rotAngle}", "") : data.replace("{rotAngle}", queryParams.get("rotAngle"));
			data = queryParams.get("topMargin") == null || queryParams.get("topMargin").isEmpty() ? data.replace("&topMargin={topMargin}", "") : data.replace("{topMargin}", queryParams.get("topMargin"));
			data = queryParams.get("bottomMargin") == null || queryParams.get("bottomMargin").isEmpty() ? data.replace("&bottomMargin={bottomMargin}", "") : data.replace("{bottomMargin}", queryParams.get("bottomMargin"));
			data = queryParams.get("leftMargin") == null || queryParams.get("leftMargin").isEmpty() ? data.replace("&leftMargin={leftMargin}", "") : data.replace("{leftMargin}", queryParams.get("leftMargin"));
			data = queryParams.get("rightMargin") == null || queryParams.get("rightMargin").isEmpty() ? data.replace("&rightMargin={rightMargin}", "") : data.replace("{rightMargin}", queryParams.get("rightMargin"));
			
			data = queryParams.get("fieldName") == null || queryParams.get("fieldName").isEmpty() ? data.replace("&fieldName={fieldName}", "") : data.replace("{fieldName}", queryParams.get("fieldName"));
			data = queryParams.get("bookmarkPath") == null || queryParams.get("bookmarkPath").isEmpty() ? data.replace("&bookmarkPath={bookmarkPath}", "") : data.replace("{bookmarkPath}", queryParams.get("bookmarkPath"));
			data = queryParams.get("propertyName") == null || queryParams.get("propertyName").isEmpty() ? data.replace("&propertyName={propertyName}", "") : data.replace("{propertyName}", queryParams.get("propertyName"));
			data = queryParams.get("templateFile") == null || queryParams.get("templateFile").isEmpty() ? data.replace("&templateFile={templateFile}", "") : data.replace("{templateFile}", queryParams.get("templateFile"));
			data = queryParams.get("templateType") == null || queryParams.get("templateType").isEmpty() ? data.replace("&templateType={templateType}", "") : data.replace("{templateType}", queryParams.get("templateType"));
			data = queryParams.get("from") == null || queryParams.get("from").isEmpty() ? data.replace("&from={from}", "") : data.replace("{from}", queryParams.get("from"));
			data = queryParams.get("to") == null || queryParams.get("to").isEmpty() ? data.replace("&to={to}", "") : data.replace("{to}", queryParams.get("to"));			
			data = queryParams.get("attachmentIndex") == null || queryParams.get("attachmentIndex").isEmpty() ? data.replace("&attachmentIndex={attachmentIndex}", "") : data.replace("{attachmentIndex}", queryParams.get("attachmentIndex"));
			data = queryParams.get("pageNumber") == null || queryParams.get("pageNumber").isEmpty() ? data.replace("&pageNumber={pageNumber}", "") : data.replace("{pageNumber}", queryParams.get("pageNumber"));
			data = queryParams.get("imageNumber") == null || queryParams.get("imageNumber").isEmpty() ? data.replace("&to={imageNumber}", "") : data.replace("{imageNumber}", queryParams.get("imageNumber"));
			data = queryParams.get("annotationNumber") == null || queryParams.get("annotationNumber").isEmpty() ? data.replace("&annotationNumber={annotationNumber}", "") : data.replace("{annotationNumber}", queryParams.get("annotationNumber"));
			data = queryParams.get("dataFile") == null || queryParams.get("dataFile").isEmpty() ? data.replace("&dataFile={dataFile}", "") : data.replace("{dataFile}", queryParams.get("dataFile"));
			data = queryParams.get("fragmentNumber") == null || queryParams.get("fragmentNumber").isEmpty() ? data.replace("&fragmentNumber={fragmentNumber}", "") : data.replace("{fragmentNumber}", queryParams.get("fragmentNumber"));
			data = queryParams.get("toFormat") == null || queryParams.get("toFormat").isEmpty() ? data.replace("&toFormat={toFormat}", "") : data.replace("{toFormat}", queryParams.get("toFormat"));
			data = queryParams.get("width") == null || queryParams.get("width").isEmpty() ? data.replace("&width={width}", "") : data.replace("{width}", queryParams.get("width"));
			data = queryParams.get("height") == null || queryParams.get("height").isEmpty() ? data.replace("&height={height}", "") : data.replace("{height}", queryParams.get("height"));
			data = queryParams.get("newIndex") == null || queryParams.get("newIndex").isEmpty() ? data.replace("&newIndex={newIndex}", "") : data.replace("{newIndex}", queryParams.get("newIndex"));
			data = queryParams.get("linkIndex") == null || queryParams.get("linkIndex").isEmpty() ? data.replace("&linkIndex={linkIndex}", "") : data.replace("{linkIndex}", queryParams.get("linkIndex"));
			data = queryParams.get("segmentNumber") == null || queryParams.get("segmentNumber").isEmpty() ? data.replace("&segmentNumber={segmentNumber}", "") : data.replace("{segmentNumber}", queryParams.get("segmentNumber"));
			data = queryParams.get("appendFile") == null || queryParams.get("appendFile").isEmpty() ? data.replace("&appendFile={appendFile}", "") : data.replace("{appendFile}", queryParams.get("appendFile"));
			data = queryParams.get("startPage") == null || queryParams.get("startPage").isEmpty() ? data.replace("&startPage={startPage}", "") : data.replace("{startPage}", queryParams.get("startPage"));
			data = queryParams.get("endPage") == null || queryParams.get("endPage").isEmpty() ? data.replace("&endPage={endPage}", "") : data.replace("{endPage}", queryParams.get("endPage"));
			data = queryParams.get("page") == null || queryParams.get("page").isEmpty() ? data.replace("&page={page}", "") : data.replace("{page}", queryParams.get("page"));
			data = queryParams.get("imageFile") == null || queryParams.get("imageFile").isEmpty() ? data.replace("&imageFile={imageFile}", "") : data.replace("{imageFile}", queryParams.get("imageFile"));
			data = queryParams.get("resultFile") == null || queryParams.get("resultFile").isEmpty() ? data.replace("&resultFile={resultFile}", "") : data.replace("{resultFile}", queryParams.get("resultFile"));
			data = queryParams.get("brightness") == null || queryParams.get("brightness").isEmpty() ? data.replace("&brightness={brightness}", "") : data.replace("{brightness}", queryParams.get("brightness"));
			data = queryParams.get("compression") == null || queryParams.get("compression").isEmpty() ? data.replace("&compression={compression}", "") : data.replace("{compression}", queryParams.get("compression"));
			data = queryParams.get("colorDepth") == null || queryParams.get("colorDepth").isEmpty() ? data.replace("&colorDepth={colorDepth}", "") : data.replace("{colorDepth}", queryParams.get("colorDepth"));
			data = queryParams.get("orientation") == null || queryParams.get("orientation").isEmpty() ? data.replace("&orientation={orientation}", "") : data.replace("{orientation}", queryParams.get("orientation"));			
			data = queryParams.get("skipBlankPages") == null || queryParams.get("skipBlankPages").isEmpty() ? data.replace("&skipBlankPages={skipBlankPages}", "") : data.replace("{skipBlankPages}", queryParams.get("skipBlankPages"));			
			data = queryParams.get("xResolution") == null || queryParams.get("xResolution").isEmpty() ? data.replace("&xResolution={xResolution}", "") : data.replace("{xResolution}", queryParams.get("xResolution"));			
			data = queryParams.get("yResolution") == null || queryParams.get("yResolution").isEmpty() ? data.replace("&yResolution={yResolution}", "") : data.replace("{yResolution}", queryParams.get("yResolution"));			
			data = queryParams.get("pageIndex") == null || queryParams.get("pageIndex").isEmpty() ? data.replace("&pageIndex={pageIndex}", "") : data.replace("{pageIndex}", queryParams.get("pageIndex"));			
			data = queryParams.get("pageCount") == null || queryParams.get("pageCount").isEmpty() ? data.replace("&pageCount={pageCount}", "") : data.replace("{pageCount}", queryParams.get("pageCount"));			
			
			data = queryParams.get("assignmentUid") == null || queryParams.get("assignmentUid").isEmpty() ? data.replace("&assignmentUid={assignmentUid}", "") : data.replace("{assignmentUid}", queryParams.get("assignmentUid"));
			data = queryParams.get("fileName") == null || queryParams.get("fileName").isEmpty() ? data.replace("&fileName={fileName}", "") : data.replace("{fileName}", queryParams.get("fileName"));
			data = queryParams.get("filename") == null || queryParams.get("filename").isEmpty() ? data.replace("&filename={filename}", "") : data.replace("{filename}", queryParams.get("filename"));
			data = queryParams.get("index") == null || queryParams.get("index").isEmpty() ? data.replace("&index={index}", "") : data.replace("{index}", queryParams.get("index"));
			data = queryParams.get("calendarUid") == null || queryParams.get("calendarUid").isEmpty() ? data.replace("&calendarUid={calendarUid}", "") : data.replace("{calendarUid}", queryParams.get("calendarUid"));
			data = queryParams.get("resourceUid") == null || queryParams.get("resourceUid").isEmpty() ? data.replace("&resourceUid={resourceUid}", "") : data.replace("{resourceUid}", queryParams.get("resourceUid"));
			data = queryParams.get("resourceName") == null || queryParams.get("resourceName").isEmpty() ? data.replace("&resourceName={resourceName}", "") : data.replace("{resourceName}", queryParams.get("resourceName"));
			data = queryParams.get("beforeResourceId") == null || queryParams.get("beforeResourceId").isEmpty() ? data.replace("&beforeResourceId={beforeResourceId}", "") : data.replace("{beforeResourceId}", queryParams.get("beforeResourceId"));
			data = queryParams.get("taskUid") == null || queryParams.get("taskUid").isEmpty() ? data.replace("&taskUid={taskUid}", "") : data.replace("{taskUid}", queryParams.get("taskUid"));
			data = queryParams.get("taskName") == null || queryParams.get("taskName").isEmpty() ? data.replace("&taskName={taskName}", "") : data.replace("{taskName}", queryParams.get("taskName"));
			data = queryParams.get("beforeTaskId") == null || queryParams.get("beforeTaskId").isEmpty() ? data.replace("&beforeTaskId={beforeTaskId}", "") : data.replace("{beforeTaskId}", queryParams.get("beforeTaskId"));
			data = queryParams.get("units") == null || queryParams.get("units").isEmpty() ? data.replace("&units={units}", "") : data.replace("{units}", queryParams.get("units"));

			data = queryParams.get("jpegQuality") == null || queryParams.get("jpegQuality").isEmpty() ? data.replace("&jpegQuality={jpegQuality}", "") : data.replace("{jpegQuality}", queryParams.get("jpegQuality"));
			data = queryParams.get("destFolder") == null || queryParams.get("destFolder").isEmpty() ? data.replace("&destFolder={destFolder}", "") : data.replace("{destFolder}", queryParams.get("destFolder"));
			data = queryParams.get("oldValue") == null || queryParams.get("oldValue").isEmpty() ? data.replace("&oldValue={oldValue}", "") : data.replace("{oldValue}", queryParams.get("oldValue"));
			data = queryParams.get("newValue") == null || queryParams.get("newValue").isEmpty() ? data.replace("&newValue={newValue}", "") : data.replace("{newValue}", queryParams.get("newValue"));
			data = queryParams.get("ignoreCase") == null || queryParams.get("ignoreCase").isEmpty() ? data.replace("&ignoreCase={ignoreCase}", "") : data.replace("{ignoreCase}", queryParams.get("ignoreCase"));
			data = queryParams.get("templatePath") == null || queryParams.get("templatePath").isEmpty() ? data.replace("&templatePath={templatePath}", "") : data.replace("{templatePath}", queryParams.get("templatePath"));
			data = queryParams.get("templateStorage") == null || queryParams.get("templateStorage").isEmpty() ? data.replace("&templateStorage={templateStorage}", "") : data.replace("{templateStorage}", queryParams.get("templateStorage"));
			data = queryParams.get("slideIndex") == null || queryParams.get("slideIndex").isEmpty() ? data.replace("&slideIndex={slideIndex}", "") : data.replace("{slideIndex}", queryParams.get("slideIndex"));
			data = queryParams.get("placeholderIndex") == null || queryParams.get("placeholderIndex").isEmpty() ? data.replace("&placeholderIndex={placeholderIndex}", "") : data.replace("{placeholderIndex}", queryParams.get("placeholderIndex"));
			data = queryParams.get("shapeIndex") == null || queryParams.get("shapeIndex").isEmpty() ? data.replace("&shapeIndex={shapeIndex}", "") : data.replace("{shapeIndex}", queryParams.get("shapeIndex"));
			data = queryParams.get("paragraphIndex") == null || queryParams.get("paragraphIndex").isEmpty() ? data.replace("&paragraphIndex={paragraphIndex}", "") : data.replace("{paragraphIndex}", queryParams.get("paragraphIndex"));
			data = queryParams.get("portionIndex") == null || queryParams.get("portionIndex").isEmpty() ? data.replace("&portionIndex={portionIndex}", "") : data.replace("{portionIndex}", queryParams.get("portionIndex"));
			data = queryParams.get("shapePath") == null || queryParams.get("shapePath").isEmpty() ? data.replace("&shapePath={shapePath}", "") : data.replace("{shapePath}", queryParams.get("shapePath"));
			data = queryParams.get("slideToClone") == null || queryParams.get("slideToClone").isEmpty() ? data.replace("&slideToClone={slideToClone}", "") : data.replace("{slideToClone}", queryParams.get("slideToClone"));
			data = queryParams.get("propertyName") == null || queryParams.get("propertyName").isEmpty() ? data.replace("&propertyName={propertyName}", "") : data.replace("{propertyName}", queryParams.get("propertyName"));
			data = queryParams.get("position") == null || queryParams.get("position").isEmpty() ? data.replace("&position={position}", "") : data.replace("{position}", queryParams.get("position"));
			data = queryParams.get("slideToCopy") == null || queryParams.get("slideToCopy").isEmpty() ? data.replace("&slideToCopy={slideToCopy}", "") : data.replace("{slideToCopy}", queryParams.get("slideToCopy"));
			data = queryParams.get("oldPosition") == null || queryParams.get("oldPosition").isEmpty() ? data.replace("&oldPosition={oldPosition}", "") : data.replace("{oldPosition}", queryParams.get("oldPosition"));
			data = queryParams.get("newPosition") == null || queryParams.get("newPosition").isEmpty() ? data.replace("&newPosition={newPosition}", "") : data.replace("{newPosition}", queryParams.get("newPosition"));
			data = queryParams.get("source") == null || queryParams.get("source").isEmpty() ? data.replace("&source={source}", "") : data.replace("{source}", queryParams.get("source"));
			data = queryParams.get("isImageDataEmbeeded") == null || queryParams.get("isImageDataEmbeeded").isEmpty() ? data.replace("&isImageDataEmbeeded={isImageDataEmbeeded}", "") : data.replace("{isImageDataEmbeeded}", queryParams.get("isImageDataEmbeeded"));
			data = queryParams.get("newPosition") == null || queryParams.get("newPosition").isEmpty() ? data.replace("&newPosition={newPosition}", "") : data.replace("{newPosition}", queryParams.get("newPosition"));
			data = queryParams.get("source") == null || queryParams.get("source").isEmpty() ? data.replace("&source={source}", "") : data.replace("{source}", queryParams.get("source"));

			data = queryParams.get("sheetName") == null || queryParams.get("sheetName").isEmpty() ? data.replace("&sheetName={sheetName}", "") : data.replace("{sheetName}", queryParams.get("sheetName"));
			data = queryParams.get("rowIndex") == null || queryParams.get("rowIndex").isEmpty() ? data.replace("&rowIndex={rowIndex}", "") : data.replace("{rowIndex}", queryParams.get("rowIndex"));
			data = queryParams.get("startrow") == null || queryParams.get("startrow").isEmpty() ? data.replace("&startrow={startrow}", "") : data.replace("{startrow}", queryParams.get("startrow"));
			data = queryParams.get("totalRows") == null || queryParams.get("totalRows").isEmpty() ? data.replace("&totalRows={totalRows}", "") : data.replace("{totalRows}", queryParams.get("totalRows"));
			data = queryParams.get("updateReference") == null || queryParams.get("updateReference").isEmpty() ? data.replace("&updateReference={updateReference}", "") : data.replace("{updateReference}", queryParams.get("updateReference"));
			data = queryParams.get("cellOrMethodName") == null || queryParams.get("cellOrMethodName").isEmpty() ? data.replace("&cellOrMethodName={cellOrMethodName}", "") : data.replace("{cellOrMethodName}", queryParams.get("cellOrMethodName"));
			data = queryParams.get("columnIndex") == null || queryParams.get("columnIndex").isEmpty() ? data.replace("&columnIndex={columnIndex}", "") : data.replace("{columnIndex}", queryParams.get("columnIndex"));
			data = queryParams.get("columns") == null || queryParams.get("columns").isEmpty() ? data.replace("&columns={columns}", "") : data.replace("{columns}", queryParams.get("columns"));
			data = queryParams.get("updateReference") == null || queryParams.get("updateReference").isEmpty() ? data.replace("&updateReference={updateReference}", "") : data.replace("{updateReference}", queryParams.get("updateReference"));
			data = queryParams.get("offest") == null || queryParams.get("offest").isEmpty() ? data.replace("&offest={offest}", "") : data.replace("{offest}", queryParams.get("offest"));
			data = queryParams.get("cellName") == null || queryParams.get("cellName").isEmpty() ? data.replace("&cellName={cellName}", "") : data.replace("{cellName}", queryParams.get("cellName"));
			data = queryParams.get("count") == null || queryParams.get("count").isEmpty() ? data.replace("&count={count}", "") : data.replace("{count}", queryParams.get("count"));
			data = queryParams.get("range") == null || queryParams.get("range").isEmpty() ? data.replace("&range={range}", "") : data.replace("{range}", queryParams.get("range"));
			data = queryParams.get("startRow") == null || queryParams.get("startRow").isEmpty() ? data.replace("&startRow={startRow}", "") : data.replace("{startRow}", queryParams.get("startRow"));
			data = queryParams.get("startColumn") == null || queryParams.get("startColumn").isEmpty() ? data.replace("&startColumn={startColumn}", "") : data.replace("{startColumn}", queryParams.get("startColumn"));
			data = queryParams.get("endRow") == null || queryParams.get("endRow").isEmpty() ? data.replace("&endRow={endRow}", "") : data.replace("{endRow}", queryParams.get("endRow"));
			data = queryParams.get("endColumn") == null || queryParams.get("endColumn").isEmpty() ? data.replace("&endColumn={endColumn}", "") : data.replace("{endColumn}", queryParams.get("endColumn"));
			data = queryParams.get("destCellName") == null || queryParams.get("destCellName").isEmpty() ? data.replace("&destCellName={destCellName}", "") : data.replace("{destCellName}", queryParams.get("destCellName"));
			data = queryParams.get("worksheet") == null || queryParams.get("worksheet").isEmpty() ? data.replace("&worksheet={worksheet}", "") : data.replace("{worksheet}", queryParams.get("worksheet"));
			data = queryParams.get("cellname") == null || queryParams.get("cellname").isEmpty() ? data.replace("&cellname={cellname}", "") : data.replace("{cellname}", queryParams.get("cellname"));
			data = queryParams.get("row") == null || queryParams.get("row").isEmpty() ? data.replace("&row={row}", "") : data.replace("{row}", queryParams.get("row"));
			data = queryParams.get("column") == null || queryParams.get("column").isEmpty() ? data.replace("&column={column}", "") : data.replace("{column}", queryParams.get("column"));
			data = queryParams.get("sourceColumnIndex") == null || queryParams.get("sourceColumnIndex").isEmpty() ? data.replace("&sourceColumnIndex={sourceColumnIndex}", "") : data.replace("{sourceColumnIndex}", queryParams.get("sourceColumnIndex"));
			data = queryParams.get("destinationColumnIndex") == null || queryParams.get("destinationColumnIndex").isEmpty() ? data.replace("&destinationColumnIndex={destinationColumnIndex}", "") : data.replace("{destinationColumnIndex}", queryParams.get("destinationColumnIndex"));
			data = queryParams.get("columnNumber") == null || queryParams.get("columnNumber").isEmpty() ? data.replace("&columnNumber={columnNumber}", "") : data.replace("{columnNumber}", queryParams.get("columnNumber"));
			data = queryParams.get("sourceRowIndex") == null || queryParams.get("sourceRowIndex").isEmpty() ? data.replace("&sourceRowIndex={sourceRowIndex}", "") : data.replace("{sourceRowIndex}", queryParams.get("sourceRowIndex"));
			data = queryParams.get("destinationRowIndex") == null || queryParams.get("destinationRowIndex").isEmpty() ? data.replace("&destinationRowIndex={destinationRowIndex}", "") : data.replace("{destinationRowIndex}", queryParams.get("destinationRowIndex"));
			data = queryParams.get("rowNumber") == null || queryParams.get("rowNumber").isEmpty() ? data.replace("&rowNumber={rowNumber}", "") : data.replace("{rowNumber}", queryParams.get("rowNumber"));
			data = queryParams.get("firstIndex") == null || queryParams.get("firstIndex").isEmpty() ? data.replace("&firstIndex={firstIndex}", "") : data.replace("{firstIndex}", queryParams.get("firstIndex"));
			data = queryParams.get("lastIndex") == null || queryParams.get("lastIndex").isEmpty() ? data.replace("&lastIndex={lastIndex}", "") : data.replace("{lastIndex}", queryParams.get("lastIndex"));
			data = queryParams.get("hide") == null || queryParams.get("hide").isEmpty() ? data.replace("&hide={hide}", "") : data.replace("{hide}", queryParams.get("hide"));
			data = queryParams.get("source") == null || queryParams.get("totalColumns").isEmpty() ? data.replace("&totalColumns={totalColumns}", "") : data.replace("{totalColumns}", queryParams.get("totalColumns"));
			data = queryParams.get("cellarea") == null || queryParams.get("cellarea").isEmpty() ? data.replace("&cellarea={cellarea}", "") : data.replace("{cellarea}", queryParams.get("cellarea"));
			data = queryParams.get("value") == null || queryParams.get("value").isEmpty() ? data.replace("&value={value}", "") : data.replace("{value}", queryParams.get("value"));
			data = queryParams.get("isAll") == null || queryParams.get("isAll").isEmpty() ? data.replace("&isAll={isAll}", "") : data.replace("{isAll}", queryParams.get("isAll"));
			data = queryParams.get("autoshapeNumber") == null || queryParams.get("autoshapeNumber").isEmpty() ? data.replace("&autoshapeNumber={autoshapeNumber}", "") : data.replace("{autoshapeNumber}", queryParams.get("autoshapeNumber"));
			data = queryParams.get("pictureNumber") == null || queryParams.get("pictureNumber").isEmpty() ? data.replace("&pictureNumber={pictureNumber}", "") : data.replace("{pictureNumber}", queryParams.get("pictureNumber"));
			data = queryParams.get("chartIndex") == null || queryParams.get("chartIndex").isEmpty() ? data.replace("&chartIndex={chartIndex}", "") : data.replace("{chartIndex}", queryParams.get("chartIndex"));
			data = queryParams.get("chartNumber") == null || queryParams.get("chartNumber").isEmpty() ? data.replace("&chartNumber={chartNumber}", "") : data.replace("{chartNumber}", queryParams.get("chartNumber"));
			data = queryParams.get("chartType") == null || queryParams.get("chartType").isEmpty() ? data.replace("&chartType={chartType}", "") : data.replace("{chartType}", queryParams.get("chartType"));
			data = queryParams.get("upperLeftRow") == null || queryParams.get("upperLeftRow").isEmpty() ? data.replace("&upperLeftRow={upperLeftRow}", "") : data.replace("{upperLeftRow}", queryParams.get("upperLeftRow"));
			data = queryParams.get("upperLeftColumn") == null || queryParams.get("upperLeftColumn").isEmpty() ? data.replace("&upperLeftColumn={upperLeftColumn}", "") : data.replace("{upperLeftColumn}", queryParams.get("upperLeftColumn"));
			data = queryParams.get("lowerRightRow") == null || queryParams.get("lowerRightRow").isEmpty() ? data.replace("&lowerRightRow={lowerRightRow}", "") : data.replace("{lowerRightRow}", queryParams.get("lowerRightRow"));
			data = queryParams.get("lowerRightColumn") == null || queryParams.get("lowerRightColumn").isEmpty() ? data.replace("&lowerRightColumn={lowerRightColumn}", "") : data.replace("{lowerRightColumn}", queryParams.get("lowerRightColumn"));
			data = queryParams.get("area") == null || queryParams.get("area").isEmpty() ? data.replace("&area={area}", "") : data.replace("{area}", queryParams.get("area"));
			data = queryParams.get("isVertical") == null || queryParams.get("isVertical").isEmpty() ? data.replace("&isVertical={isVertical}", "") : data.replace("{isVertical}", queryParams.get("isVertical"));
			data = queryParams.get("categoryData") == null || queryParams.get("categoryData").isEmpty() ? data.replace("&categoryData={categoryData}", "") : data.replace("{categoryData}", queryParams.get("categoryData"));
			data = queryParams.get("isAutoGetSerialName") == null || queryParams.get("isAutoGetSerialName").isEmpty() ? data.replace("&isAutoGetSerialName={isAutoGetSerialName}", "") : data.replace("{isAutoGetSerialName}", queryParams.get("isAutoGetSerialName"));
			data = queryParams.get("objectNumber") == null || queryParams.get("objectNumber").isEmpty() ? data.replace("&objectNumber={objectNumber}", "") : data.replace("{objectNumber}", queryParams.get("objectNumber"));
			data = queryParams.get("oleObjectIndex") == null || queryParams.get("oleObjectIndex").isEmpty() ? data.replace("&oleObjectIndex={oleObjectIndex}", "") : data.replace("{oleObjectIndex}", queryParams.get("oleObjectIndex"));
			data = queryParams.get("formula") == null || queryParams.get("formula").isEmpty() ? data.replace("&formula={formula}", "") : data.replace("{formula}", queryParams.get("formula"));
			data = queryParams.get("isVisible") == null || queryParams.get("isVisible").isEmpty() ? data.replace("&isVisible={isVisible}", "") : data.replace("{isVisible}", queryParams.get("isVisible"));			
			data = queryParams.get("validationIndex") == null || queryParams.get("validationIndex").isEmpty() ? data.replace("&validationIndex={validationIndex}", "") : data.replace("{validationIndex}", queryParams.get("validationIndex"));			
			data = queryParams.get("title") == null || queryParams.get("title").isEmpty() ? data.replace("&title={title}", "") : data.replace("{title}", queryParams.get("title"));
			data = queryParams.get("firstRow") == null || queryParams.get("firstRow").isEmpty() ? data.replace("&firstRow={firstRow}", "") : data.replace("{firstRow}", queryParams.get("firstRow"));
			data = queryParams.get("firstColumn") == null || queryParams.get("firstColumn").isEmpty() ? data.replace("&firstColumn={firstColumn}", "") : data.replace("{firstColumn}", queryParams.get("firstColumn"));			
			data = queryParams.get("address") == null || queryParams.get("address").isEmpty() ? data.replace("&address={address}", "") : data.replace("{address}", queryParams.get("address"));			
			data = queryParams.get("oleFile") == null || queryParams.get("oleFile").isEmpty() ? data.replace("&oleFile={oleFile}", "") : data.replace("{oleFile}", queryParams.get("oleFile"));			
			data = queryParams.get("startcolumn") == null || queryParams.get("startcolumn").isEmpty() ? data.replace("&startcolumn={startcolumn}", "") : data.replace("{startcolumn}", queryParams.get("startcolumn"));			
			data = queryParams.get("freezedRows") == null || queryParams.get("freezedRows").isEmpty() ? data.replace("&freezedRows={freezedRows}", "") : data.replace("{freezedRows}", queryParams.get("freezedRows"));			
			data = queryParams.get("freezedColumns") == null || queryParams.get("freezedColumns").isEmpty() ? data.replace("&freezedColumns={freezedColumns}", "") : data.replace("{freezedColumns}", queryParams.get("freezedColumns"));			
			data = queryParams.get("oldValue") == null || queryParams.get("oldValue").isEmpty() ? data.replace("&oldValue={oldValue}", "") : data.replace("{oldValue}", queryParams.get("oldValue"));			
			data = queryParams.get("cellArea") == null || queryParams.get("cellArea").isEmpty() ? data.replace("&cellArea={cellArea}", "") : data.replace("{cellArea}", queryParams.get("cellArea"));			
			data = queryParams.get("newname") == null || queryParams.get("newname").isEmpty() ? data.replace("&newname={newname}", "") : data.replace("{newname}", queryParams.get("newname"));			
			data = queryParams.get("onlyAuto") == null || queryParams.get("onlyAuto").isEmpty() ? data.replace("&onlyAuto={onlyAuto}", "") : data.replace("{onlyAuto}", queryParams.get("onlyAuto"));			
			data = queryParams.get("sourceSheet") == null || queryParams.get("sourceSheet").isEmpty() ? data.replace("&sourceSheet={sourceSheet}", "") : data.replace("{sourceSheet}", queryParams.get("sourceSheet"));			
			data = queryParams.get("verticalResolution") == null || queryParams.get("verticalResolution").isEmpty() ? data.replace("&verticalResolution={verticalResolution}", "") : data.replace("{verticalResolution}", queryParams.get("verticalResolution"));			
			data = queryParams.get("horizontalResolution") == null || queryParams.get("horizontalResolution").isEmpty() ? data.replace("&horizontalResolution={horizontalResolution}", "") : data.replace("{horizontalResolution}", queryParams.get("horizontalResolution"));			
			data = queryParams.get("cellName") == null || queryParams.get("cellName").isEmpty() ? data.replace("&cellName={cellName}", "") : data.replace("{cellName}", queryParams.get("cellName"));			
			data = queryParams.get("pictureIndex") == null || queryParams.get("pictureIndex").isEmpty() ? data.replace("&pictureIndex={pictureIndex}", "") : data.replace("{pictureIndex}", queryParams.get("pictureIndex"));			
			data = queryParams.get("newfilename") == null || queryParams.get("newfilename").isEmpty() ? data.replace("&newfilename={newfilename}", "") : data.replace("{newfilename}", queryParams.get("newfilename"));			
			data = queryParams.get("isAutoFitRows") == null || queryParams.get("isAutoFitRows").isEmpty() ? data.replace("&isAutoFitRows={isAutoFitRows}", "") : data.replace("{isAutoFitRows}", queryParams.get("isAutoFitRows"));			
			data = queryParams.get("isAutoFitColumns") == null || queryParams.get("isAutoFitColumns").isEmpty() ? data.replace("&isAutoFitColumns={isAutoFitColumns}", "") : data.replace("{isAutoFitColumns}", queryParams.get("isAutoFitColumns"));			
			data = queryParams.get("isAutoFit") == null || queryParams.get("isAutoFit").isEmpty() ? data.replace("&isAutoFit={isAutoFit}", "") : data.replace("{isAutoFit}", queryParams.get("isAutoFit"));			
			data = queryParams.get("nameName") == null || queryParams.get("nameName").isEmpty() ? data.replace("&nameName={nameName}", "") : data.replace("{nameName}", queryParams.get("nameName"));
			data = queryParams.get("mergeWith") == null || queryParams.get("mergeWith").isEmpty() ? data.replace("&mergeWith={mergeWith}", "") : data.replace("{mergeWith}", queryParams.get("mergeWith"));
			data = queryParams.get("area") == null || queryParams.get("area").isEmpty() ? data.replace("&area={area}", "") : data.replace("{area}", queryParams.get("area"));
			data = queryParams.get("area") == null || queryParams.get("area").isEmpty() ? data.replace("&area={area}", "") : data.replace("{area}", queryParams.get("area"));
			data = queryParams.get("area") == null || queryParams.get("area").isEmpty() ? data.replace("&area={area}", "") : data.replace("{area}", queryParams.get("area"));
			data = queryParams.get("area") == null || queryParams.get("area").isEmpty() ? data.replace("&area={area}", "") : data.replace("{area}", queryParams.get("area"));
			
			
			data = queryParams.get("recursive") == null || queryParams.get("recursive").isEmpty() ? data.replace("&recursive={recursive}", "") : data.replace("{recursive}", queryParams.get("recursive"));
			data = queryParams.get("attachName") == null || queryParams.get("attachName").isEmpty() ? data.replace("&attachName={attachName}", "") : data.replace("{attachName}", queryParams.get("attachName"));

			Map<String, String> query = new HashMap<String, String>(1); // UriBuilder
			
			groovyx.net.http.URIBuilder uri = new groovyx.net.http.URIBuilder(data);

			String url = uri.toURI().getPath();
			url = url.replace(" ", "%20");
			System.out.println("uri:" + url);
			uri.setPath(url);
			
			uri.addQueryParams(query);

			url = uri.toURI().getPath();

			if (url.charAt(url.length() - 1) == '/') {
				String tempUrl = url.substring(0, url.length() - 1);
				uri.setPath(tempUrl);
			}
			url = uri.toURI().toString();
			url = url.replace("%2C", ",");

			SecretKeySpec signingKey = new SecretKeySpec(AppKey.getBytes(), HMAC_SHA1_ALGORITHM);

			Mac mac = Mac.getInstance(HMAC_SHA1_ALGORITHM);
			mac.init(signingKey);

			byte[] rawHmac = mac.doFinal(url.getBytes());
			byte newresult[] = Base64.encodeBase64(rawHmac);

			String result = new String(newresult);
			result = result.substring(0, result.length() - 1);

			String encodedUrl = URLEncoder.encode(result, "UTF-8");

			return uri.toURI().toString() + "&signature=" + encodedUrl;
		} catch (java.net.URISyntaxException exURL) {
			throw new ApiException(500, exURL.getMessage());
		} catch (Exception e) {
			throw new ApiException(500, e.getMessage());
		}

	}  

  public ApiInvokerResponse invokeAPI(String host, String path, String method, Map<String, String> queryParams, Object body, Map<String, String> headerParams, Map<String, String> formParams, String contentType) throws ApiException {
    Client client = getClient(host);
	//IA: Added class ApiInvokerResponse to get both String and InputStream responses
		ApiInvokerResponse aiResponse = new ApiInvokerResponse("", null);

		String signedURL = Sign(host + path, this.defaultHeaderMap.get("apiKey"), this.defaultHeaderMap.get("appSID"), queryParams, headerParams, formParams);
	
		System.out.println("signedURL: " + signedURL);
	
	Builder builder = client.resource(signedURL).accept("application/json");
		for (String key : headerParams.keySet()) {
      builder.header(key, headerParams.get(key));
    }

		for (String key : defaultHeaderMap.keySet()) {
			if (!headerParams.containsKey(key)) {
        builder.header(key, defaultHeaderMap.get(key));
      }
    }
    ClientResponse response = null;

		if ("GET".equals(method)) {
      response = (ClientResponse) builder.get(ClientResponse.class);
		} else if ("POST".equals(method)) {
			if (body == null) {
        response = builder.post(ClientResponse.class, null);
			} else if (body instanceof FormDataMultiPart) {
        response = builder.type(contentType).post(ClientResponse.class, body);
			} else {
        response = builder.type(contentType).post(ClientResponse.class, serialize(body));
    }
		} else if ("PUT".equals(method)) {
			if (body == null) {
        response = builder.put(ClientResponse.class, serialize(body));
			} else {
				if ("application/x-www-form-urlencoded".equals(contentType)) {
          StringBuilder formParamBuilder = new StringBuilder();

          // encode the form params
					for (String key : formParams.keySet()) {
            String value = formParams.get(key);
						if (value != null && !"".equals(value.trim())) {
							if (formParamBuilder.length() > 0) {
                formParamBuilder.append("&");
              }
              try {
                formParamBuilder.append(URLEncoder.encode(key, "utf8")).append("=").append(URLEncoder.encode(value, "utf8"));
							} catch (Exception e) {
                // move on to next
              }
            }
          }
          response = builder.type(contentType).put(ClientResponse.class, formParamBuilder.toString());
				} else if (body instanceof FormDataMultiPart) {
					FormDataMultiPart form = (FormDataMultiPart) body;
					File file = (File) form.getField("file").getEntity();
					try {
					InputStream fileInStream = new FileInputStream(file);
						String sContentDisposition = "attachment; filename=\"" + file.getName() + "\"";
					response = builder.type(MediaType.APPLICATION_OCTET_STREAM).header("Content-Disposition", sContentDisposition).put(ClientResponse.class, fileInStream);
					} catch (java.io.FileNotFoundException ex) {
					}
				} else {
          response = builder.type(contentType).put(ClientResponse.class, serialize(body));
      }
    }
		} else if ("DELETE".equals(method)) {
			if (body == null) {
        response = builder.delete(ClientResponse.class, serialize(body));
			} else {
        response = builder.type(contentType).delete(ClientResponse.class, serialize(body));
    }
		} else {
      throw new ApiException(500, "unknown method type " + method);
    }
		if (response.getClientResponseStatus() == ClientResponse.Status.NO_CONTENT) {
      throw new ApiException(500, "No contents found");
	} else if (response.getClientResponseStatus().getFamily() == Family.SUCCESSFUL) {
		// IA: Check added about Stream OR Json
			if (response.getEntityInputStream() != null) {
			aiResponse.setInputStream(response.getEntityInputStream());
			} else {
			aiResponse.setJson((String) response.getEntity(String.class));
    }
		return aiResponse;
	} else {
      throw new ApiException(
                response.getClientResponseStatus().getStatusCode(),
                response.getEntity(String.class));
    }
  }

  private Client getClient(String host) {
		if (!hostMap.containsKey(host)) {
      Client client = Client.create();
			if (isDebug) {
        client.addFilter(new LoggingFilter());
			}
      hostMap.put(host, client);
    }
    return hostMap.get(host);
  }
}

