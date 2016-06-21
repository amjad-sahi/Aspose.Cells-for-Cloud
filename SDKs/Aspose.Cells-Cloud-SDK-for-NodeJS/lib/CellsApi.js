var path = require('path');
var fs = require('fs');
var apiClient = require('./api-client');


function CellsApi(config) {
	var self = this;
	
	apiClient = new apiClient(config);
	this.config = apiClient.config;
}


/**
* PutConvertWorkBook
* Convert workbook from request content to some format.
*
* @param  (String) format  -  The format to convert. (optional) 
* @param  (String) password  -  The workbook password. (optional) 
* @param  (String) outPath  -  Path to save result (optional) 
* @param  (File) file  -   (required) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.PutConvertWorkBook = function(format, password, outPath, file, data, callback) {

    var self = this;
	   	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/cells/convert/?appSid={appSid}&amp;toFormat={toFormat}&amp;password={password}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof password !== 'undefined' &&  password !== null && password!== ''){            
			resourcePath = resourcePath.replace("{" + "password" + "}" , password);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]password.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
    if(file !== 'undefined' && file !== null && file !== ''
    	&& data !== 'undefined' && data !== null && data !== ''){
    	
    	files = [
 	     		{
   			'Content-Type': 'application/octet-stream',
   		    'Content-Disposition': 'form-data; name="file"',
   		    body : fs.readFileSync(file)
 	     		 },
 	     		 {
 	     		'Content-Type': 'application/xml',
 			 	'Content-Disposition': 'form-data; name="data"',
 			    body :new Buffer(data, "utf-8")
 			 }
 	     	];
    
    }else {
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkBook
* Read workbook info or export.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) password  -  The document password. (optional) 
* @param  (Boolean) isAutoFit  -  Set document rows to be autofit. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns WorkbookResponse (Map)
*/
CellsApi.prototype.GetWorkBook = function(name, password, isAutoFit, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/cells/{name}/?appSid={appSid}&amp;password={password}&amp;isAutoFit={isAutoFit}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof password !== 'undefined' &&  password !== null && password!== ''){            
			resourcePath = resourcePath.replace("{" + "password" + "}" , password);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]password.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof isAutoFit !== 'undefined' &&  isAutoFit !== null && isAutoFit!== ''){            
			resourcePath = resourcePath.replace("{" + "isAutoFit" + "}" , isAutoFit);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]isAutoFit.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorkbookCreate
* Create new workbook using deferent methods.
*
* @param  (String) name  -  The new document name. (required) 
* @param  (String) templateFile  -  The template file, if the data not provided default workbook is created. (optional) 
* @param  (String) dataFile  -  Smart marker data file, if the data not provided the request content is checked for the data. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The new document folder. (optional) 
* @param  (File) file  -   (required) 
* @returns WorkbookResponse (Map)
*/
CellsApi.prototype.PutWorkbookCreate = function(name, templateFile, dataFile, storage, folder, file, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }     	
	
	
	var resourcePath = '/cells/{name}/?appSid={appSid}&amp;templateFile={templateFile}&amp;dataFile={dataFile}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof templateFile !== 'undefined' &&  templateFile !== null && templateFile!== ''){            
			resourcePath = resourcePath.replace("{" + "templateFile" + "}" , templateFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]templateFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof dataFile !== 'undefined' &&  dataFile !== null && dataFile!== ''){            
			resourcePath = resourcePath.replace("{" + "dataFile" + "}" , dataFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]dataFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkBookWithFormat
* EExport workbook to some format.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) format  -  The conversion format. (required) 
* @param  (String) password  -  The document password. (optional) 
* @param  (Boolean) isAutoFit  -  Set document rows to be autofit. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (String) outPath  -  Path to save result (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorkBookWithFormat = function(name, format, password, isAutoFit, storage, folder, outPath, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/cells/{name}/?appSid={appSid}&amp;toFormat={toFormat}&amp;password={password}&amp;isAutoFit={isAutoFit}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof password !== 'undefined' &&  password !== null && password!== ''){            
			resourcePath = resourcePath.replace("{" + "password" + "}" , password);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]password.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof isAutoFit !== 'undefined' &&  isAutoFit !== null && isAutoFit!== ''){            
			resourcePath = resourcePath.replace("{" + "isAutoFit" + "}" , isAutoFit);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]isAutoFit.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostDocumentSaveAs
* Convert document and save result to storage.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) newfilename  -  The new file name. (optional) 
* @param  (Boolean) isAutoFitRows  -  Autofit rows. (optional) 
* @param  (Boolean) isAutoFitColumns  -  Autofit columns. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (SaveOptions) body  -  Save options. (required) 
* @returns SaveResponse (Map)
*/
CellsApi.prototype.PostDocumentSaveAs = function(name, newfilename, isAutoFitRows, isAutoFitColumns, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/cells/{name}/SaveAs/?appSid={appSid}&amp;newfilename={newfilename}&amp;isAutoFitRows={isAutoFitRows}&amp;isAutoFitColumns={isAutoFitColumns}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newfilename !== 'undefined' &&  newfilename !== null && newfilename!== ''){            
			resourcePath = resourcePath.replace("{" + "newfilename" + "}" , newfilename);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newfilename.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof isAutoFitRows !== 'undefined' &&  isAutoFitRows !== null && isAutoFitRows!== ''){            
			resourcePath = resourcePath.replace("{" + "isAutoFitRows" + "}" , isAutoFitRows);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]isAutoFitRows.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof isAutoFitColumns !== 'undefined' &&  isAutoFitColumns !== null && isAutoFitColumns!== ''){            
			resourcePath = resourcePath.replace("{" + "isAutoFitColumns" + "}" , isAutoFitColumns);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]isAutoFitColumns.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostAutofitWorkbookRows
* Autofit workbook rows.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) startRow  -  Start row. (optional) 
* @param  (String) endRow  -  End row. (optional) 
* @param  (Boolean) onlyAuto  -  Only auto. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @param  (AutoFitterOptions) body  -  Auto Fitter Options. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostAutofitWorkbookRows = function(name, startRow, endRow, onlyAuto, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/cells/{name}/autofitrows/?appSid={appSid}&amp;startRow={startRow}&amp;endRow={endRow}&amp;onlyAuto={onlyAuto}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startRow !== 'undefined' &&  startRow !== null && startRow!== ''){            
			resourcePath = resourcePath.replace("{" + "startRow" + "}" , startRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof endRow !== 'undefined' &&  endRow !== null && endRow!== ''){            
			resourcePath = resourcePath.replace("{" + "endRow" + "}" , endRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]endRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof onlyAuto !== 'undefined' &&  onlyAuto !== null && onlyAuto!== ''){            
			resourcePath = resourcePath.replace("{" + "onlyAuto" + "}" , onlyAuto);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]onlyAuto.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkbookCalculateFormula
* Calculate all formulas in workbook.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostWorkbookCalculateFormula = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/calculateformula/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkBookDefaultStyle
* Read workbook default style info.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document&#39;s folder. (optional) 
* @returns StyleResponse (Map)
*/
CellsApi.prototype.GetWorkBookDefaultStyle = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/defaultstyle/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentProperties
* Read document properties.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns CellsDocumentPropertiesResponse (Map)
*/
CellsApi.prototype.GetDocumentProperties = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteDocumentProperties
* Delete all custom document properties and clean built-in ones.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns CellsDocumentPropertiesResponse (Map)
*/
CellsApi.prototype.DeleteDocumentProperties = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/documentproperties/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetDocumentProperty
* Read document property by name.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) propertyName  -  The property name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns CellsDocumentPropertyResponse (Map)
*/
CellsApi.prototype.GetDocumentProperty = function(name, propertyName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof propertyName === 'undefined' || propertyName === null && propertyName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof propertyName !== 'undefined' &&  propertyName !== null && propertyName!== ''){            
			resourcePath = resourcePath.replace("{" + "propertyName" + "}" , propertyName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]propertyName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutDocumentProperty
* Set/create document property.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) propertyName  -  The property name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (CellsDocumentProperty) body  -  with new property value. (required) 
* @returns CellsDocumentPropertyResponse (Map)
*/
CellsApi.prototype.PutDocumentProperty = function(name, propertyName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof propertyName === 'undefined' || propertyName === null && propertyName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof propertyName !== 'undefined' &&  propertyName !== null && propertyName!== ''){            
			resourcePath = resourcePath.replace("{" + "propertyName" + "}" , propertyName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]propertyName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteDocumentProperty
* Delete document property.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) propertyName  -  The property name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns CellsDocumentPropertiesResponse (Map)
*/
CellsApi.prototype.DeleteDocumentProperty = function(name, propertyName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof propertyName === 'undefined' || propertyName === null && propertyName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/documentproperties/{propertyName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof propertyName !== 'undefined' &&  propertyName !== null && propertyName!== ''){            
			resourcePath = resourcePath.replace("{" + "propertyName" + "}" , propertyName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]propertyName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostEncryptDocument
* Encript document.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (WorkbookEncryptionRequest) body  -  Encryption parameters. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostEncryptDocument = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/encryption/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteDecryptDocument
* Decrypt document.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (WorkbookEncryptionRequest) body  -  Encryption settings, only password can be specified. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteDecryptDocument = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/encryption/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkbooksTextSearch
* Search text.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) text  -  Text sample. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns TextItemsResponse (Map)
*/
CellsApi.prototype.PostWorkbooksTextSearch = function(name, text, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof text === 'undefined' || text === null && text === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/findText/?text={text}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof text !== 'undefined' &&  text !== null && text!== ''){            
			resourcePath = resourcePath.replace("{" + "text" + "}" , text);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]text.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostImportData
* Import data to workbook.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) storage  -  The workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (ImportOption) body  -  The import option. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostImportData = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/importdata/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkbooksMerge
* Merge workbooks.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) mergeWith  -  The workbook to merge with. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Source workbook folder. (optional) 
* @returns WorkbookResponse (Map)
*/
CellsApi.prototype.PostWorkbooksMerge = function(name, mergeWith, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof mergeWith === 'undefined' || mergeWith === null && mergeWith === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/merge/?mergeWith={mergeWith}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof mergeWith !== 'undefined' &&  mergeWith !== null && mergeWith!== ''){            
			resourcePath = resourcePath.replace("{" + "mergeWith" + "}" , mergeWith);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]mergeWith.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkBookNames
* Read workbook&#39;s names.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns NamesResponse (Map)
*/
CellsApi.prototype.GetWorkBookNames = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/names/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkBookName
* Read workbook&#39;s name.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) nameName  -  The name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns NameResponse (Map)
*/
CellsApi.prototype.GetWorkBookName = function(name, nameName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof nameName === 'undefined' || nameName === null && nameName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/names/{nameName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof nameName !== 'undefined' &&  nameName !== null && nameName!== ''){            
			resourcePath = resourcePath.replace("{" + "nameName" + "}" , nameName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]nameName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostProtectDocument
* Protect document.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (WorkbookProtectionRequest) body  -  The protection settings. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostProtectDocument = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteUnProtectDocument
* Unprotect document.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (WorkbookProtectionRequest) body  -  Protection settings, only password can be specified. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteUnProtectDocument = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkbooksTextReplace
* Replace text.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) oldValue  -  The old value. (required) 
* @param  (String) newValue  -  The new value. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns WorkbookReplaceResponse (Map)
*/
CellsApi.prototype.PostWorkbooksTextReplace = function(name, oldValue, newValue, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof oldValue === 'undefined' || oldValue === null && oldValue === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newValue === 'undefined' || newValue === null && newValue === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/replaceText/?oldValue={oldValue}&amp;newValue={newValue}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof oldValue !== 'undefined' &&  oldValue !== null && oldValue!== ''){            
			resourcePath = resourcePath.replace("{" + "oldValue" + "}" , oldValue);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]oldValue.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newValue !== 'undefined' &&  newValue !== null && newValue!== ''){            
			resourcePath = resourcePath.replace("{" + "newValue" + "}" , newValue);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newValue.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkbookGetSmartMarkerResult
* Smart marker processing result.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) xmlFile  -  The xml file full path, if empty the data is read from request body. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The workbook folder full path. (optional) 
* @param  (String) outPath  -  Path to save result (optional) 
* @param  (File) file 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.PostWorkbookGetSmartMarkerResult = function(name, xmlFile, storage, folder, outPath, file, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }     	
	
	var resourcePath = '/cells/{name}/smartmarker/?appSid={appSid}&amp;xmlFile={xmlFile}&amp;storage={storage}&amp;folder={folder}&amp;outPath={outPath}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof xmlFile !== 'undefined' &&  xmlFile !== null && xmlFile!== ''){            
			resourcePath = resourcePath.replace("{" + "xmlFile" + "}" , xmlFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]xmlFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof outPath !== 'undefined' &&  outPath !== null && outPath!== ''){            
			resourcePath = resourcePath.replace("{" + "outPath" + "}" , outPath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]outPath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkbookSplit
* Split workbook.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) format  -  Split format. (optional) 
* @param  (String) from  -  Start worksheet index. (optional) 
* @param  (String) to  -  End worksheet index. (optional) 
* @param  (String) horizontalResolution  -  Image horizontal resolution. (optional) 
* @param  (String) verticalResolution  -  Image vertical resolution. (optional) 
* @param  (String) storage  -  The workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SplitResultResponse (Map)
*/
CellsApi.prototype.PostWorkbookSplit = function(name, format, from, to, horizontalResolution, verticalResolution, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }        	
		
	var resourcePath = '/cells/{name}/split/?appSid={appSid}&amp;toFormat={toFormat}&amp;from={from}&amp;to={to}&amp;horizontalResolution={horizontalResolution}&amp;verticalResolution={verticalResolution}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof from !== 'undefined' &&  from !== null && from!== ''){            
			resourcePath = resourcePath.replace("{" + "from" + "}" , from);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]from.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof to !== 'undefined' &&  to !== null && to!== ''){            
			resourcePath = resourcePath.replace("{" + "to" + "}" , to);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]to.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof horizontalResolution !== 'undefined' &&  horizontalResolution !== null && horizontalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , horizontalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]horizontalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof verticalResolution !== 'undefined' &&  verticalResolution !== null && verticalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , verticalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]verticalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkBookTextItems
* Read workbook&#39;s text items.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns TextItemsResponse (Map)
*/
CellsApi.prototype.GetWorkBookTextItems = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/textItems/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheets
* Read worksheets info.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document folder. (optional) 
* @returns WorksheetsResponse (Map)
*/
CellsApi.prototype.GetWorkSheets = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostUpdateWorksheetProperty
* Update worksheet property
*
* @param  (String) name  -   (required) 
* @param  (String) sheetName  -   (required) 
* @param  (String) folder  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (Worksheet) body  -   (required) 
* @returns WorksheetResponse (Map)
*/
CellsApi.prototype.PostUpdateWorksheetProperty = function(name, sheetName, folder, storage, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutAddNewWorksheet
* Add new worksheet.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The new sheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document folder. (optional) 
* @returns WorksheetsResponse (Map)
*/
CellsApi.prototype.PutAddNewWorksheet = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheet
* Delete worksheet.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns WorksheetsResponse (Map)
*/
CellsApi.prototype.DeleteWorksheet = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetWithFormat
* Read worksheet info or export.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) format  -  Export format. (required) 
* @param  (String) verticalResolution  -  Image vertical resolution. (optional) 
* @param  (String) horizontalResolution  -  Image horizontal resolution. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorkSheetWithFormat = function(name, sheetName, format, verticalResolution, horizontalResolution, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;toFormat={toFormat}&amp;verticalResolution={verticalResolution}&amp;horizontalResolution={horizontalResolution}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof verticalResolution !== 'undefined' &&  verticalResolution !== null && verticalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , verticalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]verticalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof horizontalResolution !== 'undefined' &&  horizontalResolution !== null && horizontalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , horizontalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]horizontalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheet
* Read worksheet info or export.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) verticalResolution  -  Image vertical resolution. (optional) 
* @param  (String) horizontalResolution  -  Image horizontal resolution. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorkSheet = function(name, sheetName, verticalResolution, horizontalResolution, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/?appSid={appSid}&amp;verticalResolution={verticalResolution}&amp;horizontalResolution={horizontalResolution}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof verticalResolution !== 'undefined' &&  verticalResolution !== null && verticalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "verticalResolution" + "}" , verticalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]verticalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof horizontalResolution !== 'undefined' &&  horizontalResolution !== null && horizontalResolution!== ''){            
			resourcePath = resourcePath.replace("{" + "horizontalResolution" + "}" , horizontalResolution);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]horizontalResolution.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostAutofitWorksheetRows
* Autofit worksheet rows.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) startRow  -  Start row. (optional) 
* @param  (String) endRow  -  End row. (optional) 
* @param  (Boolean) onlyAuto  -  Only auto. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @param  (AutoFitterOptions) body  -  Auto Fitter Options. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostAutofitWorksheetRows = function(name, sheetName, startRow, endRow, onlyAuto, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/autofitrows/?appSid={appSid}&amp;startRow={startRow}&amp;endRow={endRow}&amp;onlyAuto={onlyAuto}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startRow !== 'undefined' &&  startRow !== null && startRow!== ''){            
			resourcePath = resourcePath.replace("{" + "startRow" + "}" , startRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof endRow !== 'undefined' &&  endRow !== null && endRow!== ''){            
			resourcePath = resourcePath.replace("{" + "endRow" + "}" , endRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]endRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof onlyAuto !== 'undefined' &&  onlyAuto !== null && onlyAuto!== ''){            
			resourcePath = resourcePath.replace("{" + "onlyAuto" + "}" , onlyAuto);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]onlyAuto.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetAutoshapes
* Get worksheet autoshapes info.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns AutoShapesResponse (Map)
*/
CellsApi.prototype.GetWorksheetAutoshapes = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/autoshapes/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetAutoshape
* Get autoshape info.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) autoshapeNumber  -  The autoshape number. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorksheetAutoshape = function(name, sheetName, autoshapeNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof autoshapeNumber === 'undefined' || autoshapeNumber === null && autoshapeNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof autoshapeNumber !== 'undefined' &&  autoshapeNumber !== null && autoshapeNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "autoshapeNumber" + "}" , autoshapeNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]autoshapeNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetAutoshapeWithFormat
* Get autoshape info in some format.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) autoshapeNumber  -  The autoshape number. (required) 
* @param  (String) format  -  Autoshape conversion format. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorksheetAutoshapeWithFormat = function(name, sheetName, autoshapeNumber, format, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof autoshapeNumber === 'undefined' || autoshapeNumber === null && autoshapeNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof autoshapeNumber !== 'undefined' &&  autoshapeNumber !== null && autoshapeNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "autoshapeNumber" + "}" , autoshapeNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]autoshapeNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorkSheetBackground
* Set worksheet background image.
*
* @param  (String) name  -   (required) 
* @param  (String) sheetName  -   (required) 
* @param  (String) folder  -   (optional) 
* @param  (String) storage  -   (optional) 
* @param  (File) file  -   (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PutWorkSheetBackground = function(name, sheetName, folder, storage, file, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/background/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorkSheetBackground
* Set worksheet background image.
*
* @param  (String) name  -   (required) 
* @param  (String) sheetName  -   (required) 
* @param  (String) folder  -   (optional) 
* @param  (String) storage  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorkSheetBackground = function(name, sheetName, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/background/?appSid={appSid}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetCells
* Get cells info.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) offest  -  Begginig offset. (optional) 
* @param  (String) count  -  Maximum amount of cells in the response. (optional) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder name. (optional) 
* @returns CellsResponse (Map)
*/
CellsApi.prototype.GetWorksheetCells = function(name, sheetName, offest, count, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/?appSid={appSid}&amp;offest={offest}&amp;count={count}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof offest !== 'undefined' &&  offest !== null && offest!== ''){            
			resourcePath = resourcePath.replace("{" + "offest" + "}" , offest);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]offest.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof count !== 'undefined' &&  count !== null && count!== ''){            
			resourcePath = resourcePath.replace("{" + "count" + "}" , count);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]count.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostSetCellRangeValue
* Set cell range value
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) cellarea  -  Cell area (like A1:C2) (required) 
* @param  (String) value  -  Range value (required) 
* @param  (String) type  -  Value data type (like int) (required) 
* @param  (String) storage  -  Storage name (optional) 
* @param  (String) folder  -  Folder name (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostSetCellRangeValue = function(name, sheetName, cellarea, value, type, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellarea === 'undefined' || cellarea === null && cellarea === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof value === 'undefined' || value === null && value === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof type === 'undefined' || type === null && type === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/?cellarea={cellarea}&amp;value={value}&amp;type={type}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellarea !== 'undefined' &&  cellarea !== null && cellarea!== ''){            
			resourcePath = resourcePath.replace("{" + "cellarea" + "}" , cellarea);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellarea.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof value !== 'undefined' &&  value !== null && value!== ''){            
			resourcePath = resourcePath.replace("{" + "value" + "}" , value);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]value.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof type !== 'undefined' &&  type !== null && type!== ''){            
			resourcePath = resourcePath.replace("{" + "type" + "}" , type);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]type.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostClearContents
* Clear cells contents.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) range  -  The range. (optional) 
* @param  (String) startRow  -  The start row. (optional) 
* @param  (String) startColumn  -  The start column. (optional) 
* @param  (String) endRow  -  The end row. (optional) 
* @param  (String) endColumn  -  The end column. (optional) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostClearContents = function(name, sheetName, range, startRow, startColumn, endRow, endColumn, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }        	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/clearcontents/?appSid={appSid}&amp;range={range}&amp;startRow={startRow}&amp;startColumn={startColumn}&amp;endRow={endRow}&amp;endColumn={endColumn}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof range !== 'undefined' &&  range !== null && range!== ''){            
			resourcePath = resourcePath.replace("{" + "range" + "}" , range);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]range.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startRow !== 'undefined' &&  startRow !== null && startRow!== ''){            
			resourcePath = resourcePath.replace("{" + "startRow" + "}" , startRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startColumn !== 'undefined' &&  startColumn !== null && startColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "startColumn" + "}" , startColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof endRow !== 'undefined' &&  endRow !== null && endRow!== ''){            
			resourcePath = resourcePath.replace("{" + "endRow" + "}" , endRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]endRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof endColumn !== 'undefined' &&  endColumn !== null && endColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "endColumn" + "}" , endColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]endColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostClearFormats
* Clear cells contents.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) range  -  The range. (optional) 
* @param  (String) startRow  -  The start row. (optional) 
* @param  (String) startColumn  -  The start column. (optional) 
* @param  (String) endRow  -  The end row. (optional) 
* @param  (String) endColumn  -  The end column. (optional) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostClearFormats = function(name, sheetName, range, startRow, startColumn, endRow, endColumn, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }        	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/clearformats/?appSid={appSid}&amp;range={range}&amp;startRow={startRow}&amp;startColumn={startColumn}&amp;endRow={endRow}&amp;endColumn={endColumn}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof range !== 'undefined' &&  range !== null && range!== ''){            
			resourcePath = resourcePath.replace("{" + "range" + "}" , range);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]range.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startRow !== 'undefined' &&  startRow !== null && startRow!== ''){            
			resourcePath = resourcePath.replace("{" + "startRow" + "}" , startRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startColumn !== 'undefined' &&  startColumn !== null && startColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "startColumn" + "}" , startColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof endRow !== 'undefined' &&  endRow !== null && endRow!== ''){            
			resourcePath = resourcePath.replace("{" + "endRow" + "}" , endRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]endRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof endColumn !== 'undefined' &&  endColumn !== null && endColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "endColumn" + "}" , endColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]endColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetColumns
* Read worksheet columns info.
*
* @param  (String) name  -  The workbook name. (optional) 
* @param  (String) sheetName  -  The worksheet name. (optional) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workdook folder. (optional) 
* @returns ColumnsResponse (Map)
*/
CellsApi.prototype.GetWorksheetColumns = function(name, sheetName, storage, folder, callback) {

    var self = this;
	    	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostCopyWorksheetColumns
* Copy worksheet columns.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) sourceColumnIndex  -  Source column index (required) 
* @param  (String) destinationColumnIndex  -  Destination column index (required) 
* @param  (String) columnNumber  -  The copied column number (required) 
* @param  (String) worksheet  -  The Worksheet (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostCopyWorksheetColumns = function(name, sheetName, sourceColumnIndex, destinationColumnIndex, columnNumber, worksheet, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sourceColumnIndex === 'undefined' || sourceColumnIndex === null && sourceColumnIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof destinationColumnIndex === 'undefined' || destinationColumnIndex === null && destinationColumnIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof columnNumber === 'undefined' || columnNumber === null && columnNumber === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/copy/?sourceColumnIndex={sourceColumnIndex}&amp;destinationColumnIndex={destinationColumnIndex}&amp;columnNumber={columnNumber}&amp;appSid={appSid}&amp;worksheet={worksheet}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sourceColumnIndex !== 'undefined' &&  sourceColumnIndex !== null && sourceColumnIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "sourceColumnIndex" + "}" , sourceColumnIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sourceColumnIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof destinationColumnIndex !== 'undefined' &&  destinationColumnIndex !== null && destinationColumnIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "destinationColumnIndex" + "}" , destinationColumnIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]destinationColumnIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof columnNumber !== 'undefined' &&  columnNumber !== null && columnNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "columnNumber" + "}" , columnNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]columnNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof worksheet !== 'undefined' &&  worksheet !== null && worksheet!== ''){            
			resourcePath = resourcePath.replace("{" + "worksheet" + "}" , worksheet);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]worksheet.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostGroupWorksheetColumns
* Group worksheet columns.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) firstIndex  -  The first column index to be operated. (required) 
* @param  (String) lastIndex  -  The last column index to be operated. (required) 
* @param  (Boolean) hide  -  columns visible state (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostGroupWorksheetColumns = function(name, sheetName, firstIndex, lastIndex, hide, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof firstIndex === 'undefined' || firstIndex === null && firstIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof lastIndex === 'undefined' || lastIndex === null && lastIndex === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/group/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;hide={hide}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof firstIndex !== 'undefined' &&  firstIndex !== null && firstIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "firstIndex" + "}" , firstIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]firstIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof lastIndex !== 'undefined' &&  lastIndex !== null && lastIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "lastIndex" + "}" , lastIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]lastIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof hide !== 'undefined' &&  hide !== null && hide!== ''){            
			resourcePath = resourcePath.replace("{" + "hide" + "}" , hide);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]hide.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostHideWorksheetColumns
* Hide worksheet columns.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) startColumn  -  The begin column index to be operated. (required) 
* @param  (String) totalColumns  -  Number of columns to be operated. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostHideWorksheetColumns = function(name, sheetName, startColumn, totalColumns, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof startColumn === 'undefined' || startColumn === null && startColumn === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof totalColumns === 'undefined' || totalColumns === null && totalColumns === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/hide/?startColumn={startColumn}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startColumn !== 'undefined' &&  startColumn !== null && startColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "startColumn" + "}" , startColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalColumns !== 'undefined' &&  totalColumns !== null && totalColumns!== ''){            
			resourcePath = resourcePath.replace("{" + "totalColumns" + "}" , totalColumns);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalColumns.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostUngroupWorksheetColumns
* Ungroup worksheet columns.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) firstIndex  -  The first column index to be operated. (required) 
* @param  (String) lastIndex  -  The last column index to be operated. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostUngroupWorksheetColumns = function(name, sheetName, firstIndex, lastIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof firstIndex === 'undefined' || firstIndex === null && firstIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof lastIndex === 'undefined' || lastIndex === null && lastIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/ungroup/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof firstIndex !== 'undefined' &&  firstIndex !== null && firstIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "firstIndex" + "}" , firstIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]firstIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof lastIndex !== 'undefined' &&  lastIndex !== null && lastIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "lastIndex" + "}" , lastIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]lastIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostUnhideWorksheetColumns
* Unhide worksheet columns.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) startcolumn  -  The begin column index to be operated. (required) 
* @param  (String) totalColumns  -  Number of columns to be operated. (required) 
* @param  (String) width  -  The new column width. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostUnhideWorksheetColumns = function(name, sheetName, startcolumn, totalColumns, width, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof startcolumn === 'undefined' || startcolumn === null && startcolumn === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof totalColumns === 'undefined' || totalColumns === null && totalColumns === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/unhide/?startcolumn={startcolumn}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;width={width}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startcolumn !== 'undefined' &&  startcolumn !== null && startcolumn!== ''){            
			resourcePath = resourcePath.replace("{" + "startcolumn" + "}" , startcolumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startcolumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalColumns !== 'undefined' &&  totalColumns !== null && totalColumns!== ''){            
			resourcePath = resourcePath.replace("{" + "totalColumns" + "}" , totalColumns);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalColumns.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof width !== 'undefined' &&  width !== null && width!== ''){            
			resourcePath = resourcePath.replace("{" + "width" + "}" , width);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]width.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetColumn
* Read worksheet column data by column&#39;s index.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) columnIndex  -  The column index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns ColumnResponse (Map)
*/
CellsApi.prototype.GetWorksheetColumn = function(name, sheetName, columnIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof columnIndex === 'undefined' || columnIndex === null && columnIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof columnIndex !== 'undefined' &&  columnIndex !== null && columnIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "columnIndex" + "}" , columnIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]columnIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutInsertWorksheetColumns
* Insert worksheet columns.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) columnIndex  -  The column index. (required) 
* @param  (String) columns  -  The columns. (required) 
* @param  (Boolean) updateReference  -  The update reference. (optional) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns ColumnsResponse (Map)
*/
CellsApi.prototype.PutInsertWorksheetColumns = function(name, sheetName, columnIndex, columns, updateReference, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof columnIndex === 'undefined' || columnIndex === null && columnIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof columns === 'undefined' || columns === null && columns === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?columns={columns}&amp;appSid={appSid}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof columnIndex !== 'undefined' &&  columnIndex !== null && columnIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "columnIndex" + "}" , columnIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]columnIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof columns !== 'undefined' &&  columns !== null && columns!== ''){            
			resourcePath = resourcePath.replace("{" + "columns" + "}" , columns);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]columns.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof updateReference !== 'undefined' &&  updateReference !== null && updateReference!== ''){            
			resourcePath = resourcePath.replace("{" + "updateReference" + "}" , updateReference);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]updateReference.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetColumns
* Delete worksheet columns.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) columnIndex  -  The column index. (required) 
* @param  (String) columns  -  The columns. (required) 
* @param  (Boolean) updateReference  -  The update reference. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns ColumnsResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetColumns = function(name, sheetName, columnIndex, columns, updateReference, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof columnIndex === 'undefined' || columnIndex === null && columnIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof columns === 'undefined' || columns === null && columns === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof updateReference === 'undefined' || updateReference === null && updateReference === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?columns={columns}&amp;updateReference={updateReference}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof columnIndex !== 'undefined' &&  columnIndex !== null && columnIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "columnIndex" + "}" , columnIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]columnIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof columns !== 'undefined' &&  columns !== null && columns!== ''){            
			resourcePath = resourcePath.replace("{" + "columns" + "}" , columns);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]columns.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof updateReference !== 'undefined' &&  updateReference !== null && updateReference!== ''){            
			resourcePath = resourcePath.replace("{" + "updateReference" + "}" , updateReference);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]updateReference.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostSetWorksheetColumnWidth
* Set worksheet column width.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) columnIndex  -  The column index. (required) 
* @param  (String) width  -  The width. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns ColumnResponse (Map)
*/
CellsApi.prototype.PostSetWorksheetColumnWidth = function(name, sheetName, columnIndex, width, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof columnIndex === 'undefined' || columnIndex === null && columnIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof width === 'undefined' || width === null && width === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/?width={width}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof columnIndex !== 'undefined' &&  columnIndex !== null && columnIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "columnIndex" + "}" , columnIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]columnIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof width !== 'undefined' &&  width !== null && width!== ''){            
			resourcePath = resourcePath.replace("{" + "width" + "}" , width);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]width.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostColumnStyle
* Set column style
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) columnIndex  -  The column index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (Style) body  -  Style dto (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostColumnStyle = function(name, sheetName, columnIndex, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof columnIndex === 'undefined' || columnIndex === null && columnIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof columnIndex !== 'undefined' &&  columnIndex !== null && columnIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "columnIndex" + "}" , columnIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]columnIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorksheetMerge
* Merge cells.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) startRow  -  The start row. (required) 
* @param  (String) startColumn  -  The start column. (required) 
* @param  (String) totalRows  -  The total rows (required) 
* @param  (String) totalColumns  -  The total columns. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostWorksheetMerge = function(name, sheetName, startRow, startColumn, totalRows, totalColumns, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof startRow === 'undefined' || startRow === null && startRow === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof startColumn === 'undefined' || startColumn === null && startColumn === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof totalRows === 'undefined' || totalRows === null && totalRows === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof totalColumns === 'undefined' || totalColumns === null && totalColumns === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/merge/?startRow={startRow}&amp;startColumn={startColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startRow !== 'undefined' &&  startRow !== null && startRow!== ''){            
			resourcePath = resourcePath.replace("{" + "startRow" + "}" , startRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startColumn !== 'undefined' &&  startColumn !== null && startColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "startColumn" + "}" , startColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalRows !== 'undefined' &&  totalRows !== null && totalRows!== ''){            
			resourcePath = resourcePath.replace("{" + "totalRows" + "}" , totalRows);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalRows.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalColumns !== 'undefined' &&  totalColumns !== null && totalColumns!== ''){            
			resourcePath = resourcePath.replace("{" + "totalColumns" + "}" , totalColumns);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalColumns.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetRows
* Read worksheet rows info.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workdook folder. (optional) 
* @returns RowsResponse (Map)
*/
CellsApi.prototype.GetWorksheetRows = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutInsertWorksheetRows
* Insert several new worksheet rows.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) startrow  -  The begin row index to be operated. (required) 
* @param  (String) totalRows  -  Number of rows to be operated. (optional) 
* @param  (Boolean) updateReference  -  Indicates if update references in other worksheets. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PutInsertWorksheetRows = function(name, sheetName, startrow, totalRows, updateReference, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof startrow === 'undefined' || startrow === null && startrow === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/?startrow={startrow}&amp;appSid={appSid}&amp;totalRows={totalRows}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startrow !== 'undefined' &&  startrow !== null && startrow!== ''){            
			resourcePath = resourcePath.replace("{" + "startrow" + "}" , startrow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startrow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalRows !== 'undefined' &&  totalRows !== null && totalRows!== ''){            
			resourcePath = resourcePath.replace("{" + "totalRows" + "}" , totalRows);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalRows.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof updateReference !== 'undefined' &&  updateReference !== null && updateReference!== ''){            
			resourcePath = resourcePath.replace("{" + "updateReference" + "}" , updateReference);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]updateReference.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetRows
* Delete several worksheet rows.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet bame. (required) 
* @param  (String) startrow  -  The begin row index to be operated. (required) 
* @param  (String) totalRows  -  Number of rows to be operated. (optional) 
* @param  (Boolean) updateReference  -  Indicates if update references in other worksheets. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetRows = function(name, sheetName, startrow, totalRows, updateReference, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof startrow === 'undefined' || startrow === null && startrow === ''){
		throw new Error('missing required parameters.');
    }     	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/?startrow={startrow}&amp;appSid={appSid}&amp;totalRows={totalRows}&amp;updateReference={updateReference}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startrow !== 'undefined' &&  startrow !== null && startrow!== ''){            
			resourcePath = resourcePath.replace("{" + "startrow" + "}" , startrow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startrow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalRows !== 'undefined' &&  totalRows !== null && totalRows!== ''){            
			resourcePath = resourcePath.replace("{" + "totalRows" + "}" , totalRows);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalRows.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof updateReference !== 'undefined' &&  updateReference !== null && updateReference!== ''){            
			resourcePath = resourcePath.replace("{" + "updateReference" + "}" , updateReference);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]updateReference.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostCopyWorksheetRows
* Copy worksheet rows.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) sourceRowIndex  -  Source row index (required) 
* @param  (String) destinationRowIndex  -  Destination row index (required) 
* @param  (String) rowNumber  -  The copied row number (required) 
* @param  (String) worksheet  -  worksheet (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostCopyWorksheetRows = function(name, sheetName, sourceRowIndex, destinationRowIndex, rowNumber, worksheet, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sourceRowIndex === 'undefined' || sourceRowIndex === null && sourceRowIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof destinationRowIndex === 'undefined' || destinationRowIndex === null && destinationRowIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rowNumber === 'undefined' || rowNumber === null && rowNumber === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/copy/?sourceRowIndex={sourceRowIndex}&amp;destinationRowIndex={destinationRowIndex}&amp;rowNumber={rowNumber}&amp;appSid={appSid}&amp;worksheet={worksheet}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sourceRowIndex !== 'undefined' &&  sourceRowIndex !== null && sourceRowIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "sourceRowIndex" + "}" , sourceRowIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sourceRowIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof destinationRowIndex !== 'undefined' &&  destinationRowIndex !== null && destinationRowIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "destinationRowIndex" + "}" , destinationRowIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]destinationRowIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rowNumber !== 'undefined' &&  rowNumber !== null && rowNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "rowNumber" + "}" , rowNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rowNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof worksheet !== 'undefined' &&  worksheet !== null && worksheet!== ''){            
			resourcePath = resourcePath.replace("{" + "worksheet" + "}" , worksheet);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]worksheet.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostGroupWorksheetRows
* Group worksheet rows.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) firstIndex  -  The first row index to be operated. (required) 
* @param  (String) lastIndex  -  The last row index to be operated. (required) 
* @param  (Boolean) hide  -  rows visible state (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostGroupWorksheetRows = function(name, sheetName, firstIndex, lastIndex, hide, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof firstIndex === 'undefined' || firstIndex === null && firstIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof lastIndex === 'undefined' || lastIndex === null && lastIndex === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/group/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;hide={hide}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof firstIndex !== 'undefined' &&  firstIndex !== null && firstIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "firstIndex" + "}" , firstIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]firstIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof lastIndex !== 'undefined' &&  lastIndex !== null && lastIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "lastIndex" + "}" , lastIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]lastIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof hide !== 'undefined' &&  hide !== null && hide!== ''){            
			resourcePath = resourcePath.replace("{" + "hide" + "}" , hide);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]hide.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostHideWorksheetRows
* Hide worksheet rows.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) startrow  -  The begin row index to be operated. (required) 
* @param  (String) totalRows  -  Number of rows to be operated. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostHideWorksheetRows = function(name, sheetName, startrow, totalRows, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof startrow === 'undefined' || startrow === null && startrow === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof totalRows === 'undefined' || totalRows === null && totalRows === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/hide/?startrow={startrow}&amp;totalRows={totalRows}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startrow !== 'undefined' &&  startrow !== null && startrow!== ''){            
			resourcePath = resourcePath.replace("{" + "startrow" + "}" , startrow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startrow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalRows !== 'undefined' &&  totalRows !== null && totalRows!== ''){            
			resourcePath = resourcePath.replace("{" + "totalRows" + "}" , totalRows);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalRows.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostUngroupWorksheetRows
* Ungroup worksheet rows.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) firstIndex  -  The first row index to be operated. (required) 
* @param  (String) lastIndex  -  The last row index to be operated. (required) 
* @param  (Boolean) isAll  -  Is all row to be operated (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostUngroupWorksheetRows = function(name, sheetName, firstIndex, lastIndex, isAll, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof firstIndex === 'undefined' || firstIndex === null && firstIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof lastIndex === 'undefined' || lastIndex === null && lastIndex === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/ungroup/?firstIndex={firstIndex}&amp;lastIndex={lastIndex}&amp;appSid={appSid}&amp;isAll={isAll}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof firstIndex !== 'undefined' &&  firstIndex !== null && firstIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "firstIndex" + "}" , firstIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]firstIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof lastIndex !== 'undefined' &&  lastIndex !== null && lastIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "lastIndex" + "}" , lastIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]lastIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof isAll !== 'undefined' &&  isAll !== null && isAll!== ''){            
			resourcePath = resourcePath.replace("{" + "isAll" + "}" , isAll);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]isAll.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostUnhideWorksheetRows
* Unhide worksheet rows.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) startrow  -  The begin row index to be operated. (required) 
* @param  (String) totalRows  -  Number of rows to be operated. (required) 
* @param  (String) height  -  The new row height. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostUnhideWorksheetRows = function(name, sheetName, startrow, totalRows, height, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof startrow === 'undefined' || startrow === null && startrow === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof totalRows === 'undefined' || totalRows === null && totalRows === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/unhide/?startrow={startrow}&amp;totalRows={totalRows}&amp;appSid={appSid}&amp;height={height}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startrow !== 'undefined' &&  startrow !== null && startrow!== ''){            
			resourcePath = resourcePath.replace("{" + "startrow" + "}" , startrow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startrow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalRows !== 'undefined' &&  totalRows !== null && totalRows!== ''){            
			resourcePath = resourcePath.replace("{" + "totalRows" + "}" , totalRows);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalRows.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof height !== 'undefined' &&  height !== null && height!== ''){            
			resourcePath = resourcePath.replace("{" + "height" + "}" , height);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]height.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostUpdateWorksheetRow
* Update worksheet row.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) rowIndex  -  The row index. (required) 
* @param  (String) height  -  The new row height. (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns RowResponse (Map)
*/
CellsApi.prototype.PostUpdateWorksheetRow = function(name, sheetName, rowIndex, height, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rowIndex === 'undefined' || rowIndex === null && rowIndex === ''){
		throw new Error('missing required parameters.');
    }    	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;height={height}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rowIndex !== 'undefined' &&  rowIndex !== null && rowIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "rowIndex" + "}" , rowIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rowIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof height !== 'undefined' &&  height !== null && height!== ''){            
			resourcePath = resourcePath.replace("{" + "height" + "}" , height);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]height.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetRow
* Read worksheet row data by row&#39;s index.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) rowIndex  -  The row index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns RowResponse (Map)
*/
CellsApi.prototype.GetWorksheetRow = function(name, sheetName, rowIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rowIndex === 'undefined' || rowIndex === null && rowIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rowIndex !== 'undefined' &&  rowIndex !== null && rowIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "rowIndex" + "}" , rowIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rowIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutInsertWorksheetRow
* Insert new worksheet row.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) rowIndex  -  The new row index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns RowResponse (Map)
*/
CellsApi.prototype.PutInsertWorksheetRow = function(name, sheetName, rowIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rowIndex === 'undefined' || rowIndex === null && rowIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rowIndex !== 'undefined' &&  rowIndex !== null && rowIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "rowIndex" + "}" , rowIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rowIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetRow
* Delete worksheet row.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet bame. (required) 
* @param  (String) rowIndex  -  The row index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetRow = function(name, sheetName, rowIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rowIndex === 'undefined' || rowIndex === null && rowIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rowIndex !== 'undefined' &&  rowIndex !== null && rowIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "rowIndex" + "}" , rowIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rowIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostRowStyle
* Set row style.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) rowIndex  -  The row index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (Style) body  -  Style dto (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostRowStyle = function(name, sheetName, rowIndex, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof rowIndex === 'undefined' || rowIndex === null && rowIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rowIndex !== 'undefined' &&  rowIndex !== null && rowIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "rowIndex" + "}" , rowIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rowIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostUpdateWorksheetRangeStyle
* Update cell&#39;s range style.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) range  -  The range. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (Style) body  -  with update style settings. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostUpdateWorksheetRangeStyle = function(name, sheetName, range, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof range === 'undefined' || range === null && range === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/style/?range={range}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof range !== 'undefined' &&  range !== null && range!== ''){            
			resourcePath = resourcePath.replace("{" + "range" + "}" , range);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]range.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorksheetUnmerge
* Unmerge cells.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) startRow  -  The start row. (required) 
* @param  (String) startColumn  -  The start column. (required) 
* @param  (String) totalRows  -  The total rows (required) 
* @param  (String) totalColumns  -  The total columns. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostWorksheetUnmerge = function(name, sheetName, startRow, startColumn, totalRows, totalColumns, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof startRow === 'undefined' || startRow === null && startRow === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof startColumn === 'undefined' || startColumn === null && startColumn === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof totalRows === 'undefined' || totalRows === null && totalRows === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof totalColumns === 'undefined' || totalColumns === null && totalColumns === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/unmerge/?startRow={startRow}&amp;startColumn={startColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startRow !== 'undefined' &&  startRow !== null && startRow!== ''){            
			resourcePath = resourcePath.replace("{" + "startRow" + "}" , startRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof startColumn !== 'undefined' &&  startColumn !== null && startColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "startColumn" + "}" , startColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]startColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalRows !== 'undefined' &&  totalRows !== null && totalRows!== ''){            
			resourcePath = resourcePath.replace("{" + "totalRows" + "}" , totalRows);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalRows.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalColumns !== 'undefined' &&  totalColumns !== null && totalColumns!== ''){            
			resourcePath = resourcePath.replace("{" + "totalColumns" + "}" , totalColumns);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalColumns.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorksheetCellSetValue
* Set cell value.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) cellName  -  The cell name. (required) 
* @param  (String) value  -  The cell value. (optional) 
* @param  (String) type  -  The value type. (optional) 
* @param  (String) formula  -  Formula for cell (optional) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns CellResponse (Map)
*/
CellsApi.prototype.PostWorksheetCellSetValue = function(name, sheetName, cellName, value, type, formula, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellName === 'undefined' || cellName === null && cellName === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/{cellName}/?appSid={appSid}&amp;value={value}&amp;type={type}&amp;formula={formula}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellName !== 'undefined' &&  cellName !== null && cellName!== ''){            
			resourcePath = resourcePath.replace("{" + "cellName" + "}" , cellName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof value !== 'undefined' &&  value !== null && value!== ''){            
			resourcePath = resourcePath.replace("{" + "value" + "}" , value);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]value.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof type !== 'undefined' &&  type !== null && type!== ''){            
			resourcePath = resourcePath.replace("{" + "type" + "}" , type);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]type.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof formula !== 'undefined' &&  formula !== null && formula!== ''){            
			resourcePath = resourcePath.replace("{" + "formula" + "}" , formula);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]formula.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostSetCellHtmlString
* Set htmlstring value into cell
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) cellName  -  The cell name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (File) file  -   (required) 
* @returns CellResponse (Map)
*/
CellsApi.prototype.PostSetCellHtmlString = function(name, sheetName, cellName, storage, folder, file, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellName === 'undefined' || cellName === null && cellName === ''){
		throw new Error('missing required parameters.');
    }   	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellName !== 'undefined' &&  cellName !== null && cellName!== ''){            
			resourcePath = resourcePath.replace("{" + "cellName" + "}" , cellName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetCellStyle
* Read cell&#39;s style info.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) cellName  -  Cell&#39;s name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns StyleResponse (Map)
*/
CellsApi.prototype.GetWorksheetCellStyle = function(name, sheetName, cellName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellName === 'undefined' || cellName === null && cellName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellName !== 'undefined' &&  cellName !== null && cellName!== ''){            
			resourcePath = resourcePath.replace("{" + "cellName" + "}" , cellName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostUpdateWorksheetCellStyle
* Update cell&#39;s style.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) cellName  -  The cell name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (Style) body  -  with update style settings. (required) 
* @returns StyleResponse (Map)
*/
CellsApi.prototype.PostUpdateWorksheetCellStyle = function(name, sheetName, cellName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellName === 'undefined' || cellName === null && cellName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellName !== 'undefined' &&  cellName !== null && cellName!== ''){            
			resourcePath = resourcePath.replace("{" + "cellName" + "}" , cellName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetCell
* Read cell data by cell&#39;s name.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) cellOrMethodName  -  The cell&#39;s or method name. (Method name like firstcell, endcell etc.) (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorksheetCell = function(name, sheetName, cellOrMethodName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellOrMethodName === 'undefined' || cellOrMethodName === null && cellOrMethodName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/{cellOrMethodName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellOrMethodName !== 'undefined' &&  cellOrMethodName !== null && cellOrMethodName!== ''){            
			resourcePath = resourcePath.replace("{" + "cellOrMethodName" + "}" , cellOrMethodName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellOrMethodName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostCopyCellIntoCell
* Copy cell into cell
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) destCellName  -  Destination cell name (required) 
* @param  (String) sheetName  -  Destination worksheet name. (required) 
* @param  (String) worksheet  -  Source worksheet name. (required) 
* @param  (String) cellname  -  Source cell name (optional) 
* @param  (String) row  -  Source row (optional) 
* @param  (String) column  -  Source column (optional) 
* @param  (String) storage  -  Storage name (optional) 
* @param  (String) folder  -  Folder name (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostCopyCellIntoCell = function(name, destCellName, sheetName, worksheet, cellname, row, column, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof destCellName === 'undefined' || destCellName === null && destCellName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof worksheet === 'undefined' || worksheet === null && worksheet === ''){
		throw new Error('missing required parameters.');
    }      	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/cells/{destCellName}/copy/?worksheet={worksheet}&amp;appSid={appSid}&amp;cellname={cellname}&amp;row={row}&amp;column={column}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof destCellName !== 'undefined' &&  destCellName !== null && destCellName!== ''){            
			resourcePath = resourcePath.replace("{" + "destCellName" + "}" , destCellName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]destCellName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof worksheet !== 'undefined' &&  worksheet !== null && worksheet!== ''){            
			resourcePath = resourcePath.replace("{" + "worksheet" + "}" , worksheet);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]worksheet.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellname !== 'undefined' &&  cellname !== null && cellname!== ''){            
			resourcePath = resourcePath.replace("{" + "cellname" + "}" , cellname);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellname.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof row !== 'undefined' &&  row !== null && row!== ''){            
			resourcePath = resourcePath.replace("{" + "row" + "}" , row);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]row.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof column !== 'undefined' &&  column !== null && column!== ''){            
			resourcePath = resourcePath.replace("{" + "column" + "}" , column);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]column.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetCharts
* Get worksheet charts info.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns ChartsResponse (Map)
*/
CellsApi.prototype.GetWorksheetCharts = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetClearCharts
* Clear the charts.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetClearCharts = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorksheetAddChart
* Add new chart to worksheet.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) chartType  -  Chart type, please refer property Type in chart resource. (required) 
* @param  (String) upperLeftRow  -  New chart upper left row. (optional) 
* @param  (String) upperLeftColumn  -  New chart upperleft column. (optional) 
* @param  (String) lowerRightRow  -  New chart lower right row. (optional) 
* @param  (String) lowerRightColumn  -  New chart lower right column. (optional) 
* @param  (String) area  -  Specifies values from which to plot the data series. (optional) 
* @param  (Boolean) isVertical  -  Specifies whether to plot the series from a range of cell values by row or by column. (optional) 
* @param  (String) categoryData  -  Gets or sets the range of category Axis values. It can be a range of cells (such as, d1:e10). (optional) 
* @param  (Boolean) isAutoGetSerialName  -  Specifies whether auto update serial name. (optional) 
* @param  (String) title  -  Specifies chart title name. (optional) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns ChartsResponse (Map)
*/
CellsApi.prototype.PutWorksheetAddChart = function(name, sheetName, chartType, upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, area, isVertical, categoryData, isAutoGetSerialName, title, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartType === 'undefined' || chartType === null && chartType === ''){
		throw new Error('missing required parameters.');
    }            	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/?chartType={chartType}&amp;appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;lowerRightRow={lowerRightRow}&amp;lowerRightColumn={lowerRightColumn}&amp;area={area}&amp;isVertical={isVertical}&amp;categoryData={categoryData}&amp;isAutoGetSerialName={isAutoGetSerialName}&amp;title={title}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartType !== 'undefined' &&  chartType !== null && chartType!== ''){            
			resourcePath = resourcePath.replace("{" + "chartType" + "}" , chartType);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartType.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof upperLeftRow !== 'undefined' &&  upperLeftRow !== null && upperLeftRow!== ''){            
			resourcePath = resourcePath.replace("{" + "upperLeftRow" + "}" , upperLeftRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]upperLeftRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof upperLeftColumn !== 'undefined' &&  upperLeftColumn !== null && upperLeftColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "upperLeftColumn" + "}" , upperLeftColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]upperLeftColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof lowerRightRow !== 'undefined' &&  lowerRightRow !== null && lowerRightRow!== ''){            
			resourcePath = resourcePath.replace("{" + "lowerRightRow" + "}" , lowerRightRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]lowerRightRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof lowerRightColumn !== 'undefined' &&  lowerRightColumn !== null && lowerRightColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "lowerRightColumn" + "}" , lowerRightColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]lowerRightColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof area !== 'undefined' &&  area !== null && area!== ''){            
			resourcePath = resourcePath.replace("{" + "area" + "}" , area);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]area.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof isVertical !== 'undefined' &&  isVertical !== null && isVertical!== ''){            
			resourcePath = resourcePath.replace("{" + "isVertical" + "}" , isVertical);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]isVertical.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof categoryData !== 'undefined' &&  categoryData !== null && categoryData!== ''){            
			resourcePath = resourcePath.replace("{" + "categoryData" + "}" , categoryData);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]categoryData.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof isAutoGetSerialName !== 'undefined' &&  isAutoGetSerialName !== null && isAutoGetSerialName!== ''){            
			resourcePath = resourcePath.replace("{" + "isAutoGetSerialName" + "}" , isAutoGetSerialName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]isAutoGetSerialName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof title !== 'undefined' &&  title !== null && title!== ''){            
			resourcePath = resourcePath.replace("{" + "title" + "}" , title);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]title.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetDeleteChart
* Delete worksheet chart by index.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns ChartsResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetDeleteChart = function(name, sheetName, chartIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetChartArea
* Get chart area info.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Workbook folder. (optional) 
* @returns ChartAreaResponse (Map)
*/
CellsApi.prototype.GetChartArea = function(name, sheetName, chartIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetChartAreaBorder
* Get chart area border info.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Workbook folder. (optional) 
* @returns LineResponse (Map)
*/
CellsApi.prototype.GetChartAreaBorder = function(name, sheetName, chartIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/border/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetChartAreaFillFormat
* Get chart area fill format info.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Workbook folder. (optional) 
* @returns FillFormatResponse (Map)
*/
CellsApi.prototype.GetChartAreaFillFormat = function(name, sheetName, chartIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/fillFormat/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetChartLegend
* Get chart legend
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns LegendResponse (Map)
*/
CellsApi.prototype.GetWorksheetChartLegend = function(name, sheetName, chartIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorksheetChartLegend
* Show legend in chart
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PutWorksheetChartLegend = function(name, sheetName, chartIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorksheetChartLegend
* Update chart legend
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (Legend) body  -   (required) 
* @returns LegendResponse (Map)
*/
CellsApi.prototype.PostWorksheetChartLegend = function(name, sheetName, chartIndex, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetChartLegend
* Hide legend in chart
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetChartLegend = function(name, sheetName, chartIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorksheetChartTitle
* Add chart title / Set chart title visible
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (Title) body  -  Chart title. (required) 
* @returns TitleResponse (Map)
*/
CellsApi.prototype.PutWorksheetChartTitle = function(name, sheetName, chartIndex, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorksheetChartTitle
* Update chart title
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (Title) body  -  Chart title (required) 
* @returns TitleResponse (Map)
*/
CellsApi.prototype.PostWorksheetChartTitle = function(name, sheetName, chartIndex, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetChartTitle
* Hide title in chart
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartIndex  -  The chart index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetChartTitle = function(name, sheetName, chartIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartIndex === 'undefined' || chartIndex === null && chartIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartIndex !== 'undefined' &&  chartIndex !== null && chartIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "chartIndex" + "}" , chartIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetChart
* Get chart info.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartNumber  -  The chart number. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorksheetChart = function(name, sheetName, chartNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartNumber === 'undefined' || chartNumber === null && chartNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartNumber !== 'undefined' &&  chartNumber !== null && chartNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "chartNumber" + "}" , chartNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetChartWithFormat
* Get chart in some format.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) chartNumber  -  The chart number. (required) 
* @param  (String) format  -  Chart conversion format. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorksheetChartWithFormat = function(name, sheetName, chartNumber, format, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof chartNumber === 'undefined' || chartNumber === null && chartNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof chartNumber !== 'undefined' &&  chartNumber !== null && chartNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "chartNumber" + "}" , chartNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]chartNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetComments
* Get worksheet comments.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns CommentsResponse (Map)
*/
CellsApi.prototype.GetWorkSheetComments = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/comments/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetComment
* Get worksheet comment by cell name.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) cellName  -  The cell name (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns CommentResponse (Map)
*/
CellsApi.prototype.GetWorkSheetComment = function(name, sheetName, cellName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellName === 'undefined' || cellName === null && cellName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellName !== 'undefined' &&  cellName !== null && cellName!== ''){            
			resourcePath = resourcePath.replace("{" + "cellName" + "}" , cellName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorkSheetComment
* Add worksheet&#39;s cell comment.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) cellName  -  The cell name (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (Comment) body  -  Comment object (required) 
* @returns CommentResponse (Map)
*/
CellsApi.prototype.PutWorkSheetComment = function(name, sheetName, cellName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellName === 'undefined' || cellName === null && cellName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellName !== 'undefined' &&  cellName !== null && cellName!== ''){            
			resourcePath = resourcePath.replace("{" + "cellName" + "}" , cellName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkSheetComment
* Update worksheet&#39;s cell comment.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) cellName  -  The cell name (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (Comment) body  -  Comment object (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostWorkSheetComment = function(name, sheetName, cellName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellName === 'undefined' || cellName === null && cellName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellName !== 'undefined' &&  cellName !== null && cellName!== ''){            
			resourcePath = resourcePath.replace("{" + "cellName" + "}" , cellName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorkSheetComment
* Delete worksheet&#39;s cell comment.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) cellName  -  The cell name (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorkSheetComment = function(name, sheetName, cellName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellName === 'undefined' || cellName === null && cellName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/comments/{cellName}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellName !== 'undefined' &&  cellName !== null && cellName!== ''){            
			resourcePath = resourcePath.replace("{" + "cellName" + "}" , cellName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostCopyWorksheet
* Copy worksheet
*
* @param  (String) name  -   (required) 
* @param  (String) sheetName  -   (required) 
* @param  (String) sourceSheet  -   (required) 
* @param  (String) folder  -   (optional) 
* @param  (String) storage  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostCopyWorksheet = function(name, sheetName, sourceSheet, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sourceSheet === 'undefined' || sourceSheet === null && sourceSheet === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/copy/?sourceSheet={sourceSheet}&amp;appSid={appSid}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sourceSheet !== 'undefined' &&  sourceSheet !== null && sourceSheet!== ''){            
			resourcePath = resourcePath.replace("{" + "sourceSheet" + "}" , sourceSheet);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sourceSheet.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkSheetTextSearch
* Search text.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) text  -  Text to search. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns TextItemsResponse (Map)
*/
CellsApi.prototype.PostWorkSheetTextSearch = function(name, sheetName, text, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof text === 'undefined' || text === null && text === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/findText/?text={text}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof text !== 'undefined' &&  text !== null && text!== ''){            
			resourcePath = resourcePath.replace("{" + "text" + "}" , text);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]text.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetCalculateFormula
* Calculate formula value.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) formula  -  The formula. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns SingleValueResponse (Map)
*/
CellsApi.prototype.GetWorkSheetCalculateFormula = function(name, sheetName, formula, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof formula === 'undefined' || formula === null && formula === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/formulaResult/?formula={formula}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof formula !== 'undefined' &&  formula !== null && formula!== ''){            
			resourcePath = resourcePath.replace("{" + "formula" + "}" , formula);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]formula.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorksheetFreezePanes
* Set freeze panes
*
* @param  (String) name  -   (required) 
* @param  (String) sheetName  -   (required) 
* @param  (String) row  -   (required) 
* @param  (String) column  -   (required) 
* @param  (String) freezedRows  -   (required) 
* @param  (String) freezedColumns  -   (required) 
* @param  (String) folder  -   (optional) 
* @param  (String) storage  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PutWorksheetFreezePanes = function(name, sheetName, row, column, freezedRows, freezedColumns, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof row === 'undefined' || row === null && row === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof column === 'undefined' || column === null && column === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof freezedRows === 'undefined' || freezedRows === null && freezedRows === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof freezedColumns === 'undefined' || freezedColumns === null && freezedColumns === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/freezepanes/?appSid={appSid}&amp;row={row}&amp;column={column}&amp;freezedRows={freezedRows}&amp;freezedColumns={freezedColumns}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof row !== 'undefined' &&  row !== null && row!== ''){            
			resourcePath = resourcePath.replace("{" + "row" + "}" , row);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]row.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof column !== 'undefined' &&  column !== null && column!== ''){            
			resourcePath = resourcePath.replace("{" + "column" + "}" , column);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]column.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof freezedRows !== 'undefined' &&  freezedRows !== null && freezedRows!== ''){            
			resourcePath = resourcePath.replace("{" + "freezedRows" + "}" , freezedRows);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]freezedRows.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof freezedColumns !== 'undefined' &&  freezedColumns !== null && freezedColumns!== ''){            
			resourcePath = resourcePath.replace("{" + "freezedColumns" + "}" , freezedColumns);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]freezedColumns.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetFreezePanes
* Unfreeze panes
*
* @param  (String) name  -   (required) 
* @param  (String) sheetName  -   (required) 
* @param  (String) row  -   (required) 
* @param  (String) column  -   (required) 
* @param  (String) freezedRows  -   (required) 
* @param  (String) freezedColumns  -   (required) 
* @param  (String) folder  -   (optional) 
* @param  (String) storage  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetFreezePanes = function(name, sheetName, row, column, freezedRows, freezedColumns, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof row === 'undefined' || row === null && row === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof column === 'undefined' || column === null && column === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof freezedRows === 'undefined' || freezedRows === null && freezedRows === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof freezedColumns === 'undefined' || freezedColumns === null && freezedColumns === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/freezepanes/?appSid={appSid}&amp;row={row}&amp;column={column}&amp;freezedRows={freezedRows}&amp;freezedColumns={freezedColumns}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof row !== 'undefined' &&  row !== null && row!== ''){            
			resourcePath = resourcePath.replace("{" + "row" + "}" , row);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]row.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof column !== 'undefined' &&  column !== null && column!== ''){            
			resourcePath = resourcePath.replace("{" + "column" + "}" , column);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]column.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof freezedRows !== 'undefined' &&  freezedRows !== null && freezedRows!== ''){            
			resourcePath = resourcePath.replace("{" + "freezedRows" + "}" , freezedRows);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]freezedRows.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof freezedColumns !== 'undefined' &&  freezedColumns !== null && freezedColumns!== ''){            
			resourcePath = resourcePath.replace("{" + "freezedColumns" + "}" , freezedColumns);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]freezedColumns.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorkSheetHyperlink
* Add worksheet hyperlink.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) firstRow  -   (required) 
* @param  (String) firstColumn  -   (required) 
* @param  (String) totalRows  -   (required) 
* @param  (String) totalColumns  -   (required) 
* @param  (String) address  -   (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns HyperlinkResponse (Map)
*/
CellsApi.prototype.PutWorkSheetHyperlink = function(name, sheetName, firstRow, firstColumn, totalRows, totalColumns, address, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof firstRow === 'undefined' || firstRow === null && firstRow === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof firstColumn === 'undefined' || firstColumn === null && firstColumn === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof totalRows === 'undefined' || totalRows === null && totalRows === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof totalColumns === 'undefined' || totalColumns === null && totalColumns === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof address === 'undefined' || address === null && address === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;firstRow={firstRow}&amp;firstColumn={firstColumn}&amp;totalRows={totalRows}&amp;totalColumns={totalColumns}&amp;address={address}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof firstRow !== 'undefined' &&  firstRow !== null && firstRow!== ''){            
			resourcePath = resourcePath.replace("{" + "firstRow" + "}" , firstRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]firstRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof firstColumn !== 'undefined' &&  firstColumn !== null && firstColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "firstColumn" + "}" , firstColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]firstColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalRows !== 'undefined' &&  totalRows !== null && totalRows!== ''){            
			resourcePath = resourcePath.replace("{" + "totalRows" + "}" , totalRows);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalRows.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof totalColumns !== 'undefined' &&  totalColumns !== null && totalColumns!== ''){            
			resourcePath = resourcePath.replace("{" + "totalColumns" + "}" , totalColumns);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]totalColumns.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof address !== 'undefined' &&  address !== null && address!== ''){            
			resourcePath = resourcePath.replace("{" + "address" + "}" , address);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]address.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetHyperlinks
* Get worksheet hyperlinks.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns HyperlinksResponse (Map)
*/
CellsApi.prototype.GetWorkSheetHyperlinks = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorkSheetHyperlinks
* Delete all hyperlinks in worksheet.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorkSheetHyperlinks = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/hyperlinks/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetHyperlink
* Get worksheet hyperlink by index.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) hyperlinkIndex  -  The hyperlink&#39;s index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns HyperlinkResponse (Map)
*/
CellsApi.prototype.GetWorkSheetHyperlink = function(name, sheetName, hyperlinkIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof hyperlinkIndex === 'undefined' || hyperlinkIndex === null && hyperlinkIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof hyperlinkIndex !== 'undefined' &&  hyperlinkIndex !== null && hyperlinkIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "hyperlinkIndex" + "}" , hyperlinkIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]hyperlinkIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkSheetHyperlink
* Update worksheet hyperlink by index.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) hyperlinkIndex  -  The hyperlink&#39;s index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (Hyperlink) body  -  Hyperlink object (required) 
* @returns HyperlinkResponse (Map)
*/
CellsApi.prototype.PostWorkSheetHyperlink = function(name, sheetName, hyperlinkIndex, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof hyperlinkIndex === 'undefined' || hyperlinkIndex === null && hyperlinkIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof hyperlinkIndex !== 'undefined' &&  hyperlinkIndex !== null && hyperlinkIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "hyperlinkIndex" + "}" , hyperlinkIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]hyperlinkIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorkSheetHyperlink
* Delete worksheet hyperlink by index.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) hyperlinkIndex  -  The hyperlink&#39;s index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorkSheetHyperlink = function(name, sheetName, hyperlinkIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof hyperlinkIndex === 'undefined' || hyperlinkIndex === null && hyperlinkIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof hyperlinkIndex !== 'undefined' &&  hyperlinkIndex !== null && hyperlinkIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "hyperlinkIndex" + "}" , hyperlinkIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]hyperlinkIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetMergedCells
* Get worksheet merged cells.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The workseet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document folder. (optional) 
* @returns MergedCellsResponse (Map)
*/
CellsApi.prototype.GetWorkSheetMergedCells = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/mergedCells/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetMergedCell
* Get worksheet merged cell by its index.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) mergedCellIndex  -  Merged cell index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document folder. (optional) 
* @returns MergedCellResponse (Map)
*/
CellsApi.prototype.GetWorkSheetMergedCell = function(name, sheetName, mergedCellIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof mergedCellIndex === 'undefined' || mergedCellIndex === null && mergedCellIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/mergedCells/{mergedCellIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof mergedCellIndex !== 'undefined' &&  mergedCellIndex !== null && mergedCellIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "mergedCellIndex" + "}" , mergedCellIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]mergedCellIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetOleObjects
* Get worksheet OLE objects info.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns OleObjectsResponse (Map)
*/
CellsApi.prototype.GetWorksheetOleObjects = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetOleObjects
* Delete all OLE objects.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worsheet name. (required) 
* @param  (String) storage  -  The workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetOleObjects = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorksheetOleObject
* Add OLE object
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worsheet name. (required) 
* @param  (String) upperLeftRow  -  Upper left row index (optional) 
* @param  (String) upperLeftColumn  -  Upper left column index (optional) 
* @param  (String) height  -  Height of oleObject, in unit of pixel (optional) 
* @param  (String) width  -  Width of oleObject, in unit of pixel (optional) 
* @param  (String) oleFile  -  OLE filename (optional) 
* @param  (String) imageFile  -  Image filename (optional) 
* @param  (String) storage  -  The workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (OleObject) body  -  Ole Object (required) 
* @returns OleObjectResponse (Map)
*/
CellsApi.prototype.PutWorksheetOleObject = function(name, sheetName, upperLeftRow, upperLeftColumn, height, width, oleFile, imageFile, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }         	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/oleobjects/?appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;height={height}&amp;width={width}&amp;oleFile={oleFile}&amp;imageFile={imageFile}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof upperLeftRow !== 'undefined' &&  upperLeftRow !== null && upperLeftRow!== ''){            
			resourcePath = resourcePath.replace("{" + "upperLeftRow" + "}" , upperLeftRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]upperLeftRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof upperLeftColumn !== 'undefined' &&  upperLeftColumn !== null && upperLeftColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "upperLeftColumn" + "}" , upperLeftColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]upperLeftColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof height !== 'undefined' &&  height !== null && height!== ''){            
			resourcePath = resourcePath.replace("{" + "height" + "}" , height);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]height.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof width !== 'undefined' &&  width !== null && width!== ''){            
			resourcePath = resourcePath.replace("{" + "width" + "}" , width);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]width.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof oleFile !== 'undefined' &&  oleFile !== null && oleFile!== ''){            
			resourcePath = resourcePath.replace("{" + "oleFile" + "}" , oleFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]oleFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof imageFile !== 'undefined' &&  imageFile !== null && imageFile!== ''){            
			resourcePath = resourcePath.replace("{" + "imageFile" + "}" , imageFile);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]imageFile.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetOleObject
* Get OLE object info.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) objectNumber  -  The object number. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorksheetOleObject = function(name, sheetName, objectNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof objectNumber === 'undefined' || objectNumber === null && objectNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof objectNumber !== 'undefined' &&  objectNumber !== null && objectNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "objectNumber" + "}" , objectNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]objectNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetOleObjectWithFormat
* Get OLE object info or get the OLE object in some format.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) objectNumber  -  The object number. (required) 
* @param  (String) format  -  Object conversion format. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorksheetOleObjectWithFormat = function(name, sheetName, objectNumber, format, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof objectNumber === 'undefined' || objectNumber === null && objectNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof objectNumber !== 'undefined' &&  objectNumber !== null && objectNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "objectNumber" + "}" , objectNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]objectNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostUpdateWorksheetOleObject
* Update OLE object.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worsheet name. (required) 
* @param  (String) oleObjectIndex  -  Ole object index (required) 
* @param  (String) storage  -  The workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (OleObject) body  -  Ole Object (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostUpdateWorksheetOleObject = function(name, sheetName, oleObjectIndex, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof oleObjectIndex === 'undefined' || oleObjectIndex === null && oleObjectIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof oleObjectIndex !== 'undefined' &&  oleObjectIndex !== null && oleObjectIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "oleObjectIndex" + "}" , oleObjectIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]oleObjectIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetOleObject
* Delete OLE object.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worsheet name. (required) 
* @param  (String) oleObjectIndex  -  Ole object index (required) 
* @param  (String) storage  -  The workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetOleObject = function(name, sheetName, oleObjectIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof oleObjectIndex === 'undefined' || oleObjectIndex === null && oleObjectIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof oleObjectIndex !== 'undefined' &&  oleObjectIndex !== null && oleObjectIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "oleObjectIndex" + "}" , oleObjectIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]oleObjectIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetPictures
* Read worksheet pictures.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns PicturesResponse (Map)
*/
CellsApi.prototype.GetWorksheetPictures = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorkSheetPictures
* Delete all pictures in worksheet.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorkSheetPictures = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorksheetAddPicture
* Add a new worksheet picture.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worsheet name. (required) 
* @param  (String) upperLeftRow  -  The image upper left row. (optional) 
* @param  (String) upperLeftColumn  -  The image upper left column. (optional) 
* @param  (String) lowerRightRow  -  The image low right row. (optional) 
* @param  (String) lowerRightColumn  -  The image low right column. (optional) 
* @param  (String) picturePath  -  The picture path, if not provided the picture data is inspected in the request body. (optional) 
* @param  (String) storage  -  The workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (File) file  -   (optional) 
* @returns PicturesResponse (Map)
*/
CellsApi.prototype.PutWorksheetAddPicture = function(name, sheetName, upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, picturePath, storage, folder, file, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }        	
	
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pictures/?appSid={appSid}&amp;upperLeftRow={upperLeftRow}&amp;upperLeftColumn={upperLeftColumn}&amp;lowerRightRow={lowerRightRow}&amp;lowerRightColumn={lowerRightColumn}&amp;picturePath={picturePath}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof upperLeftRow !== 'undefined' &&  upperLeftRow !== null && upperLeftRow!== ''){            
			resourcePath = resourcePath.replace("{" + "upperLeftRow" + "}" , upperLeftRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]upperLeftRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof upperLeftColumn !== 'undefined' &&  upperLeftColumn !== null && upperLeftColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "upperLeftColumn" + "}" , upperLeftColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]upperLeftColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof lowerRightRow !== 'undefined' &&  lowerRightRow !== null && lowerRightRow!== ''){            
			resourcePath = resourcePath.replace("{" + "lowerRightRow" + "}" , lowerRightRow);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]lowerRightRow.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof lowerRightColumn !== 'undefined' &&  lowerRightColumn !== null && lowerRightColumn!== ''){            
			resourcePath = resourcePath.replace("{" + "lowerRightColumn" + "}" , lowerRightColumn);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]lowerRightColumn.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof picturePath !== 'undefined' &&  picturePath !== null && picturePath!== ''){            
			resourcePath = resourcePath.replace("{" + "picturePath" + "}" , picturePath);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]picturePath.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkSheetPicture
* Update worksheet picture by index.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) pictureIndex  -  The picture&#39;s index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (Picture) body  -  Picture object (required) 
* @returns PictureResponse (Map)
*/
CellsApi.prototype.PostWorkSheetPicture = function(name, sheetName, pictureIndex, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pictureIndex === 'undefined' || pictureIndex === null && pictureIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pictureIndex !== 'undefined' &&  pictureIndex !== null && pictureIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pictureIndex" + "}" , pictureIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pictureIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetPicture
* Delete a picture object in worksheet
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worsheet name. (required) 
* @param  (String) pictureIndex  -  Picture index (required) 
* @param  (String) storage  -  The workbook storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetPicture = function(name, sheetName, pictureIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pictureIndex === 'undefined' || pictureIndex === null && pictureIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pictureIndex !== 'undefined' &&  pictureIndex !== null && pictureIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pictureIndex" + "}" , pictureIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pictureIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetPicture
* GRead worksheet picture by number.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) pictureNumber  -  The picture number. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorksheetPicture = function(name, sheetName, pictureNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pictureNumber === 'undefined' || pictureNumber === null && pictureNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pictureNumber !== 'undefined' &&  pictureNumber !== null && pictureNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pictureNumber" + "}" , pictureNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pictureNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetPictureWithFormat
* GRead worksheet picture by number.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) pictureNumber  -  The picture number. (required) 
* @param  (String) format  -  Picture conversion format. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns ResponseMessage (Map)
*/
CellsApi.prototype.GetWorksheetPictureWithFormat = function(name, sheetName, pictureNumber, format, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pictureNumber === 'undefined' || pictureNumber === null && pictureNumber === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof format === 'undefined' || format === null && format === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/?appSid={appSid}&amp;toFormat={toFormat}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pictureNumber !== 'undefined' &&  pictureNumber !== null && pictureNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pictureNumber" + "}" , pictureNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pictureNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof format !== 'undefined' &&  format !== null && format!== ''){            
			resourcePath = resourcePath.replace("{" + "format" + "}" , format);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]format.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/octet-stream'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetExtractBarcodes
* Extract barcodes from worksheet picture.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) pictureNumber  -  Picture index. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Workbook folder. (optional) 
* @returns BarcodeResponseList (Map)
*/
CellsApi.prototype.GetExtractBarcodes = function(name, sheetName, pictureNumber, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pictureNumber === 'undefined' || pictureNumber === null && pictureNumber === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/recognize/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pictureNumber !== 'undefined' &&  pictureNumber !== null && pictureNumber!== ''){            
			resourcePath = resourcePath.replace("{" + "pictureNumber" + "}" , pictureNumber);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pictureNumber.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetPivotTables
* Get worksheet pivottables info.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns PivotTablesResponse (Map)
*/
CellsApi.prototype.GetWorksheetPivotTables = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetPivotTables
* Delete worksheet pivot tables
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetPivotTables = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorksheetPivotTable
* Add a pivot table into worksheet.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @param  (String) sourceData  -  The data for the new PivotTable cache. (optional) 
* @param  (String) destCellName  -  The cell in the upper-left corner of the PivotTable report&#39;s destination range. (optional) 
* @param  (String) tableName  -  The name of the new PivotTable report. (optional) 
* @param  (Boolean) useSameSource  -  Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory. (optional) 
* @param  (CreatePivotTableRequest) body  -  CreatePivotTableRequest dto in request body. (required) 
* @returns PivotTableResponse (Map)
*/
CellsApi.prototype.PutWorksheetPivotTable = function(name, sheetName, storage, folder, sourceData, destCellName, tableName, useSameSource, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }       	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}&amp;sourceData={sourceData}&amp;destCellName={destCellName}&amp;tableName={tableName}&amp;useSameSource={useSameSource}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sourceData !== 'undefined' &&  sourceData !== null && sourceData!== ''){            
			resourcePath = resourcePath.replace("{" + "sourceData" + "}" , sourceData);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sourceData.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof destCellName !== 'undefined' &&  destCellName !== null && destCellName!== ''){            
			resourcePath = resourcePath.replace("{" + "destCellName" + "}" , destCellName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]destCellName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof tableName !== 'undefined' &&  tableName !== null && tableName!== ''){            
			resourcePath = resourcePath.replace("{" + "tableName" + "}" , tableName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]tableName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof useSameSource !== 'undefined' &&  useSameSource !== null && useSameSource!== ''){            
			resourcePath = resourcePath.replace("{" + "useSameSource" + "}" , useSameSource);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]useSameSource.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorksheetPivotTable
* Delete worksheet pivot table by index
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) pivotTableIndex  -  Pivot table index (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteWorksheetPivotTable = function(name, sheetName, pivotTableIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotTableIndex === 'undefined' || pivotTableIndex === null && pivotTableIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotTableIndex !== 'undefined' &&  pivotTableIndex !== null && pivotTableIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , pivotTableIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotTableIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostPivotTableCellStyle
* Update cell style for pivot table
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) pivotTableIndex  -  Pivot table index (required) 
* @param  (String) column  -   (required) 
* @param  (String) row  -   (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @param  (Style) body  -  Style dto in request body. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostPivotTableCellStyle = function(name, sheetName, pivotTableIndex, column, row, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotTableIndex === 'undefined' || pivotTableIndex === null && pivotTableIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof column === 'undefined' || column === null && column === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof row === 'undefined' || row === null && row === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Format/?column={column}&amp;row={row}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotTableIndex !== 'undefined' &&  pivotTableIndex !== null && pivotTableIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , pivotTableIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotTableIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof column !== 'undefined' &&  column !== null && column!== ''){            
			resourcePath = resourcePath.replace("{" + "column" + "}" , column);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]column.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof row !== 'undefined' &&  row !== null && row!== ''){            
			resourcePath = resourcePath.replace("{" + "row" + "}" , row);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]row.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostPivotTableStyle
* Update style for pivot table
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) pivotTableIndex  -  Pivot table index (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @param  (Style) body  -  Style dto in request body. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostPivotTableStyle = function(name, sheetName, pivotTableIndex, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotTableIndex === 'undefined' || pivotTableIndex === null && pivotTableIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/FormatAll/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotTableIndex !== 'undefined' &&  pivotTableIndex !== null && pivotTableIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , pivotTableIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotTableIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutPivotTableField
* Add pivot field into into pivot table
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) pivotTableIndex  -  Pivot table index (required) 
* @param  (String) pivotFieldType  -   (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @param  (PivotTableFieldRequest) body  -  Dto that conrains field indexes (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PutPivotTableField = function(name, sheetName, pivotTableIndex, pivotFieldType, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotTableIndex === 'undefined' || pivotTableIndex === null && pivotTableIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotFieldType === 'undefined' || pivotFieldType === null && pivotFieldType === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/?pivotFieldType={pivotFieldType}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotTableIndex !== 'undefined' &&  pivotTableIndex !== null && pivotTableIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , pivotTableIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotTableIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotFieldType !== 'undefined' &&  pivotFieldType !== null && pivotFieldType!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotFieldType" + "}" , pivotFieldType);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotFieldType.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorksheetPivotTable
* Get worksheet pivottable info by index.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) pivottableIndex  -   (required) 
* @param  (String) storage  -  Workbook storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns PivotTableResponse (Map)
*/
CellsApi.prototype.GetWorksheetPivotTable = function(name, sheetName, pivottableIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivottableIndex === 'undefined' || pivottableIndex === null && pivottableIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/{pivottableIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivottableIndex !== 'undefined' &&  pivottableIndex !== null && pivottableIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pivottableIndex" + "}" , pivottableIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivottableIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostMoveWorksheet
* Move worksheet.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @param  (WorksheetMovingRequest) body  -  with moving parameters. (required) 
* @returns WorksheetsResponse (Map)
*/
CellsApi.prototype.PostMoveWorksheet = function(name, sheetName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/position/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutProtectWorksheet
* Protect worksheet.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document folder. (optional) 
* @param  (ProtectSheetParameter) body  -  with protection settings. (required) 
* @returns WorksheetResponse (Map)
*/
CellsApi.prototype.PutProtectWorksheet = function(name, sheetName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteUnprotectWorksheet
* Unprotect worksheet.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document folder. (optional) 
* @param  (ProtectSheetParameter) body  -  with protection settings. Only password is used here. (required) 
* @returns WorksheetResponse (Map)
*/
CellsApi.prototype.DeleteUnprotectWorksheet = function(name, sheetName, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/protection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostRenameWorksheet
* Rename worksheet
*
* @param  (String) name  -   (required) 
* @param  (String) sheetName  -   (required) 
* @param  (String) newname  -   (required) 
* @param  (String) folder  -   (optional) 
* @param  (String) storage  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostRenameWorksheet = function(name, sheetName, newname, folder, storage, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newname === 'undefined' || newname === null && newname === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/rename/?newname={newname}&amp;appSid={appSid}&amp;folder={folder}&amp;storage={storage}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newname !== 'undefined' &&  newname !== null && newname!== ''){            
			resourcePath = resourcePath.replace("{" + "newname" + "}" , newname);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newname.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorsheetTextReplace
* Replace text.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) oldValue  -  The old text to replace. (required) 
* @param  (String) newValue  -  The new text to replace by. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns WorksheetReplaceResponse (Map)
*/
CellsApi.prototype.PostWorsheetTextReplace = function(name, sheetName, oldValue, newValue, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof oldValue === 'undefined' || oldValue === null && oldValue === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof newValue === 'undefined' || newValue === null && newValue === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/replaceText/?oldValue={oldValue}&amp;newValue={newValue}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof oldValue !== 'undefined' &&  oldValue !== null && oldValue!== ''){            
			resourcePath = resourcePath.replace("{" + "oldValue" + "}" , oldValue);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]oldValue.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof newValue !== 'undefined' &&  newValue !== null && newValue!== ''){            
			resourcePath = resourcePath.replace("{" + "newValue" + "}" , newValue);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]newValue.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorksheetRangeSort
* Sort worksheet range.
*
* @param  (String) name  -  The workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) cellArea  -  The range to sort. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The workbook folder. (optional) 
* @param  (DataSorter) body  -  with sorting settings. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostWorksheetRangeSort = function(name, sheetName, cellArea, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof cellArea === 'undefined' || cellArea === null && cellArea === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/sort/?cellArea={cellArea}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof cellArea !== 'undefined' &&  cellArea !== null && cellArea!== ''){            
			resourcePath = resourcePath.replace("{" + "cellArea" + "}" , cellArea);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]cellArea.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetTextItems
* Get worksheet text items.
*
* @param  (String) name  -  Workbook name. (required) 
* @param  (String) sheetName  -  The worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The workbook&#39;s folder. (optional) 
* @returns TextItemsResponse (Map)
*/
CellsApi.prototype.GetWorkSheetTextItems = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/textItems/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutWorkSheetValidation
* Add worksheet validation at index.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) range  -  Specified cells area (optional) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @param  (File) file  -   (required) 
* @returns ValidationResponse (Map)
*/
CellsApi.prototype.PutWorkSheetValidation = function(name, sheetName, range, storage, folder, file, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }    	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/validations/?appSid={appSid}&amp;range={range}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof range !== 'undefined' &&  range !== null && range!== ''){            
			resourcePath = resourcePath.replace("{" + "range" + "}" , range);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]range.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetValidations
* Get worksheet validations.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document folder. (optional) 
* @returns ValidationsResponse (Map)
*/
CellsApi.prototype.GetWorkSheetValidations = function(name, sheetName, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/validations/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetWorkSheetValidation
* Get worksheet validation by index.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) validationIndex  -  The validation index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns ValidationResponse (Map)
*/
CellsApi.prototype.GetWorkSheetValidation = function(name, sheetName, validationIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof validationIndex === 'undefined' || validationIndex === null && validationIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof validationIndex !== 'undefined' &&  validationIndex !== null && validationIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "validationIndex" + "}" , validationIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]validationIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkSheetValidation
* Update worksheet validation by index.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) validationIndex  -  The validation index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @param  (File) file  -   (required) 
* @returns ValidationResponse (Map)
*/
CellsApi.prototype.PostWorkSheetValidation = function(name, sheetName, validationIndex, storage, folder, file, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof validationIndex === 'undefined' || validationIndex === null && validationIndex === ''){
		throw new Error('missing required parameters.');
    }   	
	
	if( typeof file === 'undefined' || file === null && file === ''){
		throw new Error('missing required file.');
    }	
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof validationIndex !== 'undefined' &&  validationIndex !== null && validationIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "validationIndex" + "}" , validationIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]validationIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteWorkSheetValidation
* Delete worksheet validation by index.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (String) validationIndex  -  The validation index. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns ValidationResponse (Map)
*/
CellsApi.prototype.DeleteWorkSheetValidation = function(name, sheetName, validationIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof validationIndex === 'undefined' || validationIndex === null && validationIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof validationIndex !== 'undefined' &&  validationIndex !== null && validationIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "validationIndex" + "}" , validationIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]validationIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutChangeVisibilityWorksheet
* Change worksheet visibility.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) sheetName  -  Worksheet name. (required) 
* @param  (Boolean) isVisible  -  New worksheet visibility value. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  The document folder. (optional) 
* @returns WorksheetResponse (Map)
*/
CellsApi.prototype.PutChangeVisibilityWorksheet = function(name, sheetName, isVisible, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof isVisible === 'undefined' || isVisible === null && isVisible === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/visible/?isVisible={isVisible}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof isVisible !== 'undefined' &&  isVisible !== null && isVisible!== ''){            
			resourcePath = resourcePath.replace("{" + "isVisible" + "}" , isVisible);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]isVisible.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PutDocumentProtectFromChanges
* Protect document from changes.
*
* @param  (String) name  -  Document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @param  (PasswordRequest) body  -  Modification password. (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PutDocumentProtectFromChanges = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/writeProtection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'PUT'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* DeleteDocumentUnProtectFromChanges
* Unprotect document from changes.
*
* @param  (String) name  -  The document name. (required) 
* @param  (String) storage  -  The document storage. (optional) 
* @param  (String) folder  -  Document&#39;s folder. (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeleteDocumentUnProtectFromChanges = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/writeProtection/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }

/**
* GetWorkbookSettings
* 
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns WorkbookSettingsResponse (Map)
*/
CellsApi.prototype.GetWorkbookSettings = function(name, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/settings/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* PostWorkbookSettings
* 
*
* @param  (String) name  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (WorkbookSettings) body  -   (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostWorkbookSettings = function(name, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/settings/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }

/**
* PostWorksheetPivotTableCalculate
* 
*
* @param  (String) name  -   (required) 
* @param  (String) sheetName  -   (required) 
* @param  (String) pivotTableIndex  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.PostWorksheetPivotTableCalculate = function(name, sheetName, pivotTableIndex, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotTableIndex === 'undefined' || pivotTableIndex === null && pivotTableIndex === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Calculate/?appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotTableIndex !== 'undefined' &&  pivotTableIndex !== null && pivotTableIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , pivotTableIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotTableIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }

/**
* GetPivotTableField
* 
*
* @param  (String) name  -   (required) 
* @param  (String) sheetName  -   (required) 
* @param  (String) pivotTableIndex  -   (required) 
* @param  (String) pivotFieldIndex  -   (required) 
* @param  (String) pivotFieldType  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @returns PivotFieldResponse (Map)
*/
CellsApi.prototype.GetPivotTableField = function(name, sheetName, pivotTableIndex, pivotFieldIndex, pivotFieldType, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotTableIndex === 'undefined' || pivotTableIndex === null && pivotTableIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotFieldIndex === 'undefined' || pivotFieldIndex === null && pivotFieldIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotFieldType === 'undefined' || pivotFieldType === null && pivotFieldType === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/?pivotFieldIndex={pivotFieldIndex}&amp;pivotFieldType={pivotFieldType}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotTableIndex !== 'undefined' &&  pivotTableIndex !== null && pivotTableIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , pivotTableIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotTableIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotFieldIndex !== 'undefined' &&  pivotFieldIndex !== null && pivotFieldIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotFieldIndex" + "}" , pivotFieldIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotFieldIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotFieldType !== 'undefined' &&  pivotFieldType !== null && pivotFieldType!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotFieldType" + "}" , pivotFieldType);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotFieldType.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }

/**
* DeletePivotTableField
* 
*
* @param  (String) name  -   (required) 
* @param  (String) sheetName  -   (required) 
* @param  (String) pivotTableIndex  -   (required) 
* @param  (String) pivotFieldType  -   (required) 
* @param  (String) storage  -   (optional) 
* @param  (String) folder  -   (optional) 
* @param  (PivotTableFieldRequest) body  -   (required) 
* @returns SaaSposeResponse (Map)
*/
CellsApi.prototype.DeletePivotTableField = function(name, sheetName, pivotTableIndex, pivotFieldType, storage, folder, body, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof sheetName === 'undefined' || sheetName === null && sheetName === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotTableIndex === 'undefined' || pivotTableIndex === null && pivotTableIndex === ''){
		throw new Error('missing required parameters.');
    } 
	if( typeof pivotFieldType === 'undefined' || pivotFieldType === null && pivotFieldType === ''){
		throw new Error('missing required parameters.');
    }   	
		
	var resourcePath = '/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/?pivotFieldType={pivotFieldType}&amp;appSid={appSid}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof sheetName !== 'undefined' &&  sheetName !== null && sheetName!== ''){            
			resourcePath = resourcePath.replace("{" + "sheetName" + "}" , sheetName);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]sheetName.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotTableIndex !== 'undefined' &&  pivotTableIndex !== null && pivotTableIndex!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotTableIndex" + "}" , pivotTableIndex);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotTableIndex.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof pivotFieldType !== 'undefined' &&  pivotFieldType !== null && pivotFieldType!== ''){            
			resourcePath = resourcePath.replace("{" + "pivotFieldType" + "}" , pivotFieldType);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]pivotFieldType.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'DELETE'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = JSON.stringify(body);
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }


module.exports = CellsApi


