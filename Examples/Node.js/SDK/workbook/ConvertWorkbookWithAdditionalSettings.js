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
var newfilename = "Sample_Test_Book.pdf";
var saveOptionsBody = {
		'desiredPPI': 300,
		'jpegQuality' : 70,
		'OnePagePerSheet': true,
		'SaveFormat': 'pdf'
};
var format = "pdf";
try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	// Invoke Aspose.Cells Cloud SDK API to convert workbook to different file formats using cloud storage
	cellsApi.PostDocumentSaveAs(name, newfilename, null, null, null, null, saveOptionsBody, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');
			var destfilename = responseMessage.body.SaveResult.DestDocument.Href;
			console.log("FileName: " + destfilename );
			
			// Download updated Workbook from storage server
			storageApi.GetDownload(destfilename, null, null, function(responseMessage) {
				assert.equal(responseMessage.status, 'OK');
				var outfilename = destfilename;
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