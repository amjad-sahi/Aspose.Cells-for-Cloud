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
var filename = "Sample_Test_Book";
var name = filename +  ".xls";
var format = "pdf";
try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	
	// Invoke Aspose.Cells Cloud SDK API to convert workbook to different file formats without storage
	cellsApi.PutConvertWorkBook(format, null, null, data_path + name, null, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			
			// Download Workbook from response stream
			assert.equal(responseMessage.status, 'OK');
			var outfilename = filename + "_out." + format;
			var writeStream = fs.createWriteStream(data_path + outfilename);
			writeStream.write(responseMessage.body);

			});
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1