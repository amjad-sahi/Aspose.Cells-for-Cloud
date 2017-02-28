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
var name = "Sample_Test_Book.xls";
var sheetName = "Sheet2";
var cellName = "A4";

try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	
	// Invoke Aspose.Cells Cloud SDK API to  get a specific comment from a worksheet
	cellsApi.GetWorkSheetComment(name, sheetName, cellName, null, null, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			var cellComment = responseMessage.body.Comment;
			console.log("Comment Note :: " + cellComment.Note);
			});
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1