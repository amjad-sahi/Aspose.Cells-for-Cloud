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
var name = "Sample_Test_Book" + Math.floor((Math.random() * 1000) + 1) + ".xls";
// The template file, if the data not provided default workbook is created.
var templatefile = "Sample_Test_Book.xls";
try {

// Upload source file to aspose cloud storage
storageApi.PutCreate(templatefile, null, null, data_path + templatefile , function(responseMessage) {
	
	// Invoke Aspose.Cells Cloud SDK API to create a workbook from a template file
	cellsApi.PutWorkbookCreate(name, templatefile, null, null, null, null, function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');
		 var outputfilename = responseMessage.body.Workbook.FileName;
		 console.log("FileName: " + outputfilename);
		
		// Download Workbook from storage server
		storageApi.GetDownload(outputfilename, null, null, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			var outfilename = outputfilename;
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