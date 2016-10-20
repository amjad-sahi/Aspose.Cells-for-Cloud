  using System;
  using System.Collections.Generic;
  using System.Text.RegularExpressions;
  using Com.Aspose.Cells;
  using Com.Aspose.Cells.Model;
  namespace Com.Aspose.Cells.Api {
    public class CellsApi {
      string basePath;
      private readonly ApiInvoker apiInvoker = ApiInvoker.GetInstance();

      public CellsApi(String apiKey, String appSid, String basePath)
      {
	    apiInvoker.apiKey = apiKey;
        apiInvoker.appSid = appSid;

        this.basePath = basePath;
      }

      public ApiInvoker getInvoker() {
        return apiInvoker;
      }

      // Sets the endpoint base url for the services being accessed
      public void setBasePath(string basePath) {
        this.basePath = basePath;
      }

      // Gets the endpoint base url for the services being accessed
      public String getBasePath() {
        return basePath;
      }

      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="columnIndex"></param>
      /// <param name="columns"></param>
      /// <param name="updateReference"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ColumnsResponse DeleteWorksheetColumns (string name, string sheetName, int? columnIndex, int? columns, bool? updateReference, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?columns={columns}&amp;updateReference={updateReference}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || columnIndex == null || columns == null || updateReference == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (columnIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])columnIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "columnIndex" + "}", apiInvoker.ToPathValue(columnIndex)); 
		}
        if (columns == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])columns=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "columns" + "}", apiInvoker.ToPathValue(columns)); 
		}
        if (updateReference == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])updateReference=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "updateReference" + "}", apiInvoker.ToPathValue(updateReference)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ColumnsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (ColumnsResponse) ApiInvoker.deserialize(response, typeof(ColumnsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ColumnsResponse) ApiInvoker.deserialize(response, typeof(ColumnsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="rowIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetRow (string name, string sheetName, int? rowIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || rowIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (rowIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rowIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rowIndex" + "}", apiInvoker.ToPathValue(rowIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="startrow"></param>
      /// <param name="totalRows"></param>
      /// <param name="updateReference"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetRows (string name, string sheetName, int? startrow, int? totalRows, bool? updateReference, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/?startrow={startrow}&amp;appSid={appSid}&amp;totalRows={totalRows}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || startrow == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (startrow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startrow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startrow" + "}", apiInvoker.ToPathValue(startrow)); 
		}
        if (totalRows == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalRows=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalRows" + "}", apiInvoker.ToPathValue(totalRows)); 
		}
        if (updateReference == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])updateReference=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "updateReference" + "}", apiInvoker.ToPathValue(updateReference)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellOrMethodName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorksheetCell (string name, string sheetName, string cellOrMethodName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellOrMethodName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellOrMethodName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellOrMethodName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellOrMethodName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellOrMethodName" + "}", apiInvoker.ToPathValue(cellOrMethodName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="offest"></param>
      /// <param name="count"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CellsResponse GetWorksheetCells (string name, string sheetName, int? offest, int? count, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/?appSid={appSid}&amp;offest={offest}&amp;count={count}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (offest == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])offest=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "offest" + "}", apiInvoker.ToPathValue(offest)); 
		}
        if (count == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])count=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "count" + "}", apiInvoker.ToPathValue(count)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CellsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (CellsResponse) ApiInvoker.deserialize(response, typeof(CellsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CellsResponse) ApiInvoker.deserialize(response, typeof(CellsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public StyleResponse GetWorksheetCellStyle (string name, string sheetName, string cellName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellName" + "}", apiInvoker.ToPathValue(cellName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(StyleResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (StyleResponse) ApiInvoker.deserialize(response, typeof(StyleResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (StyleResponse) ApiInvoker.deserialize(response, typeof(StyleResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="columnIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ColumnResponse GetWorksheetColumn (string name, string sheetName, int? columnIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || columnIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (columnIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])columnIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "columnIndex" + "}", apiInvoker.ToPathValue(columnIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ColumnResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ColumnResponse) ApiInvoker.deserialize(response, typeof(ColumnResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ColumnResponse) ApiInvoker.deserialize(response, typeof(ColumnResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ColumnsResponse GetWorksheetColumns (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ColumnsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ColumnsResponse) ApiInvoker.deserialize(response, typeof(ColumnsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ColumnsResponse) ApiInvoker.deserialize(response, typeof(ColumnsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="rowIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public RowResponse GetWorksheetRow (string name, string sheetName, int? rowIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || rowIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (rowIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rowIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rowIndex" + "}", apiInvoker.ToPathValue(rowIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(RowResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (RowResponse) ApiInvoker.deserialize(response, typeof(RowResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (RowResponse) ApiInvoker.deserialize(response, typeof(RowResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public RowsResponse GetWorksheetRows (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(RowsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (RowsResponse) ApiInvoker.deserialize(response, typeof(RowsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (RowsResponse) ApiInvoker.deserialize(response, typeof(RowsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="range"></param>
      /// <param name="startRow"></param>
      /// <param name="startColumn"></param>
      /// <param name="endRow"></param>
      /// <param name="endColumn"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostClearContents (string name, string sheetName, string range, int? startRow, int? startColumn, int? endRow, int? endColumn, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/clearcontents/?appSid={appSid}&amp;range={range}&amp;startRow={startRow}&amp;startColumn={startColumn}&amp;endRow={endRow}&amp;endColumn={endColumn}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (range == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])range=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "range" + "}", apiInvoker.ToPathValue(range)); 
		}
        if (startRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startRow" + "}", apiInvoker.ToPathValue(startRow)); 
		}
        if (startColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startColumn" + "}", apiInvoker.ToPathValue(startColumn)); 
		}
        if (endRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])endRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "endRow" + "}", apiInvoker.ToPathValue(endRow)); 
		}
        if (endColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])endColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "endColumn" + "}", apiInvoker.ToPathValue(endColumn)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="range"></param>
      /// <param name="startRow"></param>
      /// <param name="startColumn"></param>
      /// <param name="endRow"></param>
      /// <param name="endColumn"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostClearFormats (string name, string sheetName, string range, int? startRow, int? startColumn, int? endRow, int? endColumn, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/clearFormats/?appSid={appSid}&amp;range={range}&amp;startRow={startRow}&amp;startColumn={startColumn}&amp;endRow={endRow}&amp;endColumn={endColumn}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (range == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])range=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "range" + "}", apiInvoker.ToPathValue(range)); 
		}
        if (startRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startRow" + "}", apiInvoker.ToPathValue(startRow)); 
		}
        if (startColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startColumn" + "}", apiInvoker.ToPathValue(startColumn)); 
		}
        if (endRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])endRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "endRow" + "}", apiInvoker.ToPathValue(endRow)); 
		}
        if (endColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])endColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "endColumn" + "}", apiInvoker.ToPathValue(endColumn)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="columnIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostColumnStyle (string name, string sheetName, int? columnIndex, string storage, string folder, Style body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || columnIndex == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (columnIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])columnIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "columnIndex" + "}", apiInvoker.ToPathValue(columnIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="destCellName"></param>
      /// <param name="sheetName"></param>
      /// <param name="worksheet"></param>
      /// <param name="cellname"></param>
      /// <param name="row"></param>
      /// <param name="column"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostCopyCellIntoCell (string name, string destCellName, string sheetName, string worksheet, string cellname, int? row, int? column, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{destCellName}/copy/?worksheet={worksheet}&amp;appSid={appSid}&amp;cellname={cellname}&amp;row={row}&amp;column={column}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || destCellName == null || sheetName == null || worksheet == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (destCellName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])destCellName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "destCellName" + "}", apiInvoker.ToPathValue(destCellName)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (worksheet == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])worksheet=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "worksheet" + "}", apiInvoker.ToPathValue(worksheet)); 
		}
        if (cellname == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellname=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellname" + "}", apiInvoker.ToPathValue(cellname)); 
		}
        if (row == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])row=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "row" + "}", apiInvoker.ToPathValue(row)); 
		}
        if (column == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])column=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "column" + "}", apiInvoker.ToPathValue(column)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="sourceColumnIndex"></param>
      /// <param name="destinationColumnIndex"></param>
      /// <param name="columnNumber"></param>
      /// <param name="worksheet"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostCopyWorksheetColumns (string name, string sheetName, int? sourceColumnIndex, int? destinationColumnIndex, int? columnNumber, string worksheet, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/copy/?sourceColumnIndex={sourceColumnIndex}&amp;destinationColumnIndex={destinationColumnIndex}&amp;columnNumber={columnNumber}&amp;appSid={appSid}&amp;worksheet={worksheet}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || sourceColumnIndex == null || destinationColumnIndex == null || columnNumber == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (sourceColumnIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sourceColumnIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sourceColumnIndex" + "}", apiInvoker.ToPathValue(sourceColumnIndex)); 
		}
        if (destinationColumnIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])destinationColumnIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "destinationColumnIndex" + "}", apiInvoker.ToPathValue(destinationColumnIndex)); 
		}
        if (columnNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])columnNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "columnNumber" + "}", apiInvoker.ToPathValue(columnNumber)); 
		}
        if (worksheet == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])worksheet=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "worksheet" + "}", apiInvoker.ToPathValue(worksheet)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="sourceRowIndex"></param>
      /// <param name="destinationRowIndex"></param>
      /// <param name="rowNumber"></param>
      /// <param name="worksheet"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostCopyWorksheetRows (string name, string sheetName, int? sourceRowIndex, int? destinationRowIndex, int? rowNumber, string worksheet, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/copy/?sourceRowIndex={sourceRowIndex}&amp;destinationRowIndex={destinationRowIndex}&amp;rowNumber={rowNumber}&amp;appSid={appSid}&amp;worksheet={worksheet}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || sourceRowIndex == null || destinationRowIndex == null || rowNumber == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (sourceRowIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sourceRowIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sourceRowIndex" + "}", apiInvoker.ToPathValue(sourceRowIndex)); 
		}
        if (destinationRowIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])destinationRowIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "destinationRowIndex" + "}", apiInvoker.ToPathValue(destinationRowIndex)); 
		}
        if (rowNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rowNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rowNumber" + "}", apiInvoker.ToPathValue(rowNumber)); 
		}
        if (worksheet == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])worksheet=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "worksheet" + "}", apiInvoker.ToPathValue(worksheet)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="firstIndex"></param>
      /// <param name="lastIndex"></param>
      /// <param name="hide"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostGroupWorksheetColumns (string name, string sheetName, int? firstIndex, int? lastIndex, bool? hide, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/group/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;hide={hide}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || firstIndex == null || lastIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (firstIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])firstIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "firstIndex" + "}", apiInvoker.ToPathValue(firstIndex)); 
		}
        if (lastIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])lastIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "lastIndex" + "}", apiInvoker.ToPathValue(lastIndex)); 
		}
        if (hide == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])hide=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "hide" + "}", apiInvoker.ToPathValue(hide)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="firstIndex"></param>
      /// <param name="lastIndex"></param>
      /// <param name="hide"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostGroupWorksheetRows (string name, string sheetName, int? firstIndex, int? lastIndex, bool? hide, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/group/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;hide={hide}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || firstIndex == null || lastIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (firstIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])firstIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "firstIndex" + "}", apiInvoker.ToPathValue(firstIndex)); 
		}
        if (lastIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])lastIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "lastIndex" + "}", apiInvoker.ToPathValue(lastIndex)); 
		}
        if (hide == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])hide=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "hide" + "}", apiInvoker.ToPathValue(hide)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="startColumn"></param>
      /// <param name="totalColumns"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostHideWorksheetColumns (string name, string sheetName, int? startColumn, int? totalColumns, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/hide/?startColumn={startColumn}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || startColumn == null || totalColumns == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (startColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startColumn" + "}", apiInvoker.ToPathValue(startColumn)); 
		}
        if (totalColumns == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalColumns=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalColumns" + "}", apiInvoker.ToPathValue(totalColumns)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="startrow"></param>
      /// <param name="totalRows"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostHideWorksheetRows (string name, string sheetName, int? startrow, int? totalRows, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/hide/?startrow={startrow}&amp;totalRows={totalRows}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || startrow == null || totalRows == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (startrow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startrow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startrow" + "}", apiInvoker.ToPathValue(startrow)); 
		}
        if (totalRows == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalRows=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalRows" + "}", apiInvoker.ToPathValue(totalRows)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="rowIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostRowStyle (string name, string sheetName, int? rowIndex, string storage, string folder, Style body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || rowIndex == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (rowIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rowIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rowIndex" + "}", apiInvoker.ToPathValue(rowIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public CellResponse PostSetCellHtmlString (string name, string sheetName, string cellName, string storage, string folder, byte[] file) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellName == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellName" + "}", apiInvoker.ToPathValue(cellName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(CellResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (CellResponse) ApiInvoker.deserialize(response, typeof(CellResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CellResponse) ApiInvoker.deserialize(response, typeof(CellResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellarea"></param>
      /// <param name="value"></param>
      /// <param name="type"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostSetCellRangeValue (string name, string sheetName, string cellarea, string value, string type, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/?cellarea={cellarea}&amp;value={value}&amp;type={type}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellarea == null || value == null || type == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellarea == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellarea=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellarea" + "}", apiInvoker.ToPathValue(cellarea)); 
		}
        if (value == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])value=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "value" + "}", apiInvoker.ToPathValue(value)); 
		}
        if (type == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])type=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "type" + "}", apiInvoker.ToPathValue(type)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="columnIndex"></param>
      /// <param name="width"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ColumnResponse PostSetWorksheetColumnWidth (string name, string sheetName, int? columnIndex, double? width, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?width={width}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || columnIndex == null || width == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (columnIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])columnIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "columnIndex" + "}", apiInvoker.ToPathValue(columnIndex)); 
		}
        if (width == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])width=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "width" + "}", apiInvoker.ToPathValue(width)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ColumnResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ColumnResponse) ApiInvoker.deserialize(response, typeof(ColumnResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ColumnResponse) ApiInvoker.deserialize(response, typeof(ColumnResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="firstIndex"></param>
      /// <param name="lastIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostUngroupWorksheetColumns (string name, string sheetName, int? firstIndex, int? lastIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/ungroup/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || firstIndex == null || lastIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (firstIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])firstIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "firstIndex" + "}", apiInvoker.ToPathValue(firstIndex)); 
		}
        if (lastIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])lastIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "lastIndex" + "}", apiInvoker.ToPathValue(lastIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="firstIndex"></param>
      /// <param name="lastIndex"></param>
      /// <param name="isAll"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostUngroupWorksheetRows (string name, string sheetName, int? firstIndex, int? lastIndex, bool? isAll, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/ungroup/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;isAll={isAll}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || firstIndex == null || lastIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (firstIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])firstIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "firstIndex" + "}", apiInvoker.ToPathValue(firstIndex)); 
		}
        if (lastIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])lastIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "lastIndex" + "}", apiInvoker.ToPathValue(lastIndex)); 
		}
        if (isAll == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])isAll=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "isAll" + "}", apiInvoker.ToPathValue(isAll)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="startcolumn"></param>
      /// <param name="totalColumns"></param>
      /// <param name="width"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostUnhideWorksheetColumns (string name, string sheetName, int? startcolumn, int? totalColumns, double? width, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/unhide/?startcolumn={startcolumn}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;width={width}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || startcolumn == null || totalColumns == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (startcolumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startcolumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startcolumn" + "}", apiInvoker.ToPathValue(startcolumn)); 
		}
        if (totalColumns == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalColumns=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalColumns" + "}", apiInvoker.ToPathValue(totalColumns)); 
		}
        if (width == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])width=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "width" + "}", apiInvoker.ToPathValue(width)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="startrow"></param>
      /// <param name="totalRows"></param>
      /// <param name="height"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostUnhideWorksheetRows (string name, string sheetName, int? startrow, int? totalRows, double? height, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/unhide/?startrow={startrow}&amp;totalRows={totalRows}&amp;appSid={appSid}&amp;height={height}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || startrow == null || totalRows == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (startrow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startrow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startrow" + "}", apiInvoker.ToPathValue(startrow)); 
		}
        if (totalRows == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalRows=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalRows" + "}", apiInvoker.ToPathValue(totalRows)); 
		}
        if (height == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])height=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "height" + "}", apiInvoker.ToPathValue(height)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public StyleResponse PostUpdateWorksheetCellStyle (string name, string sheetName, string cellName, string storage, string folder, Style body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellName" + "}", apiInvoker.ToPathValue(cellName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(StyleResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (StyleResponse) ApiInvoker.deserialize(response, typeof(StyleResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (StyleResponse) ApiInvoker.deserialize(response, typeof(StyleResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="range"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostUpdateWorksheetRangeStyle (string name, string sheetName, string range, string storage, string folder, Style body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/style/?range={range}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || range == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (range == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])range=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "range" + "}", apiInvoker.ToPathValue(range)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="rowIndex"></param>
      /// <param name="height"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public RowResponse PostUpdateWorksheetRow (string name, string sheetName, int? rowIndex, double? height, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;height={height}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || rowIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (rowIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rowIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rowIndex" + "}", apiInvoker.ToPathValue(rowIndex)); 
		}
        if (height == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])height=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "height" + "}", apiInvoker.ToPathValue(height)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(RowResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (RowResponse) ApiInvoker.deserialize(response, typeof(RowResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (RowResponse) ApiInvoker.deserialize(response, typeof(RowResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellName"></param>
      /// <param name="value"></param>
      /// <param name="type"></param>
      /// <param name="formula"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CellResponse PostWorksheetCellSetValue (string name, string sheetName, string cellName, string value, string type, string formula, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/?appSid={appSid}&amp;value={value}&amp;type={type}&amp;formula={formula}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellName" + "}", apiInvoker.ToPathValue(cellName)); 
		}
        if (value == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])value=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "value" + "}", apiInvoker.ToPathValue(value)); 
		}
        if (type == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])type=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "type" + "}", apiInvoker.ToPathValue(type)); 
		}
        if (formula == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])formula=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "formula" + "}", apiInvoker.ToPathValue(formula)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CellResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (CellResponse) ApiInvoker.deserialize(response, typeof(CellResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CellResponse) ApiInvoker.deserialize(response, typeof(CellResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="startRow"></param>
      /// <param name="startColumn"></param>
      /// <param name="totalRows"></param>
      /// <param name="totalColumns"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostWorksheetMerge (string name, string sheetName, int? startRow, int? startColumn, int? totalRows, int? totalColumns, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/merge/?startRow={startRow}&amp;startColumn={startColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || startRow == null || startColumn == null || totalRows == null || totalColumns == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (startRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startRow" + "}", apiInvoker.ToPathValue(startRow)); 
		}
        if (startColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startColumn" + "}", apiInvoker.ToPathValue(startColumn)); 
		}
        if (totalRows == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalRows=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalRows" + "}", apiInvoker.ToPathValue(totalRows)); 
		}
        if (totalColumns == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalColumns=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalColumns" + "}", apiInvoker.ToPathValue(totalColumns)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="startRow"></param>
      /// <param name="startColumn"></param>
      /// <param name="totalRows"></param>
      /// <param name="totalColumns"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostWorksheetUnmerge (string name, string sheetName, int? startRow, int? startColumn, int? totalRows, int? totalColumns, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/unmerge/?startRow={startRow}&amp;startColumn={startColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || startRow == null || startColumn == null || totalRows == null || totalColumns == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (startRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startRow" + "}", apiInvoker.ToPathValue(startRow)); 
		}
        if (startColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startColumn" + "}", apiInvoker.ToPathValue(startColumn)); 
		}
        if (totalRows == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalRows=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalRows" + "}", apiInvoker.ToPathValue(totalRows)); 
		}
        if (totalColumns == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalColumns=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalColumns" + "}", apiInvoker.ToPathValue(totalColumns)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="columnIndex"></param>
      /// <param name="columns"></param>
      /// <param name="updateReference"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ColumnsResponse PutInsertWorksheetColumns (string name, string sheetName, int? columnIndex, int? columns, bool? updateReference, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?columns={columns}&amp;appSid={appSid}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || columnIndex == null || columns == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (columnIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])columnIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "columnIndex" + "}", apiInvoker.ToPathValue(columnIndex)); 
		}
        if (columns == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])columns=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "columns" + "}", apiInvoker.ToPathValue(columns)); 
		}
        if (updateReference == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])updateReference=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "updateReference" + "}", apiInvoker.ToPathValue(updateReference)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ColumnsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (ColumnsResponse) ApiInvoker.deserialize(response, typeof(ColumnsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ColumnsResponse) ApiInvoker.deserialize(response, typeof(ColumnsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="rowIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public RowResponse PutInsertWorksheetRow (string name, string sheetName, int? rowIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || rowIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (rowIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rowIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rowIndex" + "}", apiInvoker.ToPathValue(rowIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(RowResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (RowResponse) ApiInvoker.deserialize(response, typeof(RowResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (RowResponse) ApiInvoker.deserialize(response, typeof(RowResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="startrow"></param>
      /// <param name="totalRows"></param>
      /// <param name="updateReference"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PutInsertWorksheetRows (string name, string sheetName, int? startrow, int? totalRows, bool? updateReference, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/cells/rows/?startrow={startrow}&amp;appSid={appSid}&amp;totalRows={totalRows}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || startrow == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (startrow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startrow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startrow" + "}", apiInvoker.ToPathValue(startrow)); 
		}
        if (totalRows == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalRows=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalRows" + "}", apiInvoker.ToPathValue(totalRows)); 
		}
        if (updateReference == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])updateReference=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "updateReference" + "}", apiInvoker.ToPathValue(updateReference)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="autoshapeNumber"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public AutoShapeResponse GetWorksheetAutoshape(string name, string sheetName, int? autoshapeNumber, string storage, string folder)
      {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || autoshapeNumber == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (autoshapeNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])autoshapeNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "autoshapeNumber" + "}", apiInvoker.ToPathValue(autoshapeNumber)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
            if (typeof(AutoShapeResponse) == typeof(ResponseMessage))
            {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (AutoShapeResponse)ApiInvoker.deserialize(response, typeof(AutoShapeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
                return (AutoShapeResponse)ApiInvoker.deserialize(response, typeof(AutoShapeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public AutoShapesResponse GetWorksheetAutoshapes (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/autoshapes/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(AutoShapesResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (AutoShapesResponse) ApiInvoker.deserialize(response, typeof(AutoShapesResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (AutoShapesResponse) ApiInvoker.deserialize(response, typeof(AutoShapesResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="autoshapeNumber"></param>
      /// <param name="format"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorksheetAutoshapeWithFormat (string name, string sheetName, int? autoshapeNumber, string format, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || autoshapeNumber == null || format == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (autoshapeNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])autoshapeNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "autoshapeNumber" + "}", apiInvoker.ToPathValue(autoshapeNumber)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pictureNumber"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public BarcodeResponseList GetExtractBarcodes (string name, string sheetName, int? pictureNumber, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/recognize/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pictureNumber == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pictureNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pictureNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pictureNumber" + "}", apiInvoker.ToPathValue(pictureNumber)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(BarcodeResponseList) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (BarcodeResponseList) ApiInvoker.deserialize(response, typeof(BarcodeResponseList));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (BarcodeResponseList) ApiInvoker.deserialize(response, typeof(BarcodeResponseList));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ChartAreaResponse GetChartArea (string name, string sheetName, int? chartIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ChartAreaResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ChartAreaResponse) ApiInvoker.deserialize(response, typeof(ChartAreaResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ChartAreaResponse) ApiInvoker.deserialize(response, typeof(ChartAreaResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public LineResponse GetChartAreaBorder (string name, string sheetName, int? chartIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/border/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(LineResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (LineResponse) ApiInvoker.deserialize(response, typeof(LineResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (LineResponse) ApiInvoker.deserialize(response, typeof(LineResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public FillFormatResponse GetChartAreaFillFormat (string name, string sheetName, int? chartIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/fillFormat/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(FillFormatResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (FillFormatResponse) ApiInvoker.deserialize(response, typeof(FillFormatResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (FillFormatResponse) ApiInvoker.deserialize(response, typeof(FillFormatResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetChartLegend (string name, string sheetName, int? chartIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetChartTitle (string name, string sheetName, int? chartIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetClearCharts (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ChartsResponse DeleteWorksheetDeleteChart (string name, string sheetName, int? chartIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ChartsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (ChartsResponse) ApiInvoker.deserialize(response, typeof(ChartsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ChartsResponse) ApiInvoker.deserialize(response, typeof(ChartsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartNumber"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorksheetChart (string name, string sheetName, int? chartNumber, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartNumber == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartNumber" + "}", apiInvoker.ToPathValue(chartNumber)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public LegendResponse GetWorksheetChartLegend (string name, string sheetName, int? chartIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(LegendResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (LegendResponse) ApiInvoker.deserialize(response, typeof(LegendResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (LegendResponse) ApiInvoker.deserialize(response, typeof(LegendResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ChartsResponse GetWorksheetCharts (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ChartsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ChartsResponse) ApiInvoker.deserialize(response, typeof(ChartsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ChartsResponse) ApiInvoker.deserialize(response, typeof(ChartsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartNumber"></param>
      /// <param name="format"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorksheetChartWithFormat (string name, string sheetName, int? chartNumber, string format, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartNumber == null || format == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartNumber" + "}", apiInvoker.ToPathValue(chartNumber)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public LegendResponse PostWorksheetChartLegend (string name, string sheetName, int? chartIndex, string storage, string folder, Legend body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(LegendResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (LegendResponse) ApiInvoker.deserialize(response, typeof(LegendResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (LegendResponse) ApiInvoker.deserialize(response, typeof(LegendResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public TitleResponse PostWorksheetChartTitle (string name, string sheetName, int? chartIndex, string storage, string folder, Title body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TitleResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (TitleResponse) ApiInvoker.deserialize(response, typeof(TitleResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (TitleResponse) ApiInvoker.deserialize(response, typeof(TitleResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartType"></param>
      /// <param name="upperLeftRow"></param>
      /// <param name="upperLeftColumn"></param>
      /// <param name="lowerRightRow"></param>
      /// <param name="lowerRightColumn"></param>
      /// <param name="area"></param>
      /// <param name="isVertical"></param>
      /// <param name="categoryData"></param>
      /// <param name="isAutoGetSerialName"></param>
      /// <param name="title"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ChartsResponse PutWorksheetAddChart (string name, string sheetName, string chartType, int? upperLeftRow, int? upperLeftColumn, int? lowerRightRow, int? lowerRightColumn, string area, bool? isVertical, string categoryData, bool? isAutoGetSerialName, string title, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/?chartType={chartType}&amp;appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;lowerRightRow={lowerRightRow}&amp;lowerRightColumn={lowerRightColumn}&amp;area={area}&amp;isVertical={isVertical}&amp;categoryData={categoryData}&amp;isAutoGetSerialName={isAutoGetSerialName}&amp;title={title}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartType == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartType == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartType=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartType" + "}", apiInvoker.ToPathValue(chartType)); 
		}
        if (upperLeftRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])upperLeftRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "upperLeftRow" + "}", apiInvoker.ToPathValue(upperLeftRow)); 
		}
        if (upperLeftColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])upperLeftColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "upperLeftColumn" + "}", apiInvoker.ToPathValue(upperLeftColumn)); 
		}
        if (lowerRightRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])lowerRightRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "lowerRightRow" + "}", apiInvoker.ToPathValue(lowerRightRow)); 
		}
        if (lowerRightColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])lowerRightColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "lowerRightColumn" + "}", apiInvoker.ToPathValue(lowerRightColumn)); 
		}
        if (area == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])area=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "area" + "}", apiInvoker.ToPathValue(area)); 
		}
        if (isVertical == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])isVertical=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "isVertical" + "}", apiInvoker.ToPathValue(isVertical)); 
		}
        if (categoryData == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])categoryData=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "categoryData" + "}", apiInvoker.ToPathValue(categoryData)); 
		}
        if (isAutoGetSerialName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])isAutoGetSerialName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "isAutoGetSerialName" + "}", apiInvoker.ToPathValue(isAutoGetSerialName)); 
		}
        if (title == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])title=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "title" + "}", apiInvoker.ToPathValue(title)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ChartsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (ChartsResponse) ApiInvoker.deserialize(response, typeof(ChartsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ChartsResponse) ApiInvoker.deserialize(response, typeof(ChartsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PutWorksheetChartLegend (string name, string sheetName, int? chartIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="chartIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public TitleResponse PutWorksheetChartTitle (string name, string sheetName, int? chartIndex, string storage, string folder, Title body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || chartIndex == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (chartIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])chartIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "chartIndex" + "}", apiInvoker.ToPathValue(chartIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TitleResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (TitleResponse) ApiInvoker.deserialize(response, typeof(TitleResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (TitleResponse) ApiInvoker.deserialize(response, typeof(TitleResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="hyperlinkIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorkSheetHyperlink (string name, string sheetName, int? hyperlinkIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || hyperlinkIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (hyperlinkIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])hyperlinkIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "hyperlinkIndex" + "}", apiInvoker.ToPathValue(hyperlinkIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorkSheetHyperlinks (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="hyperlinkIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public HyperlinkResponse GetWorkSheetHyperlink (string name, string sheetName, int? hyperlinkIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || hyperlinkIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (hyperlinkIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])hyperlinkIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "hyperlinkIndex" + "}", apiInvoker.ToPathValue(hyperlinkIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(HyperlinkResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (HyperlinkResponse) ApiInvoker.deserialize(response, typeof(HyperlinkResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (HyperlinkResponse) ApiInvoker.deserialize(response, typeof(HyperlinkResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public HyperlinksResponse GetWorkSheetHyperlinks (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(HyperlinksResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (HyperlinksResponse) ApiInvoker.deserialize(response, typeof(HyperlinksResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (HyperlinksResponse) ApiInvoker.deserialize(response, typeof(HyperlinksResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="hyperlinkIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public HyperlinkResponse PostWorkSheetHyperlink (string name, string sheetName, int? hyperlinkIndex, string storage, string folder, Hyperlink body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || hyperlinkIndex == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (hyperlinkIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])hyperlinkIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "hyperlinkIndex" + "}", apiInvoker.ToPathValue(hyperlinkIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(HyperlinkResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (HyperlinkResponse) ApiInvoker.deserialize(response, typeof(HyperlinkResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (HyperlinkResponse) ApiInvoker.deserialize(response, typeof(HyperlinkResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="firstRow"></param>
      /// <param name="firstColumn"></param>
      /// <param name="totalRows"></param>
      /// <param name="totalColumns"></param>
      /// <param name="address"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public HyperlinkResponse PutWorkSheetHyperlink (string name, string sheetName, int? firstRow, int? firstColumn, int? totalRows, int? totalColumns, string address, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;firstRow={firstRow}&amp;firstColumn={firstColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;address={address}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || firstRow == null || firstColumn == null || totalRows == null || totalColumns == null || address == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (firstRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])firstRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "firstRow" + "}", apiInvoker.ToPathValue(firstRow)); 
		}
        if (firstColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])firstColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "firstColumn" + "}", apiInvoker.ToPathValue(firstColumn)); 
		}
        if (totalRows == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalRows=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalRows" + "}", apiInvoker.ToPathValue(totalRows)); 
		}
        if (totalColumns == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])totalColumns=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "totalColumns" + "}", apiInvoker.ToPathValue(totalColumns)); 
		}
        if (address == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])address=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "address" + "}", apiInvoker.ToPathValue(address)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(HyperlinkResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (HyperlinkResponse) ApiInvoker.deserialize(response, typeof(HyperlinkResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (HyperlinkResponse) ApiInvoker.deserialize(response, typeof(HyperlinkResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="oleObjectIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetOleObject (string name, string sheetName, int? oleObjectIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || oleObjectIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (oleObjectIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])oleObjectIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "oleObjectIndex" + "}", apiInvoker.ToPathValue(oleObjectIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetOleObjects (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="objectNumber"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorksheetOleObject (string name, string sheetName, int? objectNumber, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || objectNumber == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (objectNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])objectNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "objectNumber" + "}", apiInvoker.ToPathValue(objectNumber)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public OleObjectsResponse GetWorksheetOleObjects (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(OleObjectsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (OleObjectsResponse) ApiInvoker.deserialize(response, typeof(OleObjectsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (OleObjectsResponse) ApiInvoker.deserialize(response, typeof(OleObjectsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="objectNumber"></param>
      /// <param name="format"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorksheetOleObjectWithFormat (string name, string sheetName, int? objectNumber, string format, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || objectNumber == null || format == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (objectNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])objectNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "objectNumber" + "}", apiInvoker.ToPathValue(objectNumber)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="oleObjectIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostUpdateWorksheetOleObject (string name, string sheetName, int? oleObjectIndex, string storage, string folder, OleObject body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || oleObjectIndex == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (oleObjectIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])oleObjectIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "oleObjectIndex" + "}", apiInvoker.ToPathValue(oleObjectIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="upperLeftRow"></param>
      /// <param name="upperLeftColumn"></param>
      /// <param name="height"></param>
      /// <param name="width"></param>
      /// <param name="oleFile"></param>
      /// <param name="imageFile"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public OleObjectResponse PutWorksheetOleObject (string name, string sheetName, int? upperLeftRow, int? upperLeftColumn, int? height, int? width, string oleFile, string imageFile, string storage, string folder, OleObject body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;height={height}&amp;width={width}&amp;oleFile={oleFile}&amp;imageFile={imageFile}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (upperLeftRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])upperLeftRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "upperLeftRow" + "}", apiInvoker.ToPathValue(upperLeftRow)); 
		}
        if (upperLeftColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])upperLeftColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "upperLeftColumn" + "}", apiInvoker.ToPathValue(upperLeftColumn)); 
		}
        if (height == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])height=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "height" + "}", apiInvoker.ToPathValue(height)); 
		}
        if (width == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])width=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "width" + "}", apiInvoker.ToPathValue(width)); 
		}
        if (oleFile == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])oleFile=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "oleFile" + "}", apiInvoker.ToPathValue(oleFile)); 
		}
        if (imageFile == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])imageFile=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "imageFile" + "}", apiInvoker.ToPathValue(imageFile)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(OleObjectResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (OleObjectResponse) ApiInvoker.deserialize(response, typeof(OleObjectResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (OleObjectResponse) ApiInvoker.deserialize(response, typeof(OleObjectResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pictureIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetPicture (string name, string sheetName, int? pictureIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pictureIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pictureIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pictureIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pictureIndex" + "}", apiInvoker.ToPathValue(pictureIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorkSheetPictures (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pictureNumber"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorksheetPicture (string name, string sheetName, int? pictureNumber, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pictureNumber == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pictureNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pictureNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pictureNumber" + "}", apiInvoker.ToPathValue(pictureNumber)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public PicturesResponse GetWorksheetPictures (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(PicturesResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (PicturesResponse) ApiInvoker.deserialize(response, typeof(PicturesResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (PicturesResponse) ApiInvoker.deserialize(response, typeof(PicturesResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pictureNumber"></param>
      /// <param name="format"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorksheetPictureWithFormat (string name, string sheetName, int? pictureNumber, string format, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pictureNumber == null || format == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pictureNumber == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pictureNumber=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pictureNumber" + "}", apiInvoker.ToPathValue(pictureNumber)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pictureIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public PictureResponse PostWorkSheetPicture (string name, string sheetName, int? pictureIndex, string storage, string folder, Picture body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pictureIndex == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pictureIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pictureIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pictureIndex" + "}", apiInvoker.ToPathValue(pictureIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(PictureResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (PictureResponse) ApiInvoker.deserialize(response, typeof(PictureResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (PictureResponse) ApiInvoker.deserialize(response, typeof(PictureResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="upperLeftRow"></param>
      /// <param name="upperLeftColumn"></param>
      /// <param name="lowerRightRow"></param>
      /// <param name="lowerRightColumn"></param>
      /// <param name="picturePath"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public PicturesResponse PutWorksheetAddPicture (string name, string sheetName, int? upperLeftRow, int? upperLeftColumn, int? lowerRightRow, int? lowerRightColumn, string picturePath, string storage, string folder, byte[] file) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;lowerRightRow={lowerRightRow}&amp;lowerRightColumn={lowerRightColumn}&amp;picturePath={picturePath}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (upperLeftRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])upperLeftRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "upperLeftRow" + "}", apiInvoker.ToPathValue(upperLeftRow)); 
		}
        if (upperLeftColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])upperLeftColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "upperLeftColumn" + "}", apiInvoker.ToPathValue(upperLeftColumn)); 
		}
        if (lowerRightRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])lowerRightRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "lowerRightRow" + "}", apiInvoker.ToPathValue(lowerRightRow)); 
		}
        if (lowerRightColumn == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])lowerRightColumn=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "lowerRightColumn" + "}", apiInvoker.ToPathValue(lowerRightColumn)); 
		}
        if (picturePath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])picturePath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "picturePath" + "}", apiInvoker.ToPathValue(picturePath)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(PicturesResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (PicturesResponse) ApiInvoker.deserialize(response, typeof(PicturesResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (PicturesResponse) ApiInvoker.deserialize(response, typeof(PicturesResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pivotTableIndex"></param>
      /// <param name="pivotFieldType"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse DeletePivotTableField (string name, string sheetName, int? pivotTableIndex, string pivotFieldType, string storage, string folder, PivotTableFieldRequest body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/?pivotFieldType={pivotFieldType}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pivotTableIndex == null || pivotFieldType == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pivotTableIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotTableIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotTableIndex" + "}", apiInvoker.ToPathValue(pivotTableIndex)); 
		}
        if (pivotFieldType == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotFieldType=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotFieldType" + "}", apiInvoker.ToPathValue(pivotFieldType)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pivotTableIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetPivotTable (string name, string sheetName, int? pivotTableIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pivotTableIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pivotTableIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotTableIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotTableIndex" + "}", apiInvoker.ToPathValue(pivotTableIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetPivotTables (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pivotTableIndex"></param>
      /// <param name="pivotFieldIndex"></param>
      /// <param name="pivotFieldType"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public PivotFieldResponse GetPivotTableField (string name, string sheetName, int? pivotTableIndex, int? pivotFieldIndex, string pivotFieldType, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/?pivotFieldIndex={pivotFieldIndex}&amp;pivotFieldType={pivotFieldType}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pivotTableIndex == null || pivotFieldIndex == null || pivotFieldType == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pivotTableIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotTableIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotTableIndex" + "}", apiInvoker.ToPathValue(pivotTableIndex)); 
		}
        if (pivotFieldIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotFieldIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotFieldIndex" + "}", apiInvoker.ToPathValue(pivotFieldIndex)); 
		}
        if (pivotFieldType == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotFieldType=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotFieldType" + "}", apiInvoker.ToPathValue(pivotFieldType)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(PivotFieldResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (PivotFieldResponse) ApiInvoker.deserialize(response, typeof(PivotFieldResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (PivotFieldResponse) ApiInvoker.deserialize(response, typeof(PivotFieldResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pivottableIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public PivotTableResponse GetWorksheetPivotTable (string name, string sheetName, int? pivottableIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivottableIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pivottableIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pivottableIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivottableIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivottableIndex" + "}", apiInvoker.ToPathValue(pivottableIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(PivotTableResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (PivotTableResponse) ApiInvoker.deserialize(response, typeof(PivotTableResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (PivotTableResponse) ApiInvoker.deserialize(response, typeof(PivotTableResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public PivotTablesResponse GetWorksheetPivotTables (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(PivotTablesResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (PivotTablesResponse) ApiInvoker.deserialize(response, typeof(PivotTablesResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (PivotTablesResponse) ApiInvoker.deserialize(response, typeof(PivotTablesResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pivotTableIndex"></param>
      /// <param name="column"></param>
      /// <param name="row"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostPivotTableCellStyle (string name, string sheetName, int? pivotTableIndex, int? column, int? row, string storage, string folder, Style body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Format/?column={column}&amp;row={row}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pivotTableIndex == null || column == null || row == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pivotTableIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotTableIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotTableIndex" + "}", apiInvoker.ToPathValue(pivotTableIndex)); 
		}
        if (column == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])column=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "column" + "}", apiInvoker.ToPathValue(column)); 
		}
        if (row == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])row=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "row" + "}", apiInvoker.ToPathValue(row)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pivotTableIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostPivotTableStyle (string name, string sheetName, int? pivotTableIndex, string storage, string folder, Style body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/FormatAll/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pivotTableIndex == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pivotTableIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotTableIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotTableIndex" + "}", apiInvoker.ToPathValue(pivotTableIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pivotTableIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostWorksheetPivotTableCalculate (string name, string sheetName, int? pivotTableIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Calculate/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pivotTableIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pivotTableIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotTableIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotTableIndex" + "}", apiInvoker.ToPathValue(pivotTableIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="pivotTableIndex"></param>
      /// <param name="pivotFieldType"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PutPivotTableField (string name, string sheetName, int? pivotTableIndex, string pivotFieldType, string storage, string folder, PivotTableFieldRequest body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/?pivotFieldType={pivotFieldType}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || pivotTableIndex == null || pivotFieldType == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (pivotTableIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotTableIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotTableIndex" + "}", apiInvoker.ToPathValue(pivotTableIndex)); 
		}
        if (pivotFieldType == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])pivotFieldType=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "pivotFieldType" + "}", apiInvoker.ToPathValue(pivotFieldType)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="sourceData"></param>
      /// <param name="destCellName"></param>
      /// <param name="tableName"></param>
      /// <param name="useSameSource"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public PivotTableResponse PutWorksheetPivotTable (string name, string sheetName, string storage, string folder, string sourceData, string destCellName, string tableName, bool? useSameSource, CreatePivotTableRequest body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;sourceData={sourceData}&amp;destCellName={destCellName}&amp;tableName={tableName}&amp;useSameSource={useSameSource}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (sourceData == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sourceData=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sourceData" + "}", apiInvoker.ToPathValue(sourceData)); 
		}
        if (destCellName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])destCellName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "destCellName" + "}", apiInvoker.ToPathValue(destCellName)); 
		}
        if (tableName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])tableName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "tableName" + "}", apiInvoker.ToPathValue(tableName)); 
		}
        if (useSameSource == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])useSameSource=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "useSameSource" + "}", apiInvoker.ToPathValue(useSameSource)); 
		}
        try {
          if (typeof(PivotTableResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (PivotTableResponse) ApiInvoker.deserialize(response, typeof(PivotTableResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (PivotTableResponse) ApiInvoker.deserialize(response, typeof(PivotTableResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CellsDocumentPropertiesResponse DeleteDocumentProperties (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CellsDocumentPropertiesResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (CellsDocumentPropertiesResponse) ApiInvoker.deserialize(response, typeof(CellsDocumentPropertiesResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CellsDocumentPropertiesResponse) ApiInvoker.deserialize(response, typeof(CellsDocumentPropertiesResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="propertyName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CellsDocumentPropertiesResponse DeleteDocumentProperty (string name, string propertyName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || propertyName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (propertyName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])propertyName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "propertyName" + "}", apiInvoker.ToPathValue(propertyName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CellsDocumentPropertiesResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (CellsDocumentPropertiesResponse) ApiInvoker.deserialize(response, typeof(CellsDocumentPropertiesResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CellsDocumentPropertiesResponse) ApiInvoker.deserialize(response, typeof(CellsDocumentPropertiesResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CellsDocumentPropertiesResponse GetDocumentProperties (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CellsDocumentPropertiesResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (CellsDocumentPropertiesResponse) ApiInvoker.deserialize(response, typeof(CellsDocumentPropertiesResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CellsDocumentPropertiesResponse) ApiInvoker.deserialize(response, typeof(CellsDocumentPropertiesResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="propertyName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CellsDocumentPropertyResponse GetDocumentProperty (string name, string propertyName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || propertyName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (propertyName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])propertyName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "propertyName" + "}", apiInvoker.ToPathValue(propertyName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CellsDocumentPropertyResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (CellsDocumentPropertyResponse) ApiInvoker.deserialize(response, typeof(CellsDocumentPropertyResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CellsDocumentPropertyResponse) ApiInvoker.deserialize(response, typeof(CellsDocumentPropertyResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="propertyName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public CellsDocumentPropertyResponse PutDocumentProperty (string name, string propertyName, string storage, string folder, CellsDocumentProperty body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || propertyName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (propertyName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])propertyName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "propertyName" + "}", apiInvoker.ToPathValue(propertyName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CellsDocumentPropertyResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (CellsDocumentPropertyResponse) ApiInvoker.deserialize(response, typeof(CellsDocumentPropertyResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (CellsDocumentPropertyResponse) ApiInvoker.deserialize(response, typeof(CellsDocumentPropertyResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="newfilename"></param>
      /// <param name="isAutoFitRows"></param>
      /// <param name="isAutoFitColumns"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaveResponse PostDocumentSaveAs (string name, string newfilename, bool? isAutoFitRows, bool? isAutoFitColumns, string storage, string folder, SaveOptions body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/SaveAs/?appSid={appSid}&amp;newfilename={newfilename}&amp;isAutoFitRows={isAutoFitRows}&amp;isAutoFitColumns={isAutoFitColumns}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (newfilename == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newfilename=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newfilename" + "}", apiInvoker.ToPathValue(newfilename)); 
		}
        if (isAutoFitRows == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])isAutoFitRows=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "isAutoFitRows" + "}", apiInvoker.ToPathValue(isAutoFitRows)); 
		}
        if (isAutoFitColumns == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])isAutoFitColumns=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "isAutoFitColumns" + "}", apiInvoker.ToPathValue(isAutoFitColumns)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaveResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaveResponse) ApiInvoker.deserialize(response, typeof(SaveResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaveResponse) ApiInvoker.deserialize(response, typeof(SaveResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteDecryptDocument (string name, string storage, string folder, WorkbookEncryptionRequest body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/encryption/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteDocumentUnProtectFromChanges (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/writeProtection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteUnProtectDocument (string name, string storage, string folder, WorkbookProtectionRequest body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="password"></param>
      /// <param name="isAutoFit"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorkBook (string name, string password, bool? isAutoFit, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/?appSid={appSid}&amp;password={password}&amp;isAutoFit={isAutoFit}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (password == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])password=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "password" + "}", apiInvoker.ToPathValue(password)); 
		}
        if (isAutoFit == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])isAutoFit=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "isAutoFit" + "}", apiInvoker.ToPathValue(isAutoFit)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public StyleResponse GetWorkBookDefaultStyle (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/defaultstyle/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(StyleResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (StyleResponse) ApiInvoker.deserialize(response, typeof(StyleResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (StyleResponse) ApiInvoker.deserialize(response, typeof(StyleResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="nameName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public NameResponse GetWorkBookName (string name, string nameName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/names/{nameName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || nameName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (nameName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])nameName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "nameName" + "}", apiInvoker.ToPathValue(nameName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(NameResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (NameResponse) ApiInvoker.deserialize(response, typeof(NameResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (NameResponse) ApiInvoker.deserialize(response, typeof(NameResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public NamesResponse GetWorkBookNames (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/names/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(NamesResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (NamesResponse) ApiInvoker.deserialize(response, typeof(NamesResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (NamesResponse) ApiInvoker.deserialize(response, typeof(NamesResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public WorkbookSettingsResponse GetWorkbookSettings (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/settings/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorkbookSettingsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (WorkbookSettingsResponse) ApiInvoker.deserialize(response, typeof(WorkbookSettingsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (WorkbookSettingsResponse) ApiInvoker.deserialize(response, typeof(WorkbookSettingsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public TextItemsResponse GetWorkBookTextItems (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/textItems/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TextItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (TextItemsResponse) ApiInvoker.deserialize(response, typeof(TextItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (TextItemsResponse) ApiInvoker.deserialize(response, typeof(TextItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="format"></param>
      /// <param name="password"></param>
      /// <param name="isAutoFit"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="outPath"></param>
      /// <returns></returns>
      public ResponseMessage GetWorkBookWithFormat (string name, string format, string password, bool? isAutoFit, string storage, string folder, string outPath) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/?appSid={appSid}&amp;toFormat={toFormat}&amp;password={password}&amp;isAutoFit={isAutoFit}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || format == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (password == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])password=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "password" + "}", apiInvoker.ToPathValue(password)); 
		}
        if (isAutoFit == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])isAutoFit=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "isAutoFit" + "}", apiInvoker.ToPathValue(isAutoFit)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="startRow"></param>
      /// <param name="endRow"></param>
      /// <param name="onlyAuto"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostAutofitWorkbookRows (string name, int? startRow, int? endRow, bool? onlyAuto, string storage, string folder, AutoFitterOptions body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/autofitrows/?appSid={appSid}&amp;startRow={startRow}&amp;endRow={endRow}&amp;onlyAuto={onlyAuto}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (startRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startRow" + "}", apiInvoker.ToPathValue(startRow)); 
		}
        if (endRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])endRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "endRow" + "}", apiInvoker.ToPathValue(endRow)); 
		}
        if (onlyAuto == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])onlyAuto=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "onlyAuto" + "}", apiInvoker.ToPathValue(onlyAuto)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostEncryptDocument (string name, string storage, string folder, WorkbookEncryptionRequest body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/encryption/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostImportData (string name, string storage, string folder, ImportOption body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/importdata/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostProtectDocument (string name, string storage, string folder, WorkbookProtectionRequest body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse PostWorkbookCalculateFormula (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/calculateformula/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="xmlFile"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PostWorkbookGetSmartMarkerResult (string name, string xmlFile, string storage, string folder, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/smartmarker/?appSid={appSid}&amp;xmlFile={xmlFile}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (xmlFile == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])xmlFile=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "xmlFile" + "}", apiInvoker.ToPathValue(xmlFile)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostWorkbookSettings (string name, string storage, string folder, WorkbookSettings body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/settings/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="mergeWith"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public WorkbookResponse PostWorkbooksMerge (string name, string mergeWith, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/merge/?mergeWith={mergeWith}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || mergeWith == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (mergeWith == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])mergeWith=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "mergeWith" + "}", apiInvoker.ToPathValue(mergeWith)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorkbookResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (WorkbookResponse) ApiInvoker.deserialize(response, typeof(WorkbookResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (WorkbookResponse) ApiInvoker.deserialize(response, typeof(WorkbookResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="format"></param>
      /// <param name="from"></param>
      /// <param name="to"></param>
      /// <param name="horizontalResolution"></param>
      /// <param name="verticalResolution"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SplitResultResponse PostWorkbookSplit (string name, string format, int? from, int? to, int? horizontalResolution, int? verticalResolution, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/split/?appSid={appSid}&amp;toFormat={toFormat}&amp;from={from}&amp;to={to}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (from == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])from=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "from" + "}", apiInvoker.ToPathValue(from)); 
		}
        if (to == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])to=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "to" + "}", apiInvoker.ToPathValue(to)); 
		}
        if (horizontalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])horizontalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "horizontalResolution" + "}", apiInvoker.ToPathValue(horizontalResolution)); 
		}
        if (verticalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])verticalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "verticalResolution" + "}", apiInvoker.ToPathValue(verticalResolution)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SplitResultResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SplitResultResponse) ApiInvoker.deserialize(response, typeof(SplitResultResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SplitResultResponse) ApiInvoker.deserialize(response, typeof(SplitResultResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="oldValue"></param>
      /// <param name="newValue"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public WorkbookReplaceResponse PostWorkbooksTextReplace (string name, string oldValue, string newValue, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/replaceText/?oldValue={oldValue}&amp;newValue={newValue}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || oldValue == null || newValue == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (oldValue == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])oldValue=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "oldValue" + "}", apiInvoker.ToPathValue(oldValue)); 
		}
        if (newValue == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newValue=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newValue" + "}", apiInvoker.ToPathValue(newValue)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorkbookReplaceResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (WorkbookReplaceResponse) ApiInvoker.deserialize(response, typeof(WorkbookReplaceResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (WorkbookReplaceResponse) ApiInvoker.deserialize(response, typeof(WorkbookReplaceResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="text"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public TextItemsResponse PostWorkbooksTextSearch (string name, string text, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/findText/?text={text}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || text == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (text == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])text=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "text" + "}", apiInvoker.ToPathValue(text)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TextItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (TextItemsResponse) ApiInvoker.deserialize(response, typeof(TextItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (TextItemsResponse) ApiInvoker.deserialize(response, typeof(TextItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="format"></param>
      /// <param name="password"></param>
      /// <param name="outPath"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ResponseMessage PutConvertWorkBook (string format, string password, string outPath, byte[] file) {
        // create path and map variables
        var ResourcePath = "/cells/convert/?appSid={appSid}&amp;toFormat={toFormat}&amp;password={password}&amp;outPath={outPath}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (password == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])password=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "password" + "}", apiInvoker.ToPathValue(password)); 
		}
        if (outPath == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])outPath=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "outPath" + "}", apiInvoker.ToPathValue(outPath)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PutDocumentProtectFromChanges (string name, string storage, string folder, PasswordRequest body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/writeProtection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="templateFile"></param>
      /// <param name="dataFile"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public WorkbookResponse PutWorkbookCreate (string name, string templateFile, string dataFile, string storage, string folder, byte[] file) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/?appSid={appSid}&amp;templateFile={templateFile}&amp;dataFile={dataFile}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (templateFile == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])templateFile=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "templateFile" + "}", apiInvoker.ToPathValue(templateFile)); 
		}
        if (dataFile == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])dataFile=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "dataFile" + "}", apiInvoker.ToPathValue(dataFile)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(WorkbookResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (WorkbookResponse) ApiInvoker.deserialize(response, typeof(WorkbookResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (WorkbookResponse) ApiInvoker.deserialize(response, typeof(WorkbookResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public WorksheetResponse DeleteUnprotectWorksheet (string name, string sheetName, string storage, string folder, ProtectSheetParameter body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorksheetResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (WorksheetResponse) ApiInvoker.deserialize(response, typeof(WorksheetResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, body, headerParams, formParams);
            if(response != null){
               return (WorksheetResponse) ApiInvoker.deserialize(response, typeof(WorksheetResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public WorksheetsResponse DeleteWorksheet (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorksheetsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (WorksheetsResponse) ApiInvoker.deserialize(response, typeof(WorksheetsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (WorksheetsResponse) ApiInvoker.deserialize(response, typeof(WorksheetsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorkSheetBackground (string name, string sheetName, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/background/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorkSheetComment (string name, string sheetName, string cellName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellName" + "}", apiInvoker.ToPathValue(cellName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="row"></param>
      /// <param name="column"></param>
      /// <param name="freezedRows"></param>
      /// <param name="freezedColumns"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public SaaSposeResponse DeleteWorksheetFreezePanes (string name, string sheetName, int? row, int? column, int? freezedRows, int? freezedColumns, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/freezepanes/?appSid={appSid}&amp;row={row}&amp;column={column}&amp;freezedRows={freezedRows}&amp;freezedColumns={freezedColumns}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || row == null || column == null || freezedRows == null || freezedColumns == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (row == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])row=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "row" + "}", apiInvoker.ToPathValue(row)); 
		}
        if (column == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])column=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "column" + "}", apiInvoker.ToPathValue(column)); 
		}
        if (freezedRows == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])freezedRows=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "freezedRows" + "}", apiInvoker.ToPathValue(freezedRows)); 
		}
        if (freezedColumns == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])freezedColumns=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "freezedColumns" + "}", apiInvoker.ToPathValue(freezedColumns)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="verticalResolution"></param>
      /// <param name="horizontalResolution"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorkSheet (string name, string sheetName, int? verticalResolution, int? horizontalResolution, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;verticalResolution={verticalResolution}&amp;horizontalResolution={horizontalResolution}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (verticalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])verticalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "verticalResolution" + "}", apiInvoker.ToPathValue(verticalResolution)); 
		}
        if (horizontalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])horizontalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "horizontalResolution" + "}", apiInvoker.ToPathValue(horizontalResolution)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="formula"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public SingleValueResponse GetWorkSheetCalculateFormula (string name, string sheetName, string formula, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/formulaResult/?formula={formula}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || formula == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (formula == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])formula=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "formula" + "}", apiInvoker.ToPathValue(formula)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SingleValueResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (SingleValueResponse) ApiInvoker.deserialize(response, typeof(SingleValueResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SingleValueResponse) ApiInvoker.deserialize(response, typeof(SingleValueResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CommentResponse GetWorkSheetComment (string name, string sheetName, string cellName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellName" + "}", apiInvoker.ToPathValue(cellName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CommentResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (CommentResponse) ApiInvoker.deserialize(response, typeof(CommentResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CommentResponse) ApiInvoker.deserialize(response, typeof(CommentResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public CommentsResponse GetWorkSheetComments (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/comments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CommentsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (CommentsResponse) ApiInvoker.deserialize(response, typeof(CommentsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (CommentsResponse) ApiInvoker.deserialize(response, typeof(CommentsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="mergedCellIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public MergedCellResponse GetWorkSheetMergedCell (string name, string sheetName, int? mergedCellIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/mergedCells/{mergedCellIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || mergedCellIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (mergedCellIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])mergedCellIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "mergedCellIndex" + "}", apiInvoker.ToPathValue(mergedCellIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(MergedCellResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (MergedCellResponse) ApiInvoker.deserialize(response, typeof(MergedCellResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (MergedCellResponse) ApiInvoker.deserialize(response, typeof(MergedCellResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public MergedCellsResponse GetWorkSheetMergedCells (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/mergedCells/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(MergedCellsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (MergedCellsResponse) ApiInvoker.deserialize(response, typeof(MergedCellsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (MergedCellsResponse) ApiInvoker.deserialize(response, typeof(MergedCellsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public WorksheetsResponse GetWorkSheets (string name, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorksheetsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (WorksheetsResponse) ApiInvoker.deserialize(response, typeof(WorksheetsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (WorksheetsResponse) ApiInvoker.deserialize(response, typeof(WorksheetsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public TextItemsResponse GetWorkSheetTextItems (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/textItems/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TextItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (TextItemsResponse) ApiInvoker.deserialize(response, typeof(TextItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (TextItemsResponse) ApiInvoker.deserialize(response, typeof(TextItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="format"></param>
      /// <param name="verticalResolution"></param>
      /// <param name="horizontalResolution"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ResponseMessage GetWorkSheetWithFormat (string name, string sheetName, string format, int? verticalResolution, int? horizontalResolution, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;toFormat={toFormat}&amp;verticalResolution={verticalResolution}&amp;horizontalResolution={horizontalResolution}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || format == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (format == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])format=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "format" + "}", apiInvoker.ToPathValue(format)); 
		}
        if (verticalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])verticalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "verticalResolution" + "}", apiInvoker.ToPathValue(verticalResolution)); 
		}
        if (horizontalResolution == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])horizontalResolution=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "horizontalResolution" + "}", apiInvoker.ToPathValue(horizontalResolution)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ResponseMessage) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ResponseMessage) ApiInvoker.deserialize(response, typeof(ResponseMessage));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="startRow"></param>
      /// <param name="endRow"></param>
      /// <param name="onlyAuto"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostAutofitWorksheetRows (string name, string sheetName, int? startRow, int? endRow, bool? onlyAuto, string storage, string folder, AutoFitterOptions body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/autofitrows/?appSid={appSid}&amp;startRow={startRow}&amp;endRow={endRow}&amp;onlyAuto={onlyAuto}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (startRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])startRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "startRow" + "}", apiInvoker.ToPathValue(startRow)); 
		}
        if (endRow == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])endRow=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "endRow" + "}", apiInvoker.ToPathValue(endRow)); 
		}
        if (onlyAuto == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])onlyAuto=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "onlyAuto" + "}", apiInvoker.ToPathValue(onlyAuto)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="sourceSheet"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public SaaSposeResponse PostCopyWorksheet (string name, string sheetName, string sourceSheet, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/copy/?sourceSheet={sourceSheet}&amp;appSid={appSid}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || sourceSheet == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (sourceSheet == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sourceSheet=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sourceSheet" + "}", apiInvoker.ToPathValue(sourceSheet)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public WorksheetsResponse PostMoveWorksheet (string name, string sheetName, string storage, string folder, WorksheetMovingRequest body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/position/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorksheetsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (WorksheetsResponse) ApiInvoker.deserialize(response, typeof(WorksheetsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (WorksheetsResponse) ApiInvoker.deserialize(response, typeof(WorksheetsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="newname"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public SaaSposeResponse PostRenameWorksheet (string name, string sheetName, string newname, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/rename/?newname={newname}&amp;appSid={appSid}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || newname == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (newname == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newname=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newname" + "}", apiInvoker.ToPathValue(newname)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public WorksheetResponse PostUpdateWorksheetProperty (string name, string sheetName, string folder, string storage, Worksheet body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(WorksheetResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (WorksheetResponse) ApiInvoker.deserialize(response, typeof(WorksheetResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (WorksheetResponse) ApiInvoker.deserialize(response, typeof(WorksheetResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostWorkSheetComment (string name, string sheetName, string cellName, string storage, string folder, Comment body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellName" + "}", apiInvoker.ToPathValue(cellName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellArea"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public SaaSposeResponse PostWorksheetRangeSort (string name, string sheetName, string cellArea, string storage, string folder, DataSorter body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/sort/?cellArea={cellArea}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellArea == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellArea == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellArea=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellArea" + "}", apiInvoker.ToPathValue(cellArea)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, body, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="text"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public TextItemsResponse PostWorkSheetTextSearch (string name, string sheetName, string text, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/findText/?text={text}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || text == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (text == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])text=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "text" + "}", apiInvoker.ToPathValue(text)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(TextItemsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (TextItemsResponse) ApiInvoker.deserialize(response, typeof(TextItemsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (TextItemsResponse) ApiInvoker.deserialize(response, typeof(TextItemsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="oldValue"></param>
      /// <param name="newValue"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public WorksheetReplaceResponse PostWorsheetTextReplace (string name, string sheetName, string oldValue, string newValue, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/replaceText/?oldValue={oldValue}&amp;newValue={newValue}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || oldValue == null || newValue == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (oldValue == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])oldValue=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "oldValue" + "}", apiInvoker.ToPathValue(oldValue)); 
		}
        if (newValue == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])newValue=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "newValue" + "}", apiInvoker.ToPathValue(newValue)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorksheetReplaceResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (WorksheetReplaceResponse) ApiInvoker.deserialize(response, typeof(WorksheetReplaceResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (WorksheetReplaceResponse) ApiInvoker.deserialize(response, typeof(WorksheetReplaceResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public WorksheetsResponse PutAddNewWorksheet (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorksheetsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (WorksheetsResponse) ApiInvoker.deserialize(response, typeof(WorksheetsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (WorksheetsResponse) ApiInvoker.deserialize(response, typeof(WorksheetsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="isVisible"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public WorksheetResponse PutChangeVisibilityWorksheet (string name, string sheetName, bool? isVisible, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/visible/?isVisible={isVisible}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || isVisible == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (isVisible == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])isVisible=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "isVisible" + "}", apiInvoker.ToPathValue(isVisible)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorksheetResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (WorksheetResponse) ApiInvoker.deserialize(response, typeof(WorksheetResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (WorksheetResponse) ApiInvoker.deserialize(response, typeof(WorksheetResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public WorksheetResponse PutProtectWorksheet (string name, string sheetName, string storage, string folder, ProtectSheetParameter body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(WorksheetResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (WorksheetResponse) ApiInvoker.deserialize(response, typeof(WorksheetResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (WorksheetResponse) ApiInvoker.deserialize(response, typeof(WorksheetResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public SaaSposeResponse PutWorkSheetBackground (string name, string sheetName, string folder, string storage, byte[] file) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/background/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		   string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="cellName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="body"></param>
      /// <returns></returns>
      public CommentResponse PutWorkSheetComment (string name, string sheetName, string cellName, string storage, string folder, Comment body) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || cellName == null || body == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (cellName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])cellName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "cellName" + "}", apiInvoker.ToPathValue(cellName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(CommentResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (CommentResponse) ApiInvoker.deserialize(response, typeof(CommentResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, body, headerParams, formParams);
            if(response != null){
               return (CommentResponse) ApiInvoker.deserialize(response, typeof(CommentResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="row"></param>
      /// <param name="column"></param>
      /// <param name="freezedRows"></param>
      /// <param name="freezedColumns"></param>
      /// <param name="folder"></param>
      /// <param name="storage"></param>
      /// <returns></returns>
      public SaaSposeResponse PutWorksheetFreezePanes (string name, string sheetName, int? row, int? column, int? freezedRows, int? freezedColumns, string folder, string storage) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/freezepanes/?appSid={appSid}&amp;row={row}&amp;column={column}&amp;freezedRows={freezedRows}&amp;freezedColumns={freezedColumns}&amp;folder={folder}&amp;storage={storage}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || row == null || column == null || freezedRows == null || freezedColumns == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (row == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])row=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "row" + "}", apiInvoker.ToPathValue(row)); 
		}
        if (column == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])column=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "column" + "}", apiInvoker.ToPathValue(column)); 
		}
        if (freezedRows == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])freezedRows=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "freezedRows" + "}", apiInvoker.ToPathValue(freezedRows)); 
		}
        if (freezedColumns == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])freezedColumns=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "freezedColumns" + "}", apiInvoker.ToPathValue(freezedColumns)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        try {
          if (typeof(SaaSposeResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (SaaSposeResponse) ApiInvoker.deserialize(response, typeof(SaaSposeResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="validationIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ValidationResponse DeleteWorkSheetValidation (string name, string sheetName, int? validationIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || validationIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (validationIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])validationIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "validationIndex" + "}", apiInvoker.ToPathValue(validationIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ValidationResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            return (ValidationResponse) ApiInvoker.deserialize(response, typeof(ValidationResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "DELETE", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ValidationResponse) ApiInvoker.deserialize(response, typeof(ValidationResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="validationIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ValidationResponse GetWorkSheetValidation (string name, string sheetName, int? validationIndex, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || validationIndex == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (validationIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])validationIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "validationIndex" + "}", apiInvoker.ToPathValue(validationIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ValidationResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ValidationResponse) ApiInvoker.deserialize(response, typeof(ValidationResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ValidationResponse) ApiInvoker.deserialize(response, typeof(ValidationResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public ValidationsResponse GetWorkSheetValidations (string name, string sheetName, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/validations/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(ValidationsResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (ValidationsResponse) ApiInvoker.deserialize(response, typeof(ValidationsResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ValidationsResponse) ApiInvoker.deserialize(response, typeof(ValidationsResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="validationIndex"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ValidationResponse PostWorkSheetValidation (string name, string sheetName, int? validationIndex, string storage, string folder, byte[] file) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || validationIndex == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (validationIndex == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])validationIndex=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "validationIndex" + "}", apiInvoker.ToPathValue(validationIndex)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ValidationResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (ValidationResponse) ApiInvoker.deserialize(response, typeof(ValidationResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ValidationResponse) ApiInvoker.deserialize(response, typeof(ValidationResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      ///  
      /// </summary>
      /// <param name="name"></param>
      /// <param name="sheetName"></param>
      /// <param name="range"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public ValidationResponse PutWorkSheetValidation (string name, string sheetName, string range, string storage, string folder, byte[] file) {
        // create path and map variables
        var ResourcePath = "/cells/{name}/worksheets/{sheetName}/validations/?appSid={appSid}&amp;range={range}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null || sheetName == null || file == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (sheetName == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])sheetName=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "sheetName" + "}", apiInvoker.ToPathValue(sheetName)); 
		}
        if (range == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])range=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "range" + "}", apiInvoker.ToPathValue(range)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(ValidationResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            return (ValidationResponse) ApiInvoker.deserialize(response, typeof(ValidationResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "PUT", queryParams, null, headerParams, formParams);
            if(response != null){
               return (ValidationResponse) ApiInvoker.deserialize(response, typeof(ValidationResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      }
    }
