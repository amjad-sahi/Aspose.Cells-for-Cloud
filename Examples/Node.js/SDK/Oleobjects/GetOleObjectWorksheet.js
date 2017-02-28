// ExStart:1
var fs = require('fs');
var assert = require('assert');
var StorageApi = require('asposestoragecloud');
var CellsApi = require('asposecellscloud');
var configProps = require('../Config/config.json');
var data_path = '../../../../Data/';

var AppSID = configProps.app_sid;
var AppKey = configProps.api_key;
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};

// Instantiate Aspose Storage API SDK
var storageApi = new StorageApi(config);
// Instantiate Aspose Cells API SDK
var cellsApi = new CellsApi(config);

// Set input file name
var name = "Embeded_OleObject_Sample_Book1.xlsx";
var sheetName = "Sheet1";
var objectNumber = 0;
try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	
	// Invoke Aspose.Cells Cloud SDK API to get a specific oleobject from a worksheet
	cellsApi.GetWorksheetOleObject(name, sheetName, objectNumber, null, null, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			var oleObject = responseMessage.body.OleObject;
			console.log("OleObject File Format Type :: " + oleObject.FileFormatType);
			});
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1