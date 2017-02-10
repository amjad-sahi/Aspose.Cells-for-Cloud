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
var name = "Sample_Pivot_Table_Example.xls";
var sheetName = "Sheet2";
var pivottableIndex = 0;
try {
// Upload source file to aspose cloud storage
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	
	// Invoke Aspose.Cells Cloud SDK API to get worksheet pivot table information by index
	cellsApi.GetWorksheetPivotTable(name, sheetName, pivottableIndex, null, null, function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');
		var pivotTable = responseMessage.body.PivotTable;
		pivotTable.BaseFields[0].Items.forEach(function(item) {
			console.log("item :: " +  item);
			});
		});
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1