package com.aspose.storage.api;

import com.aspose.client.ApiException;
import com.aspose.client.ApiInvoker;
import com.aspose.client.ApiInvokerResponse;

import com.aspose.storage.model.DiscUsageResponse;
import com.aspose.storage.model.ResponseMessage;
import com.aspose.storage.model.RemoveFolderResponse;
import com.aspose.storage.model.FileExistResponse;
import com.aspose.storage.model.MoveFolderResponse;
import com.aspose.storage.model.StorageExistResponse;
import com.aspose.storage.model.RemoveFileResponse;
import com.aspose.storage.model.FileVersionsResponse;
import com.aspose.storage.model.MoveFileResponse;
import com.sun.jersey.multipart.FormDataMultiPart;

import javax.ws.rs.core.MediaType;

import java.io.File;
import java.util.*;

public class StorageApi {
  String basePath = "http://api.aspose.com/v1.1";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();
  ApiInvokerResponse response = null;

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }
  
  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }
  
  public String getBasePath() {
    return basePath;
  }

  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* DeleteFile
	* Remove a specific file. Parameters: path - file path e.g. /file.ext, versionID - file's version, storage - user's storage name.
	* @param Path	String	
	* @param versionId	String	
	* @param storage	String	
	* @return RemoveFileResponse
	*/

  public RemoveFileResponse DeleteFile (String Path, String versionId, String storage) {
    Object postBody = null;
    // verify required params are set
    if(Path == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/file/{path}/?appSid={appSid}&amp;versionId={versionId}&amp;storage={storage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(Path!=null)
      queryParams.put("Path", String.valueOf(Path));
    if(versionId!=null)
      queryParams.put("versionId", String.valueOf(versionId));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (RemoveFileResponse) ApiInvoker.deserialize(response, "", RemoveFileResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* GetDiscUsage
	* Check the disk usage of the current account. Parameters: storage - user's storage name.
	* @param storage	String	
	* @return DiscUsageResponse
	*/

  public DiscUsageResponse GetDiscUsage (String storage) {
    Object postBody = null;
    // create path and map variables
    String path = "/storage/disc/?appSid={appSid}&amp;storage={storage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (DiscUsageResponse) ApiInvoker.deserialize(response, "", DiscUsageResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* GetDownload
	* Download a specific file. Parameters: path - file path e.g. /file.ext, versionID - file's version, storage - user's storage name.
	* @param Path	String	
	* @param versionId	String	
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetDownload (String Path, String versionId, String storage) {
    Object postBody = null;
    // verify required params are set
    if(Path == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/file/{path}/?appSid={appSid}&amp;versionId={versionId}&amp;storage={storage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(Path!=null)
      queryParams.put("Path", String.valueOf(Path));
    if(versionId!=null)
      queryParams.put("versionId", String.valueOf(versionId));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType);
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
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* GetIsExist
	* Check if a specific file or folder exists. Parameters: path - file or folder path e.g. /file.ext or /Folder1, versionID - file's version, storage - user's storage name.
	* @param Path	String	
	* @param versionId	String	
	* @param storage	String	
	* @return FileExistResponse
	*/

  public FileExistResponse GetIsExist (String Path, String versionId, String storage) {
    Object postBody = null;
    // verify required params are set
    if(Path == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/exist/{path}/?appSid={appSid}&amp;versionId={versionId}&amp;storage={storage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(Path!=null)
      queryParams.put("Path", String.valueOf(Path));
    if(versionId!=null)
      queryParams.put("versionId", String.valueOf(versionId));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (FileExistResponse) ApiInvoker.deserialize(response, "", FileExistResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* GetListFileVersions
	* Get the file's versions list. Parameters: path - file path e.g. /file.ext or /Folder1/file.ext, storage - user's storage name.
	* @param Path	String	
	* @param storage	String	
	* @return FileVersionsResponse
	*/

  public FileVersionsResponse GetListFileVersions (String Path, String storage) {
    Object postBody = null;
    // verify required params are set
    if(Path == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/version/{path}/?appSid={appSid}&amp;storage={storage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(Path!=null)
      queryParams.put("Path", String.valueOf(Path));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (FileVersionsResponse) ApiInvoker.deserialize(response, "", FileVersionsResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* PostMoveFile
	* Move a specific file.
	* @param src	String	source file path e.g. /file.ext
	* @param dest	String	
	* @param versionId	String	source file's version,
	* @param storage	String	user's source storage name
	* @param destStorage	String	user's destination storage name
	* @return MoveFileResponse
	*/

  public MoveFileResponse PostMoveFile (String src, String dest, String versionId, String storage, String destStorage) {
    Object postBody = null;
    // verify required params are set
    if(src == null || dest == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/file/{src}/?dest={dest}&amp;appSid={appSid}&amp;versionId={versionId}&amp;storage={storage}&amp;destStorage={destStorage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(src!=null)
      queryParams.put("src", String.valueOf(src));
    if(dest!=null)
      queryParams.put("dest", String.valueOf(dest));
    if(versionId!=null)
      queryParams.put("versionId", String.valueOf(versionId));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    if(destStorage!=null)
      queryParams.put("destStorage", String.valueOf(destStorage));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (MoveFileResponse) ApiInvoker.deserialize(response, "", MoveFileResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* PutCopy
	* Copy a specific file. Parameters: path - source file path e.g. /file.ext, versionID - source file's version, storage - user's source storage name, newdest - destination file path, destStorage - user's destination storage name.
	* @param Path	String	
	* @param newdest	String	
	* @param versionId	String	
	* @param storage	String	
	* @param destStorage	String	
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PutCopy (String Path, String newdest, String versionId, String storage, String destStorage, File file) {
    Object postBody = null;
    // verify required params are set
    if(Path == null || newdest == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/file/{path}/?appSid={appSid}&amp;newdest={newdest}&amp;versionId={versionId}&amp;storage={storage}&amp;destStorage={destStorage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(Path!=null)
      queryParams.put("Path", String.valueOf(Path));
    if(newdest!=null)
      queryParams.put("newdest", String.valueOf(newdest));
    if(versionId!=null)
      queryParams.put("versionId", String.valueOf(versionId));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    if(destStorage!=null)
      queryParams.put("destStorage", String.valueOf(destStorage));
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      hasFields = true;
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "PUT", queryParams, postBody, headerParams, formParams, contentType);
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
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* PutCreate
	* Upload a specific file. Parameters: path - source file path e.g. /file.ext, versionID - source file's version, storage - user's source storage name, newdest - destination file path, destStorage - user's destination storage name.
	* @param Path	String	
	* @param versionId	String	
	* @param storage	String	
	* @param file	File	
	* @return ResponseMessage
	*/

  public ResponseMessage PutCreate (String Path, String versionId, String storage, File file) {
    Object postBody = null;
    // verify required params are set
    if(Path == null || file == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/file/{path}/?appSid={appSid}&amp;versionId={versionId}&amp;storage={storage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(Path!=null)
      queryParams.put("Path", String.valueOf(Path));
    if(versionId!=null)
      queryParams.put("versionId", String.valueOf(versionId));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    String[] contentTypes = {
      "multipart/form-data"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      hasFields = true;
      mp.field("file", file, MediaType.MULTIPART_FORM_DATA_TYPE);
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "PUT", queryParams, postBody, headerParams, formParams, contentType);
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
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* DeleteFolder
	* Remove a specific folder. Parameters: path - folder path e.g. /Folder1, storage - user's storage name, recursive - is subfolders and files must be deleted for specified path.
	* @param Path	String	
	* @param storage	String	
	* @param recursive	Boolean	
	* @return RemoveFolderResponse
	*/

  public RemoveFolderResponse DeleteFolder (String Path, String storage, Boolean recursive) {
    Object postBody = null;
    // verify required params are set
    if(Path == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/folder/{path}/?appSid={appSid}&amp;storage={storage}&amp;recursive={recursive}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(Path!=null)
      queryParams.put("Path", String.valueOf(Path));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    if(recursive!=null)
      queryParams.put("recursive", String.valueOf(recursive));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "DELETE", queryParams, postBody, headerParams, formParams, contentType);
		return (RemoveFolderResponse) ApiInvoker.deserialize(response, "", RemoveFolderResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* GetListFiles
	* Get the file listing of a specific folder. Parametres: path - start with name of storage e.g. root folder '/'or some folder '/folder1/..', storage - user's storage name.
	* @param Path	String	
	* @param storage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage GetListFiles (String Path, String storage) {
    Object postBody = null;
    // create path and map variables
    String path = "/storage/folder/{path}/?appSid={appSid}&amp;storage={storage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(Path!=null)
      queryParams.put("Path", String.valueOf(Path));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType);
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
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* PostMoveFolder
	* Move a specific folder. Parameters: src - source folder path e.g. /Folder1, storage - user's source storage name, dest - destination folder path e.g. /Folder2, destStorage - user's destination storage name.
	* @param src	String	
	* @param dest	String	
	* @param storage	String	
	* @param destStorage	String	
	* @return MoveFolderResponse
	*/

  public MoveFolderResponse PostMoveFolder (String src, String dest, String storage, String destStorage) {
    Object postBody = null;
    // verify required params are set
    if(src == null || dest == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/folder/{src}/?dest={dest}&amp;appSid={appSid}&amp;storage={storage}&amp;destStorage={destStorage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(src!=null)
      queryParams.put("src", String.valueOf(src));
    if(dest!=null)
      queryParams.put("dest", String.valueOf(dest));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    if(destStorage!=null)
      queryParams.put("destStorage", String.valueOf(destStorage));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "POST", queryParams, postBody, headerParams, formParams, contentType);
		return (MoveFolderResponse) ApiInvoker.deserialize(response, "", MoveFolderResponse.class);
    } catch (ApiException ex) {
      if(ex.getCode() == 404) {
      	throw new ApiException(404, "");
      }
      else {
        throw ex;
      }
    }
  }
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* PutCopyFolder
	* Copy a folder. Parameters: path - source folder path e.g. /Folder1, storage - user's source storage name, newdest - destination folder path e.g. /Folder2, destStorage - user's destination storage name.
	* @param Path	String	
	* @param newdest	String	
	* @param storage	String	
	* @param destStorage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage PutCopyFolder (String Path, String newdest, String storage, String destStorage) {
    Object postBody = null;
    // verify required params are set
    if(Path == null || newdest == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/folder/{path}/?appSid={appSid}&amp;newdest={newdest}&amp;storage={storage}&amp;destStorage={destStorage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(Path!=null)
      queryParams.put("Path", String.valueOf(Path));
    if(newdest!=null)
      queryParams.put("newdest", String.valueOf(newdest));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    if(destStorage!=null)
      queryParams.put("destStorage", String.valueOf(destStorage));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "PUT", queryParams, postBody, headerParams, formParams, contentType);
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
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* PutCreateFolder
	* Create the folder. Parameters: path - source folder path e.g. /Folder1, storage - user's source storage name, newdest - destination folder path e.g. /Folder2, destStorage - user's destination storage name.
	* @param Path	String	
	* @param storage	String	
	* @param destStorage	String	
	* @return ResponseMessage
	*/

  public ResponseMessage PutCreateFolder (String Path, String storage, String destStorage) {
    Object postBody = null;
    // verify required params are set
    if(Path == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/folder/{path}/?appSid={appSid}&amp;storage={storage}&amp;destStorage={destStorage}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(Path!=null)
      queryParams.put("Path", String.valueOf(Path));
    if(storage!=null)
      queryParams.put("storage", String.valueOf(storage));
    if(destStorage!=null)
      queryParams.put("destStorage", String.valueOf(destStorage));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "PUT", queryParams, postBody, headerParams, formParams, contentType);
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
  //error info- code: 404 reason: "no project found" model: <none>
  /**
	* GetIsStorageExist
	* Check if a specific storage exists.
	* @param name	String	Storage name
	* @return StorageExistResponse
	*/

  public StorageExistResponse GetIsStorageExist (String name) {
    Object postBody = null;
    // verify required params are set
    if(name == null ) {
       throw new ApiException(400, "missing required params");
    }
    // create path and map variables
    String path = "/storage/{name}/exist/?appSid={appSid}".replaceAll("\\{format\\}","json");

    // query params
    Map<String, String> queryParams = new HashMap<String, String>();
    Map<String, String> headerParams = new HashMap<String, String>();
    Map<String, String> formParams = new HashMap<String, String>();

    if(name!=null)
      queryParams.put("name", String.valueOf(name));
    String[] contentTypes = {
      "application/json"};

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if(contentType.startsWith("multipart/form-data")) {
      boolean hasFields = false;
      FormDataMultiPart mp = new FormDataMultiPart();
      if(hasFields)
        postBody = mp;
    }
    try {
		response = apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType);
		return (StorageExistResponse) ApiInvoker.deserialize(response, "", StorageExistResponse.class);
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

