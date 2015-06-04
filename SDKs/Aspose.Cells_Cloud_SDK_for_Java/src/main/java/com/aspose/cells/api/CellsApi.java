package com.aspose.cells.api;

import com.aspose.client.ApiException;
import com.aspose.client.ApiInvoker;
import com.aspose.client.ApiInvokerResponse;
import com.aspose.cells.model.AutoShapeResponse;
import com.aspose.cells.model.Worksheet;
import com.aspose.cells.model.PivotTableFieldRequest;
import com.aspose.cells.model.HyperlinksResponse;
import com.aspose.cells.model.TextItemsResponse;
import com.aspose.cells.model.MergedCellResponse;
import com.aspose.cells.model.NamesResponse;
import com.aspose.cells.model.WorksheetReplaceResponse;
import com.aspose.cells.model.WorksheetMovingRequest;
import com.aspose.cells.model.CellsDocumentPropertyResponse;
import com.aspose.cells.model.CommentResponse;
import com.aspose.cells.model.OleObjectsResponse;
import com.aspose.cells.model.CreatePivotTableRequest;
import com.aspose.cells.model.WorkbookProtectionRequest;
import com.aspose.cells.model.CellResponse;
import com.aspose.cells.model.SaveResponse;
import com.aspose.cells.model.Hyperlink;
import com.aspose.cells.model.WorkbookReplaceResponse;
import com.aspose.cells.model.SingleValueResponse;
import com.aspose.cells.model.StyleResponse;
import com.aspose.cells.model.Title;
import com.aspose.cells.model.NameResponse;
import com.aspose.cells.model.ColumnResponse;
import com.aspose.cells.model.FillFormatResponse;
import com.aspose.cells.model.CellsDocumentPropertiesResponse;
import com.aspose.cells.model.SplitResultResponse;
import com.aspose.cells.model.Picture;
import com.aspose.cells.model.PicturesResponse;
import com.aspose.cells.model.TitleResponse;
import com.aspose.cells.model.HyperlinkResponse;
import com.aspose.cells.model.WorksheetResponse;
import com.aspose.cells.model.Style;
import com.aspose.cells.model.MergedCellsResponse;
import com.aspose.cells.model.CellsResponse;
import com.aspose.cells.model.RowResponse;
import com.aspose.cells.model.AutoShapesResponse;
import com.aspose.cells.model.ChartAreaResponse;
import com.aspose.cells.model.ColumnsResponse;
import com.aspose.cells.model.Legend;
import com.aspose.cells.model.OleObject;
import com.aspose.cells.model.ChartsResponse;
import com.aspose.cells.model.Comment;
import com.aspose.cells.model.WorksheetsResponse;
import com.aspose.cells.model.ImportOption;
import com.aspose.cells.model.PivotTablesResponse;
import com.aspose.cells.model.SaveOptions;
import com.aspose.cells.model.SaaSposeResponse;
import com.aspose.cells.model.ProtectSheetParameter;
import com.aspose.cells.model.PictureResponse;
import com.aspose.cells.model.WorkbookEncryptionRequest;
import com.aspose.cells.model.PasswordRequest;
import com.aspose.cells.model.ValidationResponse;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.cells.model.BarcodeResponseList;
import com.aspose.cells.model.ValidationsResponse;
import com.aspose.cells.model.LegendResponse;
import com.aspose.cells.model.CommentsResponse;
import com.aspose.cells.model.OleObjectResponse;
import com.aspose.cells.model.CellsDocumentProperty;
import com.aspose.cells.model.AutoFitterOptions;
import com.aspose.cells.model.DataSorter;
import com.aspose.cells.model.WorkbookResponse;
import com.aspose.cells.model.RowsResponse;
import com.aspose.cells.model.LineResponse;
import com.aspose.cells.model.PivotTableResponse;
import com.sun.jersey.multipart.FormDataMultiPart;

import javax.ws.rs.core.MediaType;

import java.io.File;
import java.util.*;

public class CellsApi {
  String basePath = "http://api.aspose.com/v1.1";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();
  ApiInvokerResponse response = null;

  public CellsApi(String basePath, String apiKey, String appSid) {
    this.basePath = basePath;
    apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
    apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
  }

  public CellsApi(String basePath, String apiKey, String appSid, boolean isDebug) {
          this.basePath = basePath;
          apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
          apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
          if(isDebug)
                  apiInvoker.enableDebug();
        }
  
  public CellsApi(String apiKey, String appSid) {
    apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
    apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
  }

  public CellsApi(String apiKey, String appSid, boolean isDebug) {
          apiInvoker.addDefaultHeader(apiInvoker.API_KEY, apiKey);
          apiInvoker.addDefaultHeader(apiInvoker.APP_SID, appSid);
          if(isDebug)
                  apiInvoker.enableDebug();
    }
  
  public ApiInvoker getInvoker() {
    return apiInvoker;
  }
  
  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }
  
  public String getBasePath() {
    return basePath;
  }

  /**
	* DeleteWorksheetColumns
	* Delete worksheet columns.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param columnIndex	Integer	The column index.
	* @param columns	Integer	The columns.
	* @param updateReference	Boolean	The update reference.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return ColumnsResponse
	*/

  public ColumnsResponse DeleteWorksheetColumns (String name, String sheetName, Integer columnIndex, Integer columns, Boolean updateReference, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || columnIndex == null || columns == null || updateReference == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?columns={columns}&amp;updateReference={updateReference}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(columnIndex!=null)
	  resourcePath = resourcePath.replace("{" + "columnIndex" + "}" , apiInvoker.toPathValue(columnIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]columnIndex.*?(?=&|\\?|$)", "");
    if(columns!=null)
	  resourcePath = resourcePath.replace("{" + "columns" + "}" , apiInvoker.toPathValue(columns));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]columns.*?(?=&|\\?|$)", "");
    if(updateReference!=null)
	  resourcePath = resourcePath.replace("{" + "updateReference" + "}" , apiInvoker.toPathValue(updateReference));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]updateReference.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (ColumnsResponse) ApiInvoker.deserialize(response, "", ColumnsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetRow
	* Delete worksheet row.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet bame.
	* @param rowIndex	Integer	The row index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetRow (String name, String sheetName, Integer rowIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || rowIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(rowIndex!=null)
	  resourcePath = resourcePath.replace("{" + "rowIndex" + "}" , apiInvoker.toPathValue(rowIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rowIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetRows
	* Delete several worksheet rows.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet bame.
	* @param startrow	Integer	The begin row index to be operated.
	* @param totalRows	Integer	Number of rows to be operated.
	* @param updateReference	Boolean	Indicates if update references in other worksheets.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetRows (String name, String sheetName, Integer startrow, Integer totalRows, Boolean updateReference, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || startrow == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/?startrow={startrow}&amp;appSid={appSid}&amp;totalRows={totalRows}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(startrow!=null)
	  resourcePath = resourcePath.replace("{" + "startrow" + "}" , apiInvoker.toPathValue(startrow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startrow.*?(?=&|\\?|$)", "");
    if(totalRows!=null)
	  resourcePath = resourcePath.replace("{" + "totalRows" + "}" , apiInvoker.toPathValue(totalRows));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalRows.*?(?=&|\\?|$)", "");
    if(updateReference!=null)
	  resourcePath = resourcePath.replace("{" + "updateReference" + "}" , apiInvoker.toPathValue(updateReference));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]updateReference.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetCell
	* Read cell data by cell's name.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param cellOrMethodName	String	The cell's or method name. (Method name like firstcell, endcell etc.)
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorksheetCell (String name, String sheetName, String cellOrMethodName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || cellOrMethodName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellOrMethodName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellOrMethodName!=null)
	  resourcePath = resourcePath.replace("{" + "cellOrMethodName" + "}" , apiInvoker.toPathValue(cellOrMethodName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellOrMethodName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetCells
	* Get cells info.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param offest	Integer	Begginig offset.
	* @param count	Integer	Maximum amount of cells in the response.
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder name.
	* @return CellsResponse
	*/

  public CellsResponse GetWorksheetCells (String name, String sheetName, Integer offest, Integer count, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/?appSid={appSid}&amp;offest={offest}&amp;count={count}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(offest!=null)
	  resourcePath = resourcePath.replace("{" + "offest" + "}" , apiInvoker.toPathValue(offest));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]offest.*?(?=&|\\?|$)", "");
    if(count!=null)
	  resourcePath = resourcePath.replace("{" + "count" + "}" , apiInvoker.toPathValue(count));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]count.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (CellsResponse) ApiInvoker.deserialize(response, "", CellsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetCellStyle
	* Read cell's style info.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param cellName	String	Cell's name.
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @return StyleResponse
	*/

  public StyleResponse GetWorksheetCellStyle (String name, String sheetName, String cellName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || cellName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellName!=null)
	  resourcePath = resourcePath.replace("{" + "cellName" + "}" , apiInvoker.toPathValue(cellName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (StyleResponse) ApiInvoker.deserialize(response, "", StyleResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetColumn
	* Read worksheet column data by column's index.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param columnIndex	Integer	The column index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return ColumnResponse
	*/

  public ColumnResponse GetWorksheetColumn (String name, String sheetName, Integer columnIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || columnIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(columnIndex!=null)
	  resourcePath = resourcePath.replace("{" + "columnIndex" + "}" , apiInvoker.toPathValue(columnIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]columnIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ColumnResponse) ApiInvoker.deserialize(response, "", ColumnResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetColumns
	* Read worksheet columns info.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workdook folder.
	* @return ColumnsResponse
	*/

  public ColumnsResponse GetWorksheetColumns (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ColumnsResponse) ApiInvoker.deserialize(response, "", ColumnsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetRow
	* Read worksheet row data by row's index.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param rowIndex	Integer	The row index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return RowResponse
	*/

  public RowResponse GetWorksheetRow (String name, String sheetName, Integer rowIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || rowIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(rowIndex!=null)
	  resourcePath = resourcePath.replace("{" + "rowIndex" + "}" , apiInvoker.toPathValue(rowIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rowIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (RowResponse) ApiInvoker.deserialize(response, "", RowResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetRows
	* Read worksheet rows info.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workdook folder.
	* @return RowsResponse
	*/

  public RowsResponse GetWorksheetRows (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (RowsResponse) ApiInvoker.deserialize(response, "", RowsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostClearContents
	* Clear cells contents.
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param range	String	The range.
	* @param startRow	Integer	The start row.
	* @param startColumn	Integer	The start column.
	* @param endRow	Integer	The end row.
	* @param endColumn	Integer	The end column.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostClearContents (String name, String sheetName, String range, Integer startRow, Integer startColumn, Integer endRow, Integer endColumn, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/clearcontents/?appSid={appSid}&amp;range={range}&amp;startRow={startRow}&amp;startColumn={startColumn}&amp;endRow={endRow}&amp;endColumn={endColumn}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(range!=null)
	  resourcePath = resourcePath.replace("{" + "range" + "}" , apiInvoker.toPathValue(range));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]range.*?(?=&|\\?|$)", "");
    if(startRow!=null)
	  resourcePath = resourcePath.replace("{" + "startRow" + "}" , apiInvoker.toPathValue(startRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startRow.*?(?=&|\\?|$)", "");
    if(startColumn!=null)
	  resourcePath = resourcePath.replace("{" + "startColumn" + "}" , apiInvoker.toPathValue(startColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startColumn.*?(?=&|\\?|$)", "");
    if(endRow!=null)
	  resourcePath = resourcePath.replace("{" + "endRow" + "}" , apiInvoker.toPathValue(endRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]endRow.*?(?=&|\\?|$)", "");
    if(endColumn!=null)
	  resourcePath = resourcePath.replace("{" + "endColumn" + "}" , apiInvoker.toPathValue(endColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]endColumn.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostClearFormats
	* Clear cells contents.
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param range	String	The range.
	* @param startRow	Integer	The start row.
	* @param startColumn	Integer	The start column.
	* @param endRow	Integer	The end row.
	* @param endColumn	Integer	The end column.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostClearFormats (String name, String sheetName, String range, Integer startRow, Integer startColumn, Integer endRow, Integer endColumn, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/clearformats/?appSid={appSid}&amp;range={range}&amp;startRow={startRow}&amp;startColumn={startColumn}&amp;endRow={endRow}&amp;endColumn={endColumn}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(range!=null)
	  resourcePath = resourcePath.replace("{" + "range" + "}" , apiInvoker.toPathValue(range));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]range.*?(?=&|\\?|$)", "");
    if(startRow!=null)
	  resourcePath = resourcePath.replace("{" + "startRow" + "}" , apiInvoker.toPathValue(startRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startRow.*?(?=&|\\?|$)", "");
    if(startColumn!=null)
	  resourcePath = resourcePath.replace("{" + "startColumn" + "}" , apiInvoker.toPathValue(startColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startColumn.*?(?=&|\\?|$)", "");
    if(endRow!=null)
	  resourcePath = resourcePath.replace("{" + "endRow" + "}" , apiInvoker.toPathValue(endRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]endRow.*?(?=&|\\?|$)", "");
    if(endColumn!=null)
	  resourcePath = resourcePath.replace("{" + "endColumn" + "}" , apiInvoker.toPathValue(endColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]endColumn.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostColumnStyle
	* Set column style
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param columnIndex	Integer	The column index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @param body	Style	Style dto
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostColumnStyle (String name, String sheetName, Integer columnIndex, String storage, String folder, Style body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || columnIndex == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(columnIndex!=null)
	  resourcePath = resourcePath.replace("{" + "columnIndex" + "}" , apiInvoker.toPathValue(columnIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]columnIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostCopyCellIntoCell
	* Copy cell into cell
	* @param name	String	Workbook name.
	* @param destCellName	String	Destination cell name
	* @param sheetName	String	Destination worksheet name.
	* @param worksheet	String	Source worksheet name.
	* @param cellname	String	Source cell name
	* @param row	Integer	Source row
	* @param column	Integer	Source column
	* @param storage	String	Storage name
	* @param folder	String	Folder name
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostCopyCellIntoCell (String name, String destCellName, String sheetName, String worksheet, String cellname, Integer row, Integer column, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || destCellName == null || sheetName == null || worksheet == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{destCellName}/copy/?worksheet={worksheet}&amp;appSid={appSid}&amp;cellname={cellname}&amp;row={row}&amp;column={column}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(destCellName!=null)
	  resourcePath = resourcePath.replace("{" + "destCellName" + "}" , apiInvoker.toPathValue(destCellName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]destCellName.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(worksheet!=null)
	  resourcePath = resourcePath.replace("{" + "worksheet" + "}" , apiInvoker.toPathValue(worksheet));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]worksheet.*?(?=&|\\?|$)", "");
    if(cellname!=null)
	  resourcePath = resourcePath.replace("{" + "cellname" + "}" , apiInvoker.toPathValue(cellname));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellname.*?(?=&|\\?|$)", "");
    if(row!=null)
	  resourcePath = resourcePath.replace("{" + "row" + "}" , apiInvoker.toPathValue(row));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]row.*?(?=&|\\?|$)", "");
    if(column!=null)
	  resourcePath = resourcePath.replace("{" + "column" + "}" , apiInvoker.toPathValue(column));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]column.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostCopyWorksheetColumns
	* Copy worksheet columns.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param sourceColumnIndex	Integer	Source column index
	* @param destinationColumnIndex	Integer	Destination column index
	* @param columnNumber	Integer	The copied column number
	* @param worksheet	String	The Worksheet
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostCopyWorksheetColumns (String name, String sheetName, Integer sourceColumnIndex, Integer destinationColumnIndex, Integer columnNumber, String worksheet, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || sourceColumnIndex == null || destinationColumnIndex == null || columnNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/copy/?sourceColumnIndex={sourceColumnIndex}&amp;destinationColumnIndex={destinationColumnIndex}&amp;columnNumber={columnNumber}&amp;appSid={appSid}&amp;worksheet={worksheet}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(sourceColumnIndex!=null)
	  resourcePath = resourcePath.replace("{" + "sourceColumnIndex" + "}" , apiInvoker.toPathValue(sourceColumnIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sourceColumnIndex.*?(?=&|\\?|$)", "");
    if(destinationColumnIndex!=null)
	  resourcePath = resourcePath.replace("{" + "destinationColumnIndex" + "}" , apiInvoker.toPathValue(destinationColumnIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]destinationColumnIndex.*?(?=&|\\?|$)", "");
    if(columnNumber!=null)
	  resourcePath = resourcePath.replace("{" + "columnNumber" + "}" , apiInvoker.toPathValue(columnNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]columnNumber.*?(?=&|\\?|$)", "");
    if(worksheet!=null)
	  resourcePath = resourcePath.replace("{" + "worksheet" + "}" , apiInvoker.toPathValue(worksheet));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]worksheet.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostCopyWorksheetRows
	* Copy worksheet rows.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param sourceRowIndex	Integer	Source row index
	* @param destinationRowIndex	Integer	Destination row index
	* @param rowNumber	Integer	The copied row number
	* @param worksheet	String	worksheet
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostCopyWorksheetRows (String name, String sheetName, Integer sourceRowIndex, Integer destinationRowIndex, Integer rowNumber, String worksheet, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || sourceRowIndex == null || destinationRowIndex == null || rowNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/copy/?sourceRowIndex={sourceRowIndex}&amp;destinationRowIndex={destinationRowIndex}&amp;rowNumber={rowNumber}&amp;appSid={appSid}&amp;worksheet={worksheet}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(sourceRowIndex!=null)
	  resourcePath = resourcePath.replace("{" + "sourceRowIndex" + "}" , apiInvoker.toPathValue(sourceRowIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sourceRowIndex.*?(?=&|\\?|$)", "");
    if(destinationRowIndex!=null)
	  resourcePath = resourcePath.replace("{" + "destinationRowIndex" + "}" , apiInvoker.toPathValue(destinationRowIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]destinationRowIndex.*?(?=&|\\?|$)", "");
    if(rowNumber!=null)
	  resourcePath = resourcePath.replace("{" + "rowNumber" + "}" , apiInvoker.toPathValue(rowNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rowNumber.*?(?=&|\\?|$)", "");
    if(worksheet!=null)
	  resourcePath = resourcePath.replace("{" + "worksheet" + "}" , apiInvoker.toPathValue(worksheet));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]worksheet.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostGroupWorksheetColumns
	* Group worksheet columns.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param firstIndex	Integer	The first column index to be operated.
	* @param lastIndex	Integer	The last column index to be operated.
	* @param hide	Boolean	columns visible state
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostGroupWorksheetColumns (String name, String sheetName, Integer firstIndex, Integer lastIndex, Boolean hide, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || firstIndex == null || lastIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/group/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;hide={hide}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(firstIndex!=null)
	  resourcePath = resourcePath.replace("{" + "firstIndex" + "}" , apiInvoker.toPathValue(firstIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]firstIndex.*?(?=&|\\?|$)", "");
    if(lastIndex!=null)
	  resourcePath = resourcePath.replace("{" + "lastIndex" + "}" , apiInvoker.toPathValue(lastIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]lastIndex.*?(?=&|\\?|$)", "");
    if(hide!=null)
	  resourcePath = resourcePath.replace("{" + "hide" + "}" , apiInvoker.toPathValue(hide));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]hide.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostGroupWorksheetRows
	* Group worksheet rows.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param firstIndex	Integer	The first row index to be operated.
	* @param lastIndex	Integer	The last row index to be operated.
	* @param hide	Boolean	rows visible state
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostGroupWorksheetRows (String name, String sheetName, Integer firstIndex, Integer lastIndex, Boolean hide, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || firstIndex == null || lastIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/group/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;hide={hide}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(firstIndex!=null)
	  resourcePath = resourcePath.replace("{" + "firstIndex" + "}" , apiInvoker.toPathValue(firstIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]firstIndex.*?(?=&|\\?|$)", "");
    if(lastIndex!=null)
	  resourcePath = resourcePath.replace("{" + "lastIndex" + "}" , apiInvoker.toPathValue(lastIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]lastIndex.*?(?=&|\\?|$)", "");
    if(hide!=null)
	  resourcePath = resourcePath.replace("{" + "hide" + "}" , apiInvoker.toPathValue(hide));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]hide.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostHideWorksheetColumns
	* Hide worksheet columns.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param startColumn	Integer	The begin column index to be operated.
	* @param totalColumns	Integer	Number of columns to be operated.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostHideWorksheetColumns (String name, String sheetName, Integer startColumn, Integer totalColumns, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || startColumn == null || totalColumns == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/hide/?startColumn={startColumn}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(startColumn!=null)
	  resourcePath = resourcePath.replace("{" + "startColumn" + "}" , apiInvoker.toPathValue(startColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startColumn.*?(?=&|\\?|$)", "");
    if(totalColumns!=null)
	  resourcePath = resourcePath.replace("{" + "totalColumns" + "}" , apiInvoker.toPathValue(totalColumns));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalColumns.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostHideWorksheetRows
	* Hide worksheet rows.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param startrow	Integer	The begin row index to be operated.
	* @param totalRows	Integer	Number of rows to be operated.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostHideWorksheetRows (String name, String sheetName, Integer startrow, Integer totalRows, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || startrow == null || totalRows == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/hide/?startrow={startrow}&amp;totalRows={totalRows}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(startrow!=null)
	  resourcePath = resourcePath.replace("{" + "startrow" + "}" , apiInvoker.toPathValue(startrow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startrow.*?(?=&|\\?|$)", "");
    if(totalRows!=null)
	  resourcePath = resourcePath.replace("{" + "totalRows" + "}" , apiInvoker.toPathValue(totalRows));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalRows.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostRowStyle
	* Set row style.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param rowIndex	Integer	The row index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	Style	Style dto
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostRowStyle (String name, String sheetName, Integer rowIndex, String storage, String folder, Style body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || rowIndex == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(rowIndex!=null)
	  resourcePath = resourcePath.replace("{" + "rowIndex" + "}" , apiInvoker.toPathValue(rowIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rowIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostSetCellHtmlString
	* Set htmlstring value into cell
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param cellName	String	The cell name.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @param file	File	
	* @return CellResponse
	*/

  public CellResponse PostSetCellHtmlString (String name, String sheetName, String cellName, String storage, String folder, File file) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || cellName == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellName!=null)
	  resourcePath = resourcePath.replace("{" + "cellName" + "}" , apiInvoker.toPathValue(cellName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (CellResponse) ApiInvoker.deserialize(response, "", CellResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostSetCellRangeValue
	* Set cell range value
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param cellarea	String	Cell area (like A1:C2)
	* @param value	String	Range value
	* @param type	String	Value data type (like int)
	* @param storage	String	Storage name
	* @param folder	String	Folder name
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostSetCellRangeValue (String name, String sheetName, String cellarea, String value, String type, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || cellarea == null || value == null || type == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/?cellarea={cellarea}&amp;value={value}&amp;type={type}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellarea!=null)
	  resourcePath = resourcePath.replace("{" + "cellarea" + "}" , apiInvoker.toPathValue(cellarea));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellarea.*?(?=&|\\?|$)", "");
    if(value!=null)
	  resourcePath = resourcePath.replace("{" + "value" + "}" , apiInvoker.toPathValue(value));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]value.*?(?=&|\\?|$)", "");
    if(type!=null)
	  resourcePath = resourcePath.replace("{" + "type" + "}" , apiInvoker.toPathValue(type));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]type.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostSetWorksheetColumnWidth
	* Set worksheet column width.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param columnIndex	Integer	The column index.
	* @param width	Double	The width.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return ColumnResponse
	*/

  public ColumnResponse PostSetWorksheetColumnWidth (String name, String sheetName, Integer columnIndex, Double width, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || columnIndex == null || width == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?width={width}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(columnIndex!=null)
	  resourcePath = resourcePath.replace("{" + "columnIndex" + "}" , apiInvoker.toPathValue(columnIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]columnIndex.*?(?=&|\\?|$)", "");
    if(width!=null)
	  resourcePath = resourcePath.replace("{" + "width" + "}" , apiInvoker.toPathValue(width));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]width.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ColumnResponse) ApiInvoker.deserialize(response, "", ColumnResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostUngroupWorksheetColumns
	* Ungroup worksheet columns.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param firstIndex	Integer	The first column index to be operated.
	* @param lastIndex	Integer	The last column index to be operated.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostUngroupWorksheetColumns (String name, String sheetName, Integer firstIndex, Integer lastIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || firstIndex == null || lastIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/ungroup/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(firstIndex!=null)
	  resourcePath = resourcePath.replace("{" + "firstIndex" + "}" , apiInvoker.toPathValue(firstIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]firstIndex.*?(?=&|\\?|$)", "");
    if(lastIndex!=null)
	  resourcePath = resourcePath.replace("{" + "lastIndex" + "}" , apiInvoker.toPathValue(lastIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]lastIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostUngroupWorksheetRows
	* Ungroup worksheet rows.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param firstIndex	Integer	The first row index to be operated.
	* @param lastIndex	Integer	The last row index to be operated.
	* @param isAll	Boolean	Is all row to be operated
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostUngroupWorksheetRows (String name, String sheetName, Integer firstIndex, Integer lastIndex, Boolean isAll, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || firstIndex == null || lastIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/ungroup/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;isAll={isAll}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(firstIndex!=null)
	  resourcePath = resourcePath.replace("{" + "firstIndex" + "}" , apiInvoker.toPathValue(firstIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]firstIndex.*?(?=&|\\?|$)", "");
    if(lastIndex!=null)
	  resourcePath = resourcePath.replace("{" + "lastIndex" + "}" , apiInvoker.toPathValue(lastIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]lastIndex.*?(?=&|\\?|$)", "");
    if(isAll!=null)
	  resourcePath = resourcePath.replace("{" + "isAll" + "}" , apiInvoker.toPathValue(isAll));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]isAll.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostUnhideWorksheetColumns
	* Unhide worksheet columns.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param startcolumn	Integer	The begin column index to be operated.
	* @param totalColumns	Integer	Number of columns to be operated.
	* @param width	Double	The new column width.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostUnhideWorksheetColumns (String name, String sheetName, Integer startcolumn, Integer totalColumns, Double width, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || startcolumn == null || totalColumns == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/unhide/?startcolumn={startcolumn}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;width={width}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(startcolumn!=null)
	  resourcePath = resourcePath.replace("{" + "startcolumn" + "}" , apiInvoker.toPathValue(startcolumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startcolumn.*?(?=&|\\?|$)", "");
    if(totalColumns!=null)
	  resourcePath = resourcePath.replace("{" + "totalColumns" + "}" , apiInvoker.toPathValue(totalColumns));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalColumns.*?(?=&|\\?|$)", "");
    if(width!=null)
	  resourcePath = resourcePath.replace("{" + "width" + "}" , apiInvoker.toPathValue(width));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]width.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostUnhideWorksheetRows
	* Unhide worksheet rows.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param startrow	Integer	The begin row index to be operated.
	* @param totalRows	Integer	Number of rows to be operated.
	* @param height	Double	The new row height.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostUnhideWorksheetRows (String name, String sheetName, Integer startrow, Integer totalRows, Double height, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || startrow == null || totalRows == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/unhide/?startrow={startrow}&amp;totalRows={totalRows}&amp;appSid={appSid}&amp;height={height}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(startrow!=null)
	  resourcePath = resourcePath.replace("{" + "startrow" + "}" , apiInvoker.toPathValue(startrow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startrow.*?(?=&|\\?|$)", "");
    if(totalRows!=null)
	  resourcePath = resourcePath.replace("{" + "totalRows" + "}" , apiInvoker.toPathValue(totalRows));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalRows.*?(?=&|\\?|$)", "");
    if(height!=null)
	  resourcePath = resourcePath.replace("{" + "height" + "}" , apiInvoker.toPathValue(height));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]height.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostUpdateWorksheetCellStyle
	* Update cell's style.
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param cellName	String	The cell name.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @param body	Style	with update style settings.
	* @return StyleResponse
	*/

  public StyleResponse PostUpdateWorksheetCellStyle (String name, String sheetName, String cellName, String storage, String folder, Style body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || cellName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellName!=null)
	  resourcePath = resourcePath.replace("{" + "cellName" + "}" , apiInvoker.toPathValue(cellName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (StyleResponse) ApiInvoker.deserialize(response, "", StyleResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostUpdateWorksheetRangeStyle
	* Update cell's range style.
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param range	String	The range.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @param body	Style	with update style settings.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostUpdateWorksheetRangeStyle (String name, String sheetName, String range, String storage, String folder, Style body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || range == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/style/?range={range}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(range!=null)
	  resourcePath = resourcePath.replace("{" + "range" + "}" , apiInvoker.toPathValue(range));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]range.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostUpdateWorksheetRow
	* Update worksheet row.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param rowIndex	Integer	The row index.
	* @param height	Double	The new row height.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return RowResponse
	*/

  public RowResponse PostUpdateWorksheetRow (String name, String sheetName, Integer rowIndex, Double height, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || rowIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;height={height}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(rowIndex!=null)
	  resourcePath = resourcePath.replace("{" + "rowIndex" + "}" , apiInvoker.toPathValue(rowIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rowIndex.*?(?=&|\\?|$)", "");
    if(height!=null)
	  resourcePath = resourcePath.replace("{" + "height" + "}" , apiInvoker.toPathValue(height));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]height.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (RowResponse) ApiInvoker.deserialize(response, "", RowResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorksheetCellSetValue
	* Set cell value.
	* @param name	String	The document name.
	* @param sheetName	String	The worksheet name.
	* @param cellName	String	The cell name.
	* @param value	String	The cell value.
	* @param type	String	The value type.
	* @param formula	String	Formula for cell
	* @param storage	String	Workbook storage.
	* @param folder	String	The document folder.
	* @return CellResponse
	*/

  public CellResponse PostWorksheetCellSetValue (String name, String sheetName, String cellName, String value, String type, String formula, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || cellName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/?appSid={appSid}&amp;value={value}&amp;type={type}&amp;formula={formula}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellName!=null)
	  resourcePath = resourcePath.replace("{" + "cellName" + "}" , apiInvoker.toPathValue(cellName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellName.*?(?=&|\\?|$)", "");
    if(value!=null)
	  resourcePath = resourcePath.replace("{" + "value" + "}" , apiInvoker.toPathValue(value));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]value.*?(?=&|\\?|$)", "");
    if(type!=null)
	  resourcePath = resourcePath.replace("{" + "type" + "}" , apiInvoker.toPathValue(type));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]type.*?(?=&|\\?|$)", "");
    if(formula!=null)
	  resourcePath = resourcePath.replace("{" + "formula" + "}" , apiInvoker.toPathValue(formula));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]formula.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (CellResponse) ApiInvoker.deserialize(response, "", CellResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorksheetMerge
	* Merge cells.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param startRow	Integer	The start row.
	* @param startColumn	Integer	The start column.
	* @param totalRows	Integer	The total rows
	* @param totalColumns	Integer	The total columns.
	* @param storage	String	The document storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostWorksheetMerge (String name, String sheetName, Integer startRow, Integer startColumn, Integer totalRows, Integer totalColumns, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || startRow == null || startColumn == null || totalRows == null || totalColumns == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/merge/?startRow={startRow}&amp;startColumn={startColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(startRow!=null)
	  resourcePath = resourcePath.replace("{" + "startRow" + "}" , apiInvoker.toPathValue(startRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startRow.*?(?=&|\\?|$)", "");
    if(startColumn!=null)
	  resourcePath = resourcePath.replace("{" + "startColumn" + "}" , apiInvoker.toPathValue(startColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startColumn.*?(?=&|\\?|$)", "");
    if(totalRows!=null)
	  resourcePath = resourcePath.replace("{" + "totalRows" + "}" , apiInvoker.toPathValue(totalRows));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalRows.*?(?=&|\\?|$)", "");
    if(totalColumns!=null)
	  resourcePath = resourcePath.replace("{" + "totalColumns" + "}" , apiInvoker.toPathValue(totalColumns));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalColumns.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorksheetUnmerge
	* Unmerge cells.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param startRow	Integer	The start row.
	* @param startColumn	Integer	The start column.
	* @param totalRows	Integer	The total rows
	* @param totalColumns	Integer	The total columns.
	* @param storage	String	The document storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostWorksheetUnmerge (String name, String sheetName, Integer startRow, Integer startColumn, Integer totalRows, Integer totalColumns, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || startRow == null || startColumn == null || totalRows == null || totalColumns == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/unmerge/?startRow={startRow}&amp;startColumn={startColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(startRow!=null)
	  resourcePath = resourcePath.replace("{" + "startRow" + "}" , apiInvoker.toPathValue(startRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startRow.*?(?=&|\\?|$)", "");
    if(startColumn!=null)
	  resourcePath = resourcePath.replace("{" + "startColumn" + "}" , apiInvoker.toPathValue(startColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startColumn.*?(?=&|\\?|$)", "");
    if(totalRows!=null)
	  resourcePath = resourcePath.replace("{" + "totalRows" + "}" , apiInvoker.toPathValue(totalRows));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalRows.*?(?=&|\\?|$)", "");
    if(totalColumns!=null)
	  resourcePath = resourcePath.replace("{" + "totalColumns" + "}" , apiInvoker.toPathValue(totalColumns));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalColumns.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutInsertWorksheetColumns
	* Insert worksheet columns.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param columnIndex	Integer	The column index.
	* @param columns	Integer	The columns.
	* @param updateReference	Boolean	The update reference.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return ColumnsResponse
	*/

  public ColumnsResponse PutInsertWorksheetColumns (String name, String sheetName, Integer columnIndex, Integer columns, Boolean updateReference, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || columnIndex == null || columns == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?columns={columns}&amp;appSid={appSid}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(columnIndex!=null)
	  resourcePath = resourcePath.replace("{" + "columnIndex" + "}" , apiInvoker.toPathValue(columnIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]columnIndex.*?(?=&|\\?|$)", "");
    if(columns!=null)
	  resourcePath = resourcePath.replace("{" + "columns" + "}" , apiInvoker.toPathValue(columns));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]columns.*?(?=&|\\?|$)", "");
    if(updateReference!=null)
	  resourcePath = resourcePath.replace("{" + "updateReference" + "}" , apiInvoker.toPathValue(updateReference));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]updateReference.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (ColumnsResponse) ApiInvoker.deserialize(response, "", ColumnsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutInsertWorksheetRow
	* Insert new worksheet row.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param rowIndex	Integer	The new row index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return RowResponse
	*/

  public RowResponse PutInsertWorksheetRow (String name, String sheetName, Integer rowIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || rowIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(rowIndex!=null)
	  resourcePath = resourcePath.replace("{" + "rowIndex" + "}" , apiInvoker.toPathValue(rowIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]rowIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (RowResponse) ApiInvoker.deserialize(response, "", RowResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutInsertWorksheetRows
	* Insert several new worksheet rows.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param startrow	Integer	The begin row index to be operated.
	* @param totalRows	Integer	Number of rows to be operated.
	* @param updateReference	Boolean	Indicates if update references in other worksheets.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PutInsertWorksheetRows (String name, String sheetName, Integer startrow, Integer totalRows, Boolean updateReference, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || startrow == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/?startrow={startrow}&amp;appSid={appSid}&amp;totalRows={totalRows}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(startrow!=null)
	  resourcePath = resourcePath.replace("{" + "startrow" + "}" , apiInvoker.toPathValue(startrow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startrow.*?(?=&|\\?|$)", "");
    if(totalRows!=null)
	  resourcePath = resourcePath.replace("{" + "totalRows" + "}" , apiInvoker.toPathValue(totalRows));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalRows.*?(?=&|\\?|$)", "");
    if(updateReference!=null)
	  resourcePath = resourcePath.replace("{" + "updateReference" + "}" , apiInvoker.toPathValue(updateReference));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]updateReference.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetAutoshape
	* Get autoshape info.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param autoshapeNumber	Integer	The autoshape number.
	* @param storage	String	Workbook storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public AutoShapeResponse GetWorksheetAutoshape (String name, String sheetName, Integer autoshapeNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || autoshapeNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(autoshapeNumber!=null)
	  resourcePath = resourcePath.replace("{" + "autoshapeNumber" + "}" , apiInvoker.toPathValue(autoshapeNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]autoshapeNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (AutoShapeResponse) ApiInvoker.deserialize(response, "", AutoShapeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetAutoshapes
	* Get worksheet autoshapes info.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @return AutoShapesResponse
	*/

  public AutoShapesResponse GetWorksheetAutoshapes (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/autoshapes/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (AutoShapesResponse) ApiInvoker.deserialize(response, "", AutoShapesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetAutoshapeWithFormat
	* Get autoshape info in some format.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param autoshapeNumber	Integer	The autoshape number.
	* @param format	String	Autoshape conversion format.
	* @param storage	String	Workbook storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorksheetAutoshapeWithFormat (String name, String sheetName, Integer autoshapeNumber, String format, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || autoshapeNumber == null || format == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(autoshapeNumber!=null)
	  resourcePath = resourcePath.replace("{" + "autoshapeNumber" + "}" , apiInvoker.toPathValue(autoshapeNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]autoshapeNumber.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetExtractBarcodes
	* Extract barcodes from worksheet picture.
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param pictureNumber	Integer	Picture index.
	* @param storage	String	Workbook storage.
	* @param folder	String	Workbook folder.
	* @return BarcodeResponseList
	*/

  public BarcodeResponseList GetExtractBarcodes (String name, String sheetName, Integer pictureNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || pictureNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/recognize/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(pictureNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pictureNumber" + "}" , apiInvoker.toPathValue(pictureNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pictureNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (BarcodeResponseList) ApiInvoker.deserialize(response, "", BarcodeResponseList.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetChartArea
	* Get chart area info.
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	Workbook folder.
	* @return ChartAreaResponse
	*/

  public ChartAreaResponse GetChartArea (String name, String sheetName, Integer chartIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ChartAreaResponse) ApiInvoker.deserialize(response, "", ChartAreaResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetChartAreaBorder
	* Get chart area border info.
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	Workbook folder.
	* @return LineResponse
	*/

  public LineResponse GetChartAreaBorder (String name, String sheetName, Integer chartIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/border/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (LineResponse) ApiInvoker.deserialize(response, "", LineResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetChartAreaFillFormat
	* Get chart area fill format info.
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	Workbook folder.
	* @return FillFormatResponse
	*/

  public FillFormatResponse GetChartAreaFillFormat (String name, String sheetName, Integer chartIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/fillFormat/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (FillFormatResponse) ApiInvoker.deserialize(response, "", FillFormatResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetChartLegend
	* Hide legend in chart
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetChartLegend (String name, String sheetName, Integer chartIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetChartTitle
	* Hide title in chart
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetChartTitle (String name, String sheetName, Integer chartIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetClearCharts
	* Clear the charts.
	* @param name	String	Workbook name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetClearCharts (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetDeleteChart
	* Delete worksheet chart by index.
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return ChartsResponse
	*/

  public ChartsResponse DeleteWorksheetDeleteChart (String name, String sheetName, Integer chartIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (ChartsResponse) ApiInvoker.deserialize(response, "", ChartsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetChart
	* Get chart info.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param chartNumber	Integer	The chart number.
	* @param storage	String	Workbook storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorksheetChart (String name, String sheetName, Integer chartNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartNumber!=null)
	  resourcePath = resourcePath.replace("{" + "chartNumber" + "}" , apiInvoker.toPathValue(chartNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetChartLegend
	* Get chart legend
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return LegendResponse
	*/

  public LegendResponse GetWorksheetChartLegend (String name, String sheetName, Integer chartIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (LegendResponse) ApiInvoker.deserialize(response, "", LegendResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetCharts
	* Get worksheet charts info.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @return ChartsResponse
	*/

  public ChartsResponse GetWorksheetCharts (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ChartsResponse) ApiInvoker.deserialize(response, "", ChartsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetChartWithFormat
	* Get chart in some format.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param chartNumber	Integer	The chart number.
	* @param format	String	Chart conversion format.
	* @param storage	String	Workbook storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorksheetChartWithFormat (String name, String sheetName, Integer chartNumber, String format, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartNumber == null || format == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartNumber!=null)
	  resourcePath = resourcePath.replace("{" + "chartNumber" + "}" , apiInvoker.toPathValue(chartNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartNumber.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorksheetChartLegend
	* Update chart legend
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @param body	Legend	
	* @return LegendResponse
	*/

  public LegendResponse PostWorksheetChartLegend (String name, String sheetName, Integer chartIndex, String storage, String folder, Legend body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (LegendResponse) ApiInvoker.deserialize(response, "", LegendResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorksheetChartTitle
	* Update chart title
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @param body	Title	Chart title
	* @return TitleResponse
	*/

  public TitleResponse PostWorksheetChartTitle (String name, String sheetName, Integer chartIndex, String storage, String folder, Title body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (TitleResponse) ApiInvoker.deserialize(response, "", TitleResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorksheetAddChart
	* Add new chart to worksheet.
	* @param name	String	Workbook name.
	* @param sheetName	String	The worksheet name.
	* @param chartType	String	Chart type, please refer property Type in chart resource.
	* @param upperLeftRow	Integer	New chart upper left row.
	* @param upperLeftColumn	Integer	New chart upperleft column.
	* @param lowerRightRow	Integer	New chart lower right row.
	* @param lowerRightColumn	Integer	New chart lower right column.
	* @param area	String	Specifies values from which to plot the data series.
	* @param isVertical	Boolean	Specifies whether to plot the series from a range of cell values by row or by column.
	* @param categoryData	String	Gets or sets the range of category Axis values. It can be a range of cells (such as, d1:e10).
	* @param isAutoGetSerialName	Boolean	Specifies whether auto update serial name.
	* @param title	String	Specifies chart title name.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return ChartsResponse
	*/

  public ChartsResponse PutWorksheetAddChart (String name, String sheetName, String chartType, Integer upperLeftRow, Integer upperLeftColumn, Integer lowerRightRow, Integer lowerRightColumn, String area, Boolean isVertical, String categoryData, Boolean isAutoGetSerialName, String title, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartType == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/?chartType={chartType}&amp;appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;lowerRightRow={lowerRightRow}&amp;lowerRightColumn={lowerRightColumn}&amp;area={area}&amp;isVertical={isVertical}&amp;categoryData={categoryData}&amp;isAutoGetSerialName={isAutoGetSerialName}&amp;title={title}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartType!=null)
	  resourcePath = resourcePath.replace("{" + "chartType" + "}" , apiInvoker.toPathValue(chartType));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartType.*?(?=&|\\?|$)", "");
    if(upperLeftRow!=null)
	  resourcePath = resourcePath.replace("{" + "upperLeftRow" + "}" , apiInvoker.toPathValue(upperLeftRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]upperLeftRow.*?(?=&|\\?|$)", "");
    if(upperLeftColumn!=null)
	  resourcePath = resourcePath.replace("{" + "upperLeftColumn" + "}" , apiInvoker.toPathValue(upperLeftColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]upperLeftColumn.*?(?=&|\\?|$)", "");
    if(lowerRightRow!=null)
	  resourcePath = resourcePath.replace("{" + "lowerRightRow" + "}" , apiInvoker.toPathValue(lowerRightRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]lowerRightRow.*?(?=&|\\?|$)", "");
    if(lowerRightColumn!=null)
	  resourcePath = resourcePath.replace("{" + "lowerRightColumn" + "}" , apiInvoker.toPathValue(lowerRightColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]lowerRightColumn.*?(?=&|\\?|$)", "");
    if(area!=null)
	  resourcePath = resourcePath.replace("{" + "area" + "}" , apiInvoker.toPathValue(area));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]area.*?(?=&|\\?|$)", "");
    if(isVertical!=null)
	  resourcePath = resourcePath.replace("{" + "isVertical" + "}" , apiInvoker.toPathValue(isVertical));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]isVertical.*?(?=&|\\?|$)", "");
    if(categoryData!=null)
	  resourcePath = resourcePath.replace("{" + "categoryData" + "}" , apiInvoker.toPathValue(categoryData));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]categoryData.*?(?=&|\\?|$)", "");
    if(isAutoGetSerialName!=null)
	  resourcePath = resourcePath.replace("{" + "isAutoGetSerialName" + "}" , apiInvoker.toPathValue(isAutoGetSerialName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]isAutoGetSerialName.*?(?=&|\\?|$)", "");
    if(title!=null)
	  resourcePath = resourcePath.replace("{" + "title" + "}" , apiInvoker.toPathValue(title));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]title.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (ChartsResponse) ApiInvoker.deserialize(response, "", ChartsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorksheetChartLegend
	* Show legend in chart
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PutWorksheetChartLegend (String name, String sheetName, Integer chartIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorksheetChartTitle
	* Add chart title / Set chart title visible
	* @param name	String	Workbook name.
	* @param sheetName	String	Worksheet name.
	* @param chartIndex	Integer	The chart index.
	* @param storage	String	Workbook storage.
	* @param folder	String	The workbook folder.
	* @param body	Title	Chart title.
	* @return TitleResponse
	*/

  public TitleResponse PutWorksheetChartTitle (String name, String sheetName, Integer chartIndex, String storage, String folder, Title body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || chartIndex == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(chartIndex!=null)
	  resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , apiInvoker.toPathValue(chartIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]chartIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (TitleResponse) ApiInvoker.deserialize(response, "", TitleResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorkSheetHyperlink
	* Delete worksheet hyperlink by index.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param hyperlinkIndex	Integer	The hyperlink's index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorkSheetHyperlink (String name, String sheetName, Integer hyperlinkIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || hyperlinkIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(hyperlinkIndex!=null)
	  resourcePath = resourcePath.replace("{" + "hyperlinkIndex" + "}" , apiInvoker.toPathValue(hyperlinkIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]hyperlinkIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorkSheetHyperlinks
	* Delete all hyperlinks in worksheet.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorkSheetHyperlinks (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetHyperlink
	* Get worksheet hyperlink by index.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param hyperlinkIndex	Integer	The hyperlink's index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return HyperlinkResponse
	*/

  public HyperlinkResponse GetWorkSheetHyperlink (String name, String sheetName, Integer hyperlinkIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || hyperlinkIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(hyperlinkIndex!=null)
	  resourcePath = resourcePath.replace("{" + "hyperlinkIndex" + "}" , apiInvoker.toPathValue(hyperlinkIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]hyperlinkIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (HyperlinkResponse) ApiInvoker.deserialize(response, "", HyperlinkResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetHyperlinks
	* Get worksheet hyperlinks.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return HyperlinksResponse
	*/

  public HyperlinksResponse GetWorkSheetHyperlinks (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (HyperlinksResponse) ApiInvoker.deserialize(response, "", HyperlinksResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkSheetHyperlink
	* Update worksheet hyperlink by index.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param hyperlinkIndex	Integer	The hyperlink's index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	Hyperlink	Hyperlink object
	* @return HyperlinkResponse
	*/

  public HyperlinkResponse PostWorkSheetHyperlink (String name, String sheetName, Integer hyperlinkIndex, String storage, String folder, Hyperlink body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || hyperlinkIndex == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(hyperlinkIndex!=null)
	  resourcePath = resourcePath.replace("{" + "hyperlinkIndex" + "}" , apiInvoker.toPathValue(hyperlinkIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]hyperlinkIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (HyperlinkResponse) ApiInvoker.deserialize(response, "", HyperlinkResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorkSheetHyperlink
	* Add worksheet hyperlink.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param firstRow	Integer	
	* @param firstColumn	Integer	
	* @param totalRows	Integer	
	* @param totalColumns	Integer	
	* @param address	String	
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return HyperlinkResponse
	*/

  public HyperlinkResponse PutWorkSheetHyperlink (String name, String sheetName, Integer firstRow, Integer firstColumn, Integer totalRows, Integer totalColumns, String address, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || firstRow == null || firstColumn == null || totalRows == null || totalColumns == null || address == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;firstRow={firstRow}&amp;firstColumn={firstColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;address={address}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(firstRow!=null)
	  resourcePath = resourcePath.replace("{" + "firstRow" + "}" , apiInvoker.toPathValue(firstRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]firstRow.*?(?=&|\\?|$)", "");
    if(firstColumn!=null)
	  resourcePath = resourcePath.replace("{" + "firstColumn" + "}" , apiInvoker.toPathValue(firstColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]firstColumn.*?(?=&|\\?|$)", "");
    if(totalRows!=null)
	  resourcePath = resourcePath.replace("{" + "totalRows" + "}" , apiInvoker.toPathValue(totalRows));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalRows.*?(?=&|\\?|$)", "");
    if(totalColumns!=null)
	  resourcePath = resourcePath.replace("{" + "totalColumns" + "}" , apiInvoker.toPathValue(totalColumns));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]totalColumns.*?(?=&|\\?|$)", "");
    if(address!=null)
	  resourcePath = resourcePath.replace("{" + "address" + "}" , apiInvoker.toPathValue(address));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]address.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (HyperlinkResponse) ApiInvoker.deserialize(response, "", HyperlinkResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetOleObject
	* Delete OLE object.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worsheet name.
	* @param oleObjectIndex	Integer	Ole object index
	* @param storage	String	The workbook storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetOleObject (String name, String sheetName, Integer oleObjectIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || oleObjectIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(oleObjectIndex!=null)
	  resourcePath = resourcePath.replace("{" + "oleObjectIndex" + "}" , apiInvoker.toPathValue(oleObjectIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]oleObjectIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetOleObjects
	* Delete all OLE objects.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worsheet name.
	* @param storage	String	The workbook storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetOleObjects (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetOleObject
	* Get OLE object info.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param objectNumber	Integer	The object number.
	* @param storage	String	Workbook storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorksheetOleObject (String name, String sheetName, Integer objectNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || objectNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(objectNumber!=null)
	  resourcePath = resourcePath.replace("{" + "objectNumber" + "}" , apiInvoker.toPathValue(objectNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]objectNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetOleObjects
	* Get worksheet OLE objects info.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @return OleObjectsResponse
	*/

  public OleObjectsResponse GetWorksheetOleObjects (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (OleObjectsResponse) ApiInvoker.deserialize(response, "", OleObjectsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetOleObjectWithFormat
	* Get OLE object info or get the OLE object in some format.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param objectNumber	Integer	The object number.
	* @param format	String	Object conversion format.
	* @param storage	String	Workbook storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorksheetOleObjectWithFormat (String name, String sheetName, Integer objectNumber, String format, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || objectNumber == null || format == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(objectNumber!=null)
	  resourcePath = resourcePath.replace("{" + "objectNumber" + "}" , apiInvoker.toPathValue(objectNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]objectNumber.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostUpdateWorksheetOleObject
	* Update OLE object.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worsheet name.
	* @param oleObjectIndex	Integer	Ole object index
	* @param storage	String	The workbook storage.
	* @param folder	String	The workbook folder.
	* @param body	OleObject	Ole Object
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostUpdateWorksheetOleObject (String name, String sheetName, Integer oleObjectIndex, String storage, String folder, OleObject body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || oleObjectIndex == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(oleObjectIndex!=null)
	  resourcePath = resourcePath.replace("{" + "oleObjectIndex" + "}" , apiInvoker.toPathValue(oleObjectIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]oleObjectIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorksheetOleObject
	* Add OLE object
	* @param name	String	The workbook name.
	* @param sheetName	String	The worsheet name.
	* @param upperLeftRow	Integer	Upper left row index
	* @param upperLeftColumn	Integer	Upper left column index
	* @param height	Integer	Height of oleObject, in unit of pixel
	* @param width	Integer	Width of oleObject, in unit of pixel
	* @param oleFile	String	OLE filename
	* @param imageFile	String	Image filename
	* @param storage	String	The workbook storage.
	* @param folder	String	The workbook folder.
	* @param body	OleObject	Ole Object
	* @return OleObjectResponse
	*/

  public OleObjectResponse PutWorksheetOleObject (String name, String sheetName, Integer upperLeftRow, Integer upperLeftColumn, Integer height, Integer width, String oleFile, String imageFile, String storage, String folder, OleObject body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;height={height}&amp;width={width}&amp;oleFile={oleFile}&amp;imageFile={imageFile}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(upperLeftRow!=null)
	  resourcePath = resourcePath.replace("{" + "upperLeftRow" + "}" , apiInvoker.toPathValue(upperLeftRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]upperLeftRow.*?(?=&|\\?|$)", "");
    if(upperLeftColumn!=null)
	  resourcePath = resourcePath.replace("{" + "upperLeftColumn" + "}" , apiInvoker.toPathValue(upperLeftColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]upperLeftColumn.*?(?=&|\\?|$)", "");
    if(height!=null)
	  resourcePath = resourcePath.replace("{" + "height" + "}" , apiInvoker.toPathValue(height));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]height.*?(?=&|\\?|$)", "");
    if(width!=null)
	  resourcePath = resourcePath.replace("{" + "width" + "}" , apiInvoker.toPathValue(width));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]width.*?(?=&|\\?|$)", "");
    if(oleFile!=null)
	  resourcePath = resourcePath.replace("{" + "oleFile" + "}" , apiInvoker.toPathValue(oleFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]oleFile.*?(?=&|\\?|$)", "");
    if(imageFile!=null)
	  resourcePath = resourcePath.replace("{" + "imageFile" + "}" , apiInvoker.toPathValue(imageFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]imageFile.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (OleObjectResponse) ApiInvoker.deserialize(response, "", OleObjectResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetPicture
	* Delete a picture object in worksheet
	* @param name	String	The workbook name.
	* @param sheetName	String	The worsheet name.
	* @param pictureIndex	Integer	Picture index
	* @param storage	String	The workbook storage.
	* @param folder	String	The workbook folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetPicture (String name, String sheetName, Integer pictureIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || pictureIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(pictureIndex!=null)
	  resourcePath = resourcePath.replace("{" + "pictureIndex" + "}" , apiInvoker.toPathValue(pictureIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pictureIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorkSheetPictures
	* Delete all pictures in worksheet.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorkSheetPictures (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetPicture
	* GRead worksheet picture by number.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param pictureNumber	Integer	The picture number.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorksheetPicture (String name, String sheetName, Integer pictureNumber, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || pictureNumber == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(pictureNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pictureNumber" + "}" , apiInvoker.toPathValue(pictureNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pictureNumber.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetPictures
	* Read worksheet pictures.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return PicturesResponse
	*/

  public PicturesResponse GetWorksheetPictures (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (PicturesResponse) ApiInvoker.deserialize(response, "", PicturesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetPictureWithFormat
	* GRead worksheet picture by number.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param pictureNumber	Integer	The picture number.
	* @param format	String	Picture conversion format.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorksheetPictureWithFormat (String name, String sheetName, Integer pictureNumber, String format, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || pictureNumber == null || format == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(pictureNumber!=null)
	  resourcePath = resourcePath.replace("{" + "pictureNumber" + "}" , apiInvoker.toPathValue(pictureNumber));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pictureNumber.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkSheetPicture
	* Update worksheet picture by index.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param pictureIndex	Integer	The picture's index.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	Picture	Picture object
	* @return PictureResponse
	*/

  public PictureResponse PostWorkSheetPicture (String name, String sheetName, Integer pictureIndex, String storage, String folder, Picture body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || pictureIndex == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(pictureIndex!=null)
	  resourcePath = resourcePath.replace("{" + "pictureIndex" + "}" , apiInvoker.toPathValue(pictureIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pictureIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (PictureResponse) ApiInvoker.deserialize(response, "", PictureResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorksheetAddPicture
	* Add a new worksheet picture.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worsheet name.
	* @param upperLeftRow	Integer	The image upper left row.
	* @param upperLeftColumn	Integer	The image upper left column.
	* @param lowerRightRow	Integer	The image low right row.
	* @param lowerRightColumn	Integer	The image low right column.
	* @param picturePath	String	The picture path, if not provided the picture data is inspected in the request body.
	* @param storage	String	The workbook storage.
	* @param folder	String	The workbook folder.
	* @param file	File	
	* @return PicturesResponse
	*/

  public PicturesResponse PutWorksheetAddPicture (String name, String sheetName, Integer upperLeftRow, Integer upperLeftColumn, Integer lowerRightRow, Integer lowerRightColumn, String picturePath, String storage, String folder, File file) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null  ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;lowerRightRow={lowerRightRow}&amp;lowerRightColumn={lowerRightColumn}&amp;picturePath={picturePath}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(upperLeftRow!=null)
	  resourcePath = resourcePath.replace("{" + "upperLeftRow" + "}" , apiInvoker.toPathValue(upperLeftRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]upperLeftRow.*?(?=&|\\?|$)", "");
    if(upperLeftColumn!=null)
	  resourcePath = resourcePath.replace("{" + "upperLeftColumn" + "}" , apiInvoker.toPathValue(upperLeftColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]upperLeftColumn.*?(?=&|\\?|$)", "");
    if(lowerRightRow!=null)
	  resourcePath = resourcePath.replace("{" + "lowerRightRow" + "}" , apiInvoker.toPathValue(lowerRightRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]lowerRightRow.*?(?=&|\\?|$)", "");
    if(lowerRightColumn!=null)
	  resourcePath = resourcePath.replace("{" + "lowerRightColumn" + "}" , apiInvoker.toPathValue(lowerRightColumn));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]lowerRightColumn.*?(?=&|\\?|$)", "");
    if(picturePath!=null)
	  resourcePath = resourcePath.replace("{" + "picturePath" + "}" , apiInvoker.toPathValue(picturePath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]picturePath.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";


if(file !=null) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (PicturesResponse) ApiInvoker.deserialize(response, "", PicturesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetPivotTable
	* Delete worksheet pivot table by index
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param pivotTableIndex	Integer	Pivot table index
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetPivotTable (String name, String sheetName, Integer pivotTableIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || pivotTableIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(pivotTableIndex!=null)
	  resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , apiInvoker.toPathValue(pivotTableIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pivotTableIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetPivotTables
	* Delete worksheet pivot tables
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetPivotTables (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetPivotTable
	* Get worksheet pivottable info by index.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param pivottableIndex	Integer	
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @return PivotTableResponse
	*/

  public PivotTableResponse GetWorksheetPivotTable (String name, String sheetName, Integer pivottableIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || pivottableIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivottableIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(pivottableIndex!=null)
	  resourcePath = resourcePath.replace("{" + "pivottableIndex" + "}" , apiInvoker.toPathValue(pivottableIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pivottableIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (PivotTableResponse) ApiInvoker.deserialize(response, "", PivotTableResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorksheetPivotTables
	* Get worksheet pivottables info.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @return PivotTablesResponse
	*/

  public PivotTablesResponse GetWorksheetPivotTables (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (PivotTablesResponse) ApiInvoker.deserialize(response, "", PivotTablesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostPivotTableCellStyle
	* Update cell style for pivot table
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param pivotTableIndex	Integer	Pivot table index
	* @param column	Integer	
	* @param row	Integer	
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @param body	Style	Style dto in request body.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostPivotTableCellStyle (String name, String sheetName, Integer pivotTableIndex, Integer column, Integer row, String storage, String folder, Style body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || pivotTableIndex == null || column == null || row == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Format/?column={column}&amp;row={row}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(pivotTableIndex!=null)
	  resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , apiInvoker.toPathValue(pivotTableIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pivotTableIndex.*?(?=&|\\?|$)", "");
    if(column!=null)
	  resourcePath = resourcePath.replace("{" + "column" + "}" , apiInvoker.toPathValue(column));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]column.*?(?=&|\\?|$)", "");
    if(row!=null)
	  resourcePath = resourcePath.replace("{" + "row" + "}" , apiInvoker.toPathValue(row));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]row.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostPivotTableStyle
	* Update style for pivot table
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param pivotTableIndex	Integer	Pivot table index
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @param body	Style	Style dto in request body.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostPivotTableStyle (String name, String sheetName, Integer pivotTableIndex, String storage, String folder, Style body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || pivotTableIndex == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/FormatAll/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(pivotTableIndex!=null)
	  resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , apiInvoker.toPathValue(pivotTableIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pivotTableIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutPivotTableField
	* Add pivot field into into pivot table
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param pivotTableIndex	Integer	Pivot table index
	* @param pivotFieldType	String	
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @param body	PivotTableFieldRequest	Dto that conrains field indexes
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PutPivotTableField (String name, String sheetName, Integer pivotTableIndex, String pivotFieldType, String storage, String folder, PivotTableFieldRequest body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || pivotTableIndex == null || pivotFieldType == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/?pivotFieldType={pivotFieldType}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(pivotTableIndex!=null)
	  resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , apiInvoker.toPathValue(pivotTableIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pivotTableIndex.*?(?=&|\\?|$)", "");
    if(pivotFieldType!=null)
	  resourcePath = resourcePath.replace("{" + "pivotFieldType" + "}" , apiInvoker.toPathValue(pivotFieldType));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]pivotFieldType.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorksheetPivotTable
	* Add a pivot table into worksheet.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	Workbook storage.
	* @param folder	String	Document's folder.
	* @param sourceData	String	The data for the new PivotTable cache.
	* @param destCellName	String	The cell in the upper-left corner of the PivotTable report's destination range.
	* @param tableName	String	The name of the new PivotTable report.
	* @param useSameSource	Boolean	Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory.
	* @param body	CreatePivotTableRequest	CreatePivotTableRequest dto in request body.
	* @return PivotTableResponse
	*/

  public PivotTableResponse PutWorksheetPivotTable (String name, String sheetName, String storage, String folder, String sourceData, String destCellName, String tableName, Boolean useSameSource, CreatePivotTableRequest body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;sourceData={sourceData}&amp;destCellName={destCellName}&amp;tableName={tableName}&amp;useSameSource={useSameSource}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(sourceData!=null)
	  resourcePath = resourcePath.replace("{" + "sourceData" + "}" , apiInvoker.toPathValue(sourceData));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sourceData.*?(?=&|\\?|$)", "");
    if(destCellName!=null)
	  resourcePath = resourcePath.replace("{" + "destCellName" + "}" , apiInvoker.toPathValue(destCellName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]destCellName.*?(?=&|\\?|$)", "");
    if(tableName!=null)
	  resourcePath = resourcePath.replace("{" + "tableName" + "}" , apiInvoker.toPathValue(tableName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]tableName.*?(?=&|\\?|$)", "");
    if(useSameSource!=null)
	  resourcePath = resourcePath.replace("{" + "useSameSource" + "}" , apiInvoker.toPathValue(useSameSource));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]useSameSource.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (PivotTableResponse) ApiInvoker.deserialize(response, "", PivotTableResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteDocumentProperties
	* Delete all custom document properties and clean built-in ones.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return CellsDocumentPropertiesResponse
	*/

  public CellsDocumentPropertiesResponse DeleteDocumentProperties (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (CellsDocumentPropertiesResponse) ApiInvoker.deserialize(response, "", CellsDocumentPropertiesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteDocumentProperty
	* Delete document property.
	* @param name	String	The document name.
	* @param propertyName	String	The property name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return CellsDocumentPropertiesResponse
	*/

  public CellsDocumentPropertiesResponse DeleteDocumentProperty (String name, String propertyName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || propertyName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(propertyName!=null)
	  resourcePath = resourcePath.replace("{" + "propertyName" + "}" , apiInvoker.toPathValue(propertyName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]propertyName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (CellsDocumentPropertiesResponse) ApiInvoker.deserialize(response, "", CellsDocumentPropertiesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDocumentProperties
	* Read document properties.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return CellsDocumentPropertiesResponse
	*/

  public CellsDocumentPropertiesResponse GetDocumentProperties (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (CellsDocumentPropertiesResponse) ApiInvoker.deserialize(response, "", CellsDocumentPropertiesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetDocumentProperty
	* Read document property by name.
	* @param name	String	The document name.
	* @param propertyName	String	The property name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return CellsDocumentPropertyResponse
	*/

  public CellsDocumentPropertyResponse GetDocumentProperty (String name, String propertyName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || propertyName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(propertyName!=null)
	  resourcePath = resourcePath.replace("{" + "propertyName" + "}" , apiInvoker.toPathValue(propertyName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]propertyName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (CellsDocumentPropertyResponse) ApiInvoker.deserialize(response, "", CellsDocumentPropertyResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutDocumentProperty
	* Set/create document property.
	* @param name	String	The document name.
	* @param propertyName	String	The property name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	CellsDocumentProperty	with new property value.
	* @return CellsDocumentPropertyResponse
	*/

  public CellsDocumentPropertyResponse PutDocumentProperty (String name, String propertyName, String storage, String folder, CellsDocumentProperty body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || propertyName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(propertyName!=null)
	  resourcePath = resourcePath.replace("{" + "propertyName" + "}" , apiInvoker.toPathValue(propertyName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]propertyName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (CellsDocumentPropertyResponse) ApiInvoker.deserialize(response, "", CellsDocumentPropertyResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostDocumentSaveAs
	* Convert document and save result to storage.
	* @param name	String	The document name.
	* @param newfilename	String	The new file name.
	* @param isAutoFitRows	Boolean	Autofit rows.
	* @param isAutoFitColumns	Boolean	Autofit columns.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	SaveOptions	Save options.
	* @return SaveResponse
	*/

  public SaveResponse PostDocumentSaveAs (String name, String newfilename, Boolean isAutoFitRows, Boolean isAutoFitColumns, String storage, String folder, SaveOptions body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/SaveAs/?appSid={appSid}&amp;newfilename={newfilename}&amp;isAutoFitRows={isAutoFitRows}&amp;isAutoFitColumns={isAutoFitColumns}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(newfilename!=null)
	  resourcePath = resourcePath.replace("{" + "newfilename" + "}" , apiInvoker.toPathValue(newfilename));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newfilename.*?(?=&|\\?|$)", "");
    if(isAutoFitRows!=null)
	  resourcePath = resourcePath.replace("{" + "isAutoFitRows" + "}" , apiInvoker.toPathValue(isAutoFitRows));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]isAutoFitRows.*?(?=&|\\?|$)", "");
    if(isAutoFitColumns!=null)
	  resourcePath = resourcePath.replace("{" + "isAutoFitColumns" + "}" , apiInvoker.toPathValue(isAutoFitColumns));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]isAutoFitColumns.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaveResponse) ApiInvoker.deserialize(response, "", SaveResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteDecryptDocument
	* Decrypt document.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	WorkbookEncryptionRequest	Encryption settings, only password can be specified.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteDecryptDocument (String name, String storage, String folder, WorkbookEncryptionRequest body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/encryption/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteDocumentUnProtectFromChanges
	* Unprotect document from changes.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteDocumentUnProtectFromChanges (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/writeProtection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteUnProtectDocument
	* Unprotect document.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	WorkbookProtectionRequest	Protection settings, only password can be specified.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteUnProtectDocument (String name, String storage, String folder, WorkbookProtectionRequest body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkBook
	* Read workbook info or export.
	* @param name	String	The document name.
	* @param password	String	The document password.
	* @param isAutoFit	Boolean	Set document rows to be autofit.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorkBook (String name, String password, Boolean isAutoFit, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/?appSid={appSid}&amp;password={password}&amp;isAutoFit={isAutoFit}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(password!=null)
	  resourcePath = resourcePath.replace("{" + "password" + "}" , apiInvoker.toPathValue(password));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]password.*?(?=&|\\?|$)", "");
    if(isAutoFit!=null)
	  resourcePath = resourcePath.replace("{" + "isAutoFit" + "}" , apiInvoker.toPathValue(isAutoFit));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]isAutoFit.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkBookDefaultStyle
	* Read workbook default style info.
	* @param name	String	The workbook name.
	* @param storage	String	The document storage.
	* @param folder	String	The document's folder.
	* @return StyleResponse
	*/

  public StyleResponse GetWorkBookDefaultStyle (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/defaultstyle/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (StyleResponse) ApiInvoker.deserialize(response, "", StyleResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkBookName
	* Read workbook's name.
	* @param name	String	The workbook name.
	* @param nameName	String	The name.
	* @param storage	String	The document storage.
	* @param folder	String	The workbook folder.
	* @return NameResponse
	*/

  public NameResponse GetWorkBookName (String name, String nameName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || nameName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/names/{nameName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(nameName!=null)
	  resourcePath = resourcePath.replace("{" + "nameName" + "}" , apiInvoker.toPathValue(nameName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]nameName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (NameResponse) ApiInvoker.deserialize(response, "", NameResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkBookNames
	* Read workbook's names.
	* @param name	String	The workbook name.
	* @param storage	String	The document storage.
	* @param folder	String	The workbook folder.
	* @return NamesResponse
	*/

  public NamesResponse GetWorkBookNames (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/names/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (NamesResponse) ApiInvoker.deserialize(response, "", NamesResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkBookTextItems
	* Read workbook's text items.
	* @param name	String	The workbook name.
	* @param storage	String	The document storage.
	* @param folder	String	The workbook folder.
	* @return TextItemsResponse
	*/

  public TextItemsResponse GetWorkBookTextItems (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/textItems/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (TextItemsResponse) ApiInvoker.deserialize(response, "", TextItemsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkBookWithFormat
	* EExport workbook to some format.
	* @param name	String	The document name.
	* @param format	String	The conversion format.
	* @param password	String	The document password.
	* @param isAutoFit	Boolean	Set document rows to be autofit.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param outPath	String	Path to save result
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorkBookWithFormat (String name, String format, String password, Boolean isAutoFit, String storage, String folder, String outPath) {
    Object postBody = null;
    // verify required params are set
    if(name == null || format == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/?appSid={appSid}&amp;toFormat={toFormat}&amp;password={password}&amp;isAutoFit={isAutoFit}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(password!=null)
	  resourcePath = resourcePath.replace("{" + "password" + "}" , apiInvoker.toPathValue(password));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]password.*?(?=&|\\?|$)", "");
    if(isAutoFit!=null)
	  resourcePath = resourcePath.replace("{" + "isAutoFit" + "}" , apiInvoker.toPathValue(isAutoFit));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]isAutoFit.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostAutofitWorkbookRows
	* Autofit workbook rows.
	* @param name	String	Document name.
	* @param startRow	Integer	Start row.
	* @param endRow	Integer	End row.
	* @param onlyAuto	Boolean	Only auto.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @param body	AutoFitterOptions	Auto Fitter Options.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostAutofitWorkbookRows (String name, Integer startRow, Integer endRow, Boolean onlyAuto, String storage, String folder, AutoFitterOptions body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/autofitrows/?appSid={appSid}&amp;startRow={startRow}&amp;endRow={endRow}&amp;onlyAuto={onlyAuto}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(startRow!=null)
	  resourcePath = resourcePath.replace("{" + "startRow" + "}" , apiInvoker.toPathValue(startRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startRow.*?(?=&|\\?|$)", "");
    if(endRow!=null)
	  resourcePath = resourcePath.replace("{" + "endRow" + "}" , apiInvoker.toPathValue(endRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]endRow.*?(?=&|\\?|$)", "");
    if(onlyAuto!=null)
	  resourcePath = resourcePath.replace("{" + "onlyAuto" + "}" , apiInvoker.toPathValue(onlyAuto));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]onlyAuto.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostEncryptDocument
	* Encript document.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	WorkbookEncryptionRequest	Encryption parameters.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostEncryptDocument (String name, String storage, String folder, WorkbookEncryptionRequest body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/encryption/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostImportData
	* Import data to workbook.
	* @param name	String	The workbook name.
	* @param storage	String	The workbook storage.
	* @param folder	String	The workbook folder.
	* @param body	ImportOption	The import option.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostImportData (String name, String storage, String folder, ImportOption body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/importdata/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostProtectDocument
	* Protect document.
	* @param name	String	The document name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	WorkbookProtectionRequest	The protection settings.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostProtectDocument (String name, String storage, String folder, WorkbookProtectionRequest body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkbookCalculateFormula
	* Calculate all formulas in workbook.
	* @param name	String	Document name.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostWorkbookCalculateFormula (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/calculateformula/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkbookGetSmartMarkerResult
	* Smart marker processing result.
	* @param name	String	The workbook name.
	* @param xmlFile	String	The xml file full path, if empty the data is read from request body.
	* @param storage	String	The document storage.
	* @param folder	String	The workbook folder full path.
	* @param outPath	String	Path to save result
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PostWorkbookGetSmartMarkerResult (String name, String xmlFile, String storage, String folder, String outPath, File file) {
    Object postBody = null;
    // verify required params are set
    if(name == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/smartmarker/?appSid={appSid}&amp;xmlFile={xmlFile}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(xmlFile!=null)
	  resourcePath = resourcePath.replace("{" + "xmlFile" + "}" , apiInvoker.toPathValue(xmlFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]xmlFile.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkbooksMerge
	* Merge workbooks.
	* @param name	String	Workbook name.
	* @param mergeWith	String	The workbook to merge with.
	* @param storage	String	The document storage.
	* @param folder	String	Source workbook folder.
	* @return WorkbookResponse
	*/

  public WorkbookResponse PostWorkbooksMerge (String name, String mergeWith, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || mergeWith == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/merge/?mergeWith={mergeWith}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(mergeWith!=null)
	  resourcePath = resourcePath.replace("{" + "mergeWith" + "}" , apiInvoker.toPathValue(mergeWith));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]mergeWith.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (WorkbookResponse) ApiInvoker.deserialize(response, "", WorkbookResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkbookSplit
	* Split workbook.
	* @param name	String	The workbook name.
	* @param format	String	Split format.
	* @param from	Integer	Start worksheet index.
	* @param to	Integer	End worksheet index.
	* @param horizontalResolution	Integer	Image horizontal resolution.
	* @param verticalResolution	Integer	Image vertical resolution.
	* @param storage	String	The workbook storage.
	* @param folder	String	The workbook folder.
	* @return SplitResultResponse
	*/

  public SplitResultResponse PostWorkbookSplit (String name, String format, Integer from, Integer to, Integer horizontalResolution, Integer verticalResolution, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/split/?appSid={appSid}&amp;toFormat={toFormat}&amp;from={from}&amp;to={to}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(from!=null)
	  resourcePath = resourcePath.replace("{" + "from" + "}" , apiInvoker.toPathValue(from));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]from.*?(?=&|\\?|$)", "");
    if(to!=null)
	  resourcePath = resourcePath.replace("{" + "to" + "}" , apiInvoker.toPathValue(to));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]to.*?(?=&|\\?|$)", "");
    if(horizontalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , apiInvoker.toPathValue(horizontalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]horizontalResolution.*?(?=&|\\?|$)", "");
    if(verticalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , apiInvoker.toPathValue(verticalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]verticalResolution.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SplitResultResponse) ApiInvoker.deserialize(response, "", SplitResultResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkbooksTextReplace
	* Replace text.
	* @param name	String	Document name.
	* @param oldValue	String	The old value.
	* @param newValue	String	The new value.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return WorkbookReplaceResponse
	*/

  public WorkbookReplaceResponse PostWorkbooksTextReplace (String name, String oldValue, String newValue, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || oldValue == null || newValue == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/replaceText/?oldValue={oldValue}&amp;newValue={newValue}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(oldValue!=null)
	  resourcePath = resourcePath.replace("{" + "oldValue" + "}" , apiInvoker.toPathValue(oldValue));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]oldValue.*?(?=&|\\?|$)", "");
    if(newValue!=null)
	  resourcePath = resourcePath.replace("{" + "newValue" + "}" , apiInvoker.toPathValue(newValue));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newValue.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (WorkbookReplaceResponse) ApiInvoker.deserialize(response, "", WorkbookReplaceResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkbooksTextSearch
	* Search text.
	* @param name	String	Document name.
	* @param text	String	Text sample.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return TextItemsResponse
	*/

  public TextItemsResponse PostWorkbooksTextSearch (String name, String text, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || text == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/findText/?text={text}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(text!=null)
	  resourcePath = resourcePath.replace("{" + "text" + "}" , apiInvoker.toPathValue(text));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]text.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (TextItemsResponse) ApiInvoker.deserialize(response, "", TextItemsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutConvertWorkBook
	* Convert workbook from request content to some format.
	* @param format	String	The format to convert.
	* @param password	String	The workbook password.
	* @param outPath	String	Path to save result
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PutConvertWorkBook (String format, String password, String outPath, File file, Object data) {
    Object postBody = null;
    // verify required params are set
    if(file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/convert/?appSid={appSid}&amp;toFormat={toFormat}&amp;password={password}&amp;outPath={outPath}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(password!=null)
	  resourcePath = resourcePath.replace("{" + "password" + "}" , apiInvoker.toPathValue(password));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]password.*?(?=&|\\?|$)", "");
    if(outPath!=null)
	  resourcePath = resourcePath.replace("{" + "outPath" + "}" , apiInvoker.toPathValue(outPath));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]outPath.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
      
      if(data!=null)
              mp.field("data", data, MediaType.MULTIPART_FORM_DATA_TYPE);
              
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutDocumentProtectFromChanges
	* Protect document from changes.
	* @param name	String	Document name.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @param body	PasswordRequest	Modification password.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PutDocumentProtectFromChanges (String name, String storage, String folder, PasswordRequest body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/writeProtection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorkbookCreate
	* Create new workbook using deferent methods.
	* @param name	String	The new document name.
	* @param templateFile	String	The template file, if the data not provided default workbook is created.
	* @param dataFile	String	Smart marker data file, if the data not provided the request content is checked for the data.
	* @param storage	String	The document storage.
	* @param folder	String	The new document folder.
	* @param file	File	
	* @return WorkbookResponse
	*/

  public WorkbookResponse PutWorkbookCreate (String name, String templateFile, String dataFile, String storage, String folder, File file) {
    Object postBody = null;
    // verify required params are set
    if(name == null  ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/?appSid={appSid}&amp;templateFile={templateFile}&amp;dataFile={dataFile}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(templateFile!=null)
	  resourcePath = resourcePath.replace("{" + "templateFile" + "}" , apiInvoker.toPathValue(templateFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]templateFile.*?(?=&|\\?|$)", "");
    if(dataFile!=null)
	  resourcePath = resourcePath.replace("{" + "dataFile" + "}" , apiInvoker.toPathValue(dataFile));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]dataFile.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
                    "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(file!=null) {   
        contentType = "multipart/form-data";
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (WorkbookResponse) ApiInvoker.deserialize(response, "", WorkbookResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteUnprotectWorksheet
	* Unprotect worksheet.<br>
	* This method will only work on JDK8+ because of JDK-7157360 bug - HttpURLConnection: HTTP method DELETE doesn't support<br>
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	Document folder.
	* @param body	ProtectSheetParameter	with protection settings. Only password is used here.
	* @return WorksheetResponse
	*/

  public WorksheetResponse DeleteUnprotectWorksheet (String name, String sheetName, String storage, String folder, ProtectSheetParameter body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (WorksheetResponse) ApiInvoker.deserialize(response, "", WorksheetResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheet
	* Delete worksheet.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return WorksheetsResponse
	*/

  public WorksheetsResponse DeleteWorksheet (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (WorksheetsResponse) ApiInvoker.deserialize(response, "", WorksheetsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorkSheetBackground
	* Set worksheet background image.
	* @param name	String	
	* @param sheetName	String	
	* @param folder	String	
	* @param storage	String	
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorkSheetBackground (String name, String sheetName, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/background/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorkSheetComment
	* Delete worksheet's cell comment.
	* @param name	String	The document name.
	* @param sheetName	String	The worksheet name.
	* @param cellName	String	The cell name
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorkSheetComment (String name, String sheetName, String cellName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || cellName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellName!=null)
	  resourcePath = resourcePath.replace("{" + "cellName" + "}" , apiInvoker.toPathValue(cellName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorksheetFreezePanes
	* Unfreeze panes
	* @param name	String	
	* @param sheetName	String	
	* @param row	Integer	
	* @param column	Integer	
	* @param freezedRows	Integer	
	* @param freezedColumns	Integer	
	* @param folder	String	
	* @param storage	String	
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse DeleteWorksheetFreezePanes (String name, String sheetName, Integer row, Integer column, Integer freezedRows, Integer freezedColumns, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || row == null || column == null || freezedRows == null || freezedColumns == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/freezepanes/?appSid={appSid}&amp;row={row}&amp;column={column}&amp;freezedRows={freezedRows}&amp;freezedColumns={freezedColumns}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(row!=null)
	  resourcePath = resourcePath.replace("{" + "row" + "}" , apiInvoker.toPathValue(row));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]row.*?(?=&|\\?|$)", "");
    if(column!=null)
	  resourcePath = resourcePath.replace("{" + "column" + "}" , apiInvoker.toPathValue(column));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]column.*?(?=&|\\?|$)", "");
    if(freezedRows!=null)
	  resourcePath = resourcePath.replace("{" + "freezedRows" + "}" , apiInvoker.toPathValue(freezedRows));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]freezedRows.*?(?=&|\\?|$)", "");
    if(freezedColumns!=null)
	  resourcePath = resourcePath.replace("{" + "freezedColumns" + "}" , apiInvoker.toPathValue(freezedColumns));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]freezedColumns.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheet
	* Read worksheet info or export.
	* @param name	String	The document name.
	* @param sheetName	String	The worksheet name.
	* @param verticalResolution	Integer	Image vertical resolution.
	* @param horizontalResolution	Integer	Image horizontal resolution.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorkSheet (String name, String sheetName, Integer verticalResolution, Integer horizontalResolution, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;verticalResolution={verticalResolution}&amp;horizontalResolution={horizontalResolution}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(verticalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , apiInvoker.toPathValue(verticalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]verticalResolution.*?(?=&|\\?|$)", "");
    if(horizontalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , apiInvoker.toPathValue(horizontalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]horizontalResolution.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetCalculateFormula
	* Calculate formula value.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param formula	String	The formula.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return SingleValueResponse
	*/

  public SingleValueResponse GetWorkSheetCalculateFormula (String name, String sheetName, String formula, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || formula == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/formulaResult/?formula={formula}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(formula!=null)
	  resourcePath = resourcePath.replace("{" + "formula" + "}" , apiInvoker.toPathValue(formula));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]formula.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (SingleValueResponse) ApiInvoker.deserialize(response, "", SingleValueResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetComment
	* Get worksheet comment by cell name.
	* @param name	String	The document name.
	* @param sheetName	String	The worksheet name.
	* @param cellName	String	The cell name
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return CommentResponse
	*/

  public CommentResponse GetWorkSheetComment (String name, String sheetName, String cellName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || cellName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellName!=null)
	  resourcePath = resourcePath.replace("{" + "cellName" + "}" , apiInvoker.toPathValue(cellName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (CommentResponse) ApiInvoker.deserialize(response, "", CommentResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetComments
	* Get worksheet comments.
	* @param name	String	Workbook name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return CommentsResponse
	*/

  public CommentsResponse GetWorkSheetComments (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/comments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (CommentsResponse) ApiInvoker.deserialize(response, "", CommentsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetMergedCell
	* Get worksheet merged cell by its index.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param mergedCellIndex	Integer	Merged cell index.
	* @param storage	String	The document storage.
	* @param folder	String	Document folder.
	* @return MergedCellResponse
	*/

  public MergedCellResponse GetWorkSheetMergedCell (String name, String sheetName, Integer mergedCellIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || mergedCellIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/mergedCells/{mergedCellIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(mergedCellIndex!=null)
	  resourcePath = resourcePath.replace("{" + "mergedCellIndex" + "}" , apiInvoker.toPathValue(mergedCellIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]mergedCellIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (MergedCellResponse) ApiInvoker.deserialize(response, "", MergedCellResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetMergedCells
	* Get worksheet merged cells.
	* @param name	String	Document name.
	* @param sheetName	String	The workseet name.
	* @param storage	String	The document storage.
	* @param folder	String	Document folder.
	* @return MergedCellsResponse
	*/

  public MergedCellsResponse GetWorkSheetMergedCells (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/mergedCells/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (MergedCellsResponse) ApiInvoker.deserialize(response, "", MergedCellsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheets
	* Read worksheets info.
	* @param name	String	Document name.
	* @param storage	String	The document storage.
	* @param folder	String	Document folder.
	* @return WorksheetsResponse
	*/

  public WorksheetsResponse GetWorkSheets (String name, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (WorksheetsResponse) ApiInvoker.deserialize(response, "", WorksheetsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetTextItems
	* Get worksheet text items.
	* @param name	String	Workbook name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	The workbook's folder.
	* @return TextItemsResponse
	*/

  public TextItemsResponse GetWorkSheetTextItems (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/textItems/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (TextItemsResponse) ApiInvoker.deserialize(response, "", TextItemsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetWithFormat
	* Read worksheet info or export.
	* @param name	String	The document name.
	* @param sheetName	String	The worksheet name.
	* @param format	String	Export format.
	* @param verticalResolution	Integer	Image vertical resolution.
	* @param horizontalResolution	Integer	Image horizontal resolution.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return ResponseMessage
	*/

  public ResponseMessage GetWorkSheetWithFormat (String name, String sheetName, String format, Integer verticalResolution, Integer horizontalResolution, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || format == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;toFormat={toFormat}&amp;verticalResolution={verticalResolution}&amp;horizontalResolution={horizontalResolution}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(format!=null)
	  resourcePath = resourcePath.replace("{" + "format" + "}" , apiInvoker.toPathValue(format));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]format.*?(?=&|\\?|$)", "");
    if(verticalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , apiInvoker.toPathValue(verticalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]verticalResolution.*?(?=&|\\?|$)", "");
    if(horizontalResolution!=null)
	  resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , apiInvoker.toPathValue(horizontalResolution));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]horizontalResolution.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ResponseMessage) ApiInvoker.deserialize(response, "", ResponseMessage.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostAutofitWorksheetRows
	* Autofit worksheet rows.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param startRow	Integer	Start row.
	* @param endRow	Integer	End row.
	* @param onlyAuto	Boolean	Only auto.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @param body	AutoFitterOptions	Auto Fitter Options.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostAutofitWorksheetRows (String name, String sheetName, Integer startRow, Integer endRow, Boolean onlyAuto, String storage, String folder, AutoFitterOptions body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/autofitrows/?appSid={appSid}&amp;startRow={startRow}&amp;endRow={endRow}&amp;onlyAuto={onlyAuto}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(startRow!=null)
	  resourcePath = resourcePath.replace("{" + "startRow" + "}" , apiInvoker.toPathValue(startRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]startRow.*?(?=&|\\?|$)", "");
    if(endRow!=null)
	  resourcePath = resourcePath.replace("{" + "endRow" + "}" , apiInvoker.toPathValue(endRow));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]endRow.*?(?=&|\\?|$)", "");
    if(onlyAuto!=null)
	  resourcePath = resourcePath.replace("{" + "onlyAuto" + "}" , apiInvoker.toPathValue(onlyAuto));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]onlyAuto.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostCopyWorksheet
	* Copy worksheet
	* @param name	String	
	* @param sheetName	String	
	* @param sourceSheet	String	
	* @param folder	String	
	* @param storage	String	
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostCopyWorksheet (String name, String sheetName, String sourceSheet, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || sourceSheet == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/copy/?sourceSheet={sourceSheet}&amp;appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(sourceSheet!=null)
	  resourcePath = resourcePath.replace("{" + "sourceSheet" + "}" , apiInvoker.toPathValue(sourceSheet));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sourceSheet.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostMoveWorksheet
	* Move worksheet.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	WorksheetMovingRequest	with moving parameters.
	* @return WorksheetsResponse
	*/

  public WorksheetsResponse PostMoveWorksheet (String name, String sheetName, String storage, String folder, WorksheetMovingRequest body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/position/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (WorksheetsResponse) ApiInvoker.deserialize(response, "", WorksheetsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostRenameWorksheet
	* Rename worksheet
	* @param name	String	
	* @param sheetName	String	
	* @param newname	String	
	* @param folder	String	
	* @param storage	String	
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostRenameWorksheet (String name, String sheetName, String newname, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || newname == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/rename/?newname={newname}&amp;appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(newname!=null)
	  resourcePath = resourcePath.replace("{" + "newname" + "}" , apiInvoker.toPathValue(newname));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newname.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostUpdateWorksheetProperty
	* Update worksheet property
	* @param name	String	
	* @param sheetName	String	
	* @param folder	String	
	* @param storage	String	
	* @param body	Worksheet	
	* @return WorksheetResponse
	*/

  public WorksheetResponse PostUpdateWorksheetProperty (String name, String sheetName, String folder, String storage, Worksheet body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (WorksheetResponse) ApiInvoker.deserialize(response, "", WorksheetResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkSheetComment
	* Update worksheet's cell comment.
	* @param name	String	The document name.
	* @param sheetName	String	The worksheet name.
	* @param cellName	String	The cell name
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	Comment	Comment object
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostWorkSheetComment (String name, String sheetName, String cellName, String storage, String folder, Comment body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || cellName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellName!=null)
	  resourcePath = resourcePath.replace("{" + "cellName" + "}" , apiInvoker.toPathValue(cellName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorksheetRangeSort
	* Sort worksheet range.
	* @param name	String	The workbook name.
	* @param sheetName	String	The worksheet name.
	* @param cellArea	String	The range to sort.
	* @param storage	String	The document storage.
	* @param folder	String	The workbook folder.
	* @param body	DataSorter	with sorting settings.
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PostWorksheetRangeSort (String name, String sheetName, String cellArea, String storage, String folder, DataSorter body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || cellArea == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/sort/?cellArea={cellArea}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellArea!=null)
	  resourcePath = resourcePath.replace("{" + "cellArea" + "}" , apiInvoker.toPathValue(cellArea));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellArea.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkSheetTextSearch
	* Search text.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param text	String	Text to search.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return TextItemsResponse
	*/

  public TextItemsResponse PostWorkSheetTextSearch (String name, String sheetName, String text, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || text == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/findText/?text={text}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(text!=null)
	  resourcePath = resourcePath.replace("{" + "text" + "}" , apiInvoker.toPathValue(text));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]text.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (TextItemsResponse) ApiInvoker.deserialize(response, "", TextItemsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorsheetTextReplace
	* Replace text.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param oldValue	String	The old text to replace.
	* @param newValue	String	The new text to replace by.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return WorksheetReplaceResponse
	*/

  public WorksheetReplaceResponse PostWorsheetTextReplace (String name, String sheetName, String oldValue, String newValue, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || oldValue == null || newValue == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/replaceText/?oldValue={oldValue}&amp;newValue={newValue}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(oldValue!=null)
	  resourcePath = resourcePath.replace("{" + "oldValue" + "}" , apiInvoker.toPathValue(oldValue));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]oldValue.*?(?=&|\\?|$)", "");
    if(newValue!=null)
	  resourcePath = resourcePath.replace("{" + "newValue" + "}" , apiInvoker.toPathValue(newValue));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]newValue.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (WorksheetReplaceResponse) ApiInvoker.deserialize(response, "", WorksheetReplaceResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutAddNewWorksheet
	* Add new worksheet.
	* @param name	String	Document name.
	* @param sheetName	String	The new sheet name.
	* @param storage	String	The document storage.
	* @param folder	String	Document folder.
	* @return WorksheetsResponse
	*/

  public WorksheetsResponse PutAddNewWorksheet (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (WorksheetsResponse) ApiInvoker.deserialize(response, "", WorksheetsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutChangeVisibilityWorksheet
	* Change worksheet visibility.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param isVisible	Boolean	New worksheet visibility value.
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @return WorksheetResponse
	*/

  public WorksheetResponse PutChangeVisibilityWorksheet (String name, String sheetName, Boolean isVisible, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || isVisible == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/visible/?isVisible={isVisible}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(isVisible!=null)
	  resourcePath = resourcePath.replace("{" + "isVisible" + "}" , apiInvoker.toPathValue(isVisible));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]isVisible.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (WorksheetResponse) ApiInvoker.deserialize(response, "", WorksheetResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutProtectWorksheet
	* Protect worksheet.
	* @param name	String	Document name.
	* @param sheetName	String	The worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	Document folder.
	* @param body	ProtectSheetParameter	with protection settings.
	* @return WorksheetResponse
	*/

  public WorksheetResponse PutProtectWorksheet (String name, String sheetName, String storage, String folder, ProtectSheetParameter body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (WorksheetResponse) ApiInvoker.deserialize(response, "", WorksheetResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorkSheetBackground
	* Set worksheet background image.
	* @param name	String	
	* @param sheetName	String	
	* @param folder	String	
	* @param storage	String	
	* @param file	File	
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PutWorkSheetBackground (String name, String sheetName, String folder, String storage, File file) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/background/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    postBody=file;

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorkSheetComment
	* Add worksheet's cell comment.
	* @param name	String	The document name.
	* @param sheetName	String	The worksheet name.
	* @param cellName	String	The cell name
	* @param storage	String	The document storage.
	* @param folder	String	The document folder.
	* @param body	Comment	Comment object
	* @return CommentResponse
	*/

  public CommentResponse PutWorkSheetComment (String name, String sheetName, String cellName, String storage, String folder, Comment body) {
    Object postBody = body;
    // verify required params are set
    if(name == null || sheetName == null || cellName == null || body == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(cellName!=null)
	  resourcePath = resourcePath.replace("{" + "cellName" + "}" , apiInvoker.toPathValue(cellName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]cellName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (CommentResponse) ApiInvoker.deserialize(response, "", CommentResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorksheetFreezePanes
	* Set freeze panes
	* @param name	String	
	* @param sheetName	String	
	* @param row	Integer	
	* @param column	Integer	
	* @param freezedRows	Integer	
	* @param freezedColumns	Integer	
	* @param folder	String	
	* @param storage	String	
	* @return SaaSposeResponse
	*/

  public SaaSposeResponse PutWorksheetFreezePanes (String name, String sheetName, Integer row, Integer column, Integer freezedRows, Integer freezedColumns, String folder, String storage) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || row == null || column == null || freezedRows == null || freezedColumns == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/freezepanes/?appSid={appSid}&amp;row={row}&amp;column={column}&amp;freezedRows={freezedRows}&amp;freezedColumns={freezedColumns}&amp;folder={folder}&amp;storage={storage}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(row!=null)
	  resourcePath = resourcePath.replace("{" + "row" + "}" , apiInvoker.toPathValue(row));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]row.*?(?=&|\\?|$)", "");
    if(column!=null)
	  resourcePath = resourcePath.replace("{" + "column" + "}" , apiInvoker.toPathValue(column));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]column.*?(?=&|\\?|$)", "");
    if(freezedRows!=null)
	  resourcePath = resourcePath.replace("{" + "freezedRows" + "}" , apiInvoker.toPathValue(freezedRows));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]freezedRows.*?(?=&|\\?|$)", "");
    if(freezedColumns!=null)
	  resourcePath = resourcePath.replace("{" + "freezedColumns" + "}" , apiInvoker.toPathValue(freezedColumns));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]freezedColumns.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (SaaSposeResponse) ApiInvoker.deserialize(response, "", SaaSposeResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* DeleteWorkSheetValidation
	* Delete worksheet validation by index.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param validationIndex	Integer	The validation index.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return ValidationResponse
	*/

  public ValidationResponse DeleteWorkSheetValidation (String name, String sheetName, Integer validationIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || validationIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(validationIndex!=null)
	  resourcePath = resourcePath.replace("{" + "validationIndex" + "}" , apiInvoker.toPathValue(validationIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]validationIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (ValidationResponse) ApiInvoker.deserialize(response, "", ValidationResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetValidation
	* Get worksheet validation by index.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param validationIndex	Integer	The validation index.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @return ValidationResponse
	*/

  public ValidationResponse GetWorkSheetValidation (String name, String sheetName, Integer validationIndex, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || validationIndex == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(validationIndex!=null)
	  resourcePath = resourcePath.replace("{" + "validationIndex" + "}" , apiInvoker.toPathValue(validationIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]validationIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ValidationResponse) ApiInvoker.deserialize(response, "", ValidationResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* GetWorkSheetValidations
	* Get worksheet validations.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param storage	String	The document storage.
	* @param folder	String	Document folder.
	* @return ValidationsResponse
	*/

  public ValidationsResponse GetWorkSheetValidations (String name, String sheetName, String storage, String folder) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/validations/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (ValidationsResponse) ApiInvoker.deserialize(response, "", ValidationsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PostWorkSheetValidation
	* Update worksheet validation by index.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param validationIndex	Integer	The validation index.
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @param file	File	
	* @return ValidationResponse
	*/

  public ValidationResponse PostWorkSheetValidation (String name, String sheetName, Integer validationIndex, String storage, String folder, File file) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || validationIndex == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(validationIndex!=null)
	  resourcePath = resourcePath.replace("{" + "validationIndex" + "}" , apiInvoker.toPathValue(validationIndex));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]validationIndex.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (ValidationResponse) ApiInvoker.deserialize(response, "", ValidationResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  /**
	* PutWorkSheetValidation
	* Add worksheet validation at index.
	* @param name	String	Document name.
	* @param sheetName	String	Worksheet name.
	* @param range	String	Specified cells area
	* @param storage	String	The document storage.
	* @param folder	String	Document's folder.
	* @param file	File	
	* @return ValidationResponse
	*/

  public ValidationResponse PutWorkSheetValidation (String name, String sheetName, String range, String storage, String folder, Object file) {
    Object postBody = null;
    // verify required params are set
    if(name == null || sheetName == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    
    postBody = file;
    
    // create path and map variables
    String resourcePath = "/cells/{name}/worksheets/{sheetName}/validations/?appSid={appSid}&amp;range={range}&amp;storage={storage}&amp;folder={folder}";
	resourcePath = resourcePath.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");
    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
	  resourcePath = resourcePath.replace("{" + "name" + "}" , apiInvoker.toPathValue(name));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]name.*?(?=&|\\?|$)", "");
    if(sheetName!=null)
	  resourcePath = resourcePath.replace("{" + "sheetName" + "}" , apiInvoker.toPathValue(sheetName));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]sheetName.*?(?=&|\\?|$)", "");
    if(range!=null)
	  resourcePath = resourcePath.replace("{" + "range" + "}" , apiInvoker.toPathValue(range));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]range.*?(?=&|\\?|$)", "");
    if(storage!=null)
	  resourcePath = resourcePath.replace("{" + "storage" + "}" , apiInvoker.toPathValue(storage));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]storage.*?(?=&|\\?|$)", "");
    if(folder!=null)
	  resourcePath = resourcePath.replace("{" + "folder" + "}" , apiInvoker.toPathValue(folder));
	  else
	  resourcePath = resourcePath.replaceAll("[&?]folder.*?(?=&|\\?|$)", "");
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

/*if(contentType.startsWith("multipart/form-data")) {      
      FormDataMultiPart mp = new FormDataMultiPart();
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
        postBody = mp;
    }*/
try {
		response = apiInvoker.invokeAPI(basePath, resourcePath, "PUT", queryParams, postBody, headerParams, formParams, contentType);
		return (ValidationResponse) ApiInvoker.deserialize(response, "", ValidationResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  }

