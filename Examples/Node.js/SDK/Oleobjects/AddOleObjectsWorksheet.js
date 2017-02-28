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
var sheetName = "Sheet1";
var sourceFileName = "Sample_Book2.xls";
var imageFileName = "aspose-logo.png";
var oleObjectBody = {
			'SourceFullName' : sourceFileName,
	        'ImageSourceFullName' : imageFileName,
	        'UpperLeftRow' : 15,
	        'UpperLeftColumn' : 5,
	        'Top' : 10,
	        'Bottom' : 10,
	        'Left' : 10,
	        'Height' : 400,
	        'Width' : 400,
	        'IsAutoSize' : true
	        };

try {
// Upload source file to aspose cloud storage
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');

		storageApi.PutCreate(sourceFileName, null, null, data_path + sourceFileName , function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');

			storageApi.PutCreate(imageFileName, null, null, data_path + imageFileName , function(responseMessage) {
				assert.equal(responseMessage.status, 'OK');

				// Invoke Aspose.Cells Cloud SDK API to add an OleObject to a worksheet
				cellsApi.PutWorksheetOleObject(name, sheetName, null, null, null, null, null, null, null, null, oleObjectBody, function(responseMessage) {
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
			});
		});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1