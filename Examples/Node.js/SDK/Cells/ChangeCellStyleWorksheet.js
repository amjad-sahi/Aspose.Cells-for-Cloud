// ExStart:1
var fs = require('fs');
var assert = require('assert');
var StorageApi = require('asposestoragecloud');
var CellsApi = require('asposecellscloud');
var configProps = require('../Data/config.json');
var data_path = '../Data/';

var AppSID = configProps.app_sid;
var AppKey = configProps.api_key;
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};

// Instantiate Aspose Storage API SDK
var storageApi = new StorageApi(config);
// Instantiate Aspose Cells API SDK
var cellsApi = new CellsApi(config);

// Set input file name
var name = "Sample_Test_Book.xls";
var sheetName =  "Sheet1";
var cellName = "A2";
var styleBody = {
	    'Font': {
	        'Color': {
	          'A': 255,
	          'R': 0,
	          'G': 0,
	          'B': 0
	        },
	        'Name': 'Arial',
	        'Size': 25
	      }

	    };
try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {

	assert.equal(responseMessage.status, 'OK');

	// Invoke Aspose.Cells Cloud SDK API to set the styles of selected cells in a worksheet
	cellsApi.PostUpdateWorksheetCellStyle(name, sheetName, cellName, null, null, styleBody, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			
			// Download updated Workbook from storage server
			storageApi.GetDownload(name, null, null, function(responseMessage) {
				assert.equal(responseMessage.status, 'OK');
				var outfilename = name;
				var writeStream = fs.createWriteStream(data_path + "_out_" + outfilename);
				writeStream.write(responseMessage.body);
				});
			});
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1