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
var sheetName = "Sheet1";
var createPivotTableRequestBody = {
		'Name' : 'MyPivot',
        'SourceData' : 'A5:E10',
        'DestCellName' : 'H20',
        'UseSameSource' : true,
        'PivotFieldRows' : [1],
        'PivotFieldColumns' : [1],
        'PivotFieldData' : [1],
};

try {
        // Upload source file to aspose cloud storage
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	
	// Invoke Aspose.Cells Cloud SDK API to add a pivot table in a worksheet
	cellsApi.PutWorksheetPivotTable(name, sheetName, null, null, null, null, null, null, createPivotTableRequestBody, function(responseMessage) {
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