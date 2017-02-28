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
var sheetName = "Sheet5";
var chartType = "bar";
var upperLeftRow = 12;
var upperLeftColumn = 12;
var lowerRightRow = 20;
var lowerRightColumn = 20;
var area = "A1:A3";
var isVertical = false;
var isAutoGetSerialName = true;
var title = "SalesState";
try {
// Upload source file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');

	// Invoke Aspose.Cells Cloud SDK API to add a chart in a worksheet
	cellsApi.PutWorksheetAddChart(name, sheetName, chartType, upperLeftRow,
			upperLeftColumn, lowerRightRow, lowerRightColumn, area,
			isVertical, null, isAutoGetSerialName,
			title, null, null, function(responseMessage) {

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