var fs = require('fs');
var StorageApi = require('asposestoragecloud');
var CellsApi = require('../lib/CellsApi');
var assert = require('assert');

var AppSID = 'XXXX'; //sepcify App Key
var AppKey = 'XXXX'; //sepcify App SID
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};
var data_path = './data/';

var storageApi = new StorageApi(config); 
var cellsApi = new CellsApi(config);
var nodeunit = require('nodeunit');

exports.testPutConvertDocument = function(test){
	
	test.expect(2);	
	var filename = "Sample_Test_Book";
	var name = filename + ".xls";
	var format = "pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutConvertWorkBook(format, null, null, data_path + name, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				//var writeStream = fs.createWriteStream('c:/temp/' + filename + '.' +  format)
				//writeStream.write(responseMessage.body)
				test.done();
			});
		});
};

exports.testGetWorkBook = function(test){
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkBook(name, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Workbook !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};
exports.testPutWorkbookCreate = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book" + Math.floor((Math.random() * 1000) + 1) + ".xls";
	if(config.debug){console.log('name:', name);}
	
	cellsApi.PutWorkbookCreate(name, null, null, null, null, null, function(responseMessage) {
		
		if(config.debug){console.log('status:', responseMessage.status);}
		if(config.debug){console.log('body:', responseMessage.body);}
		test.equal(responseMessage.status, 'OK', '');	
		test.ok(responseMessage.body !== null && typeof responseMessage.body.Workbook !== 'undefined', "response body assertion should pass");
		test.done();
		});
};
	
exports.testGetWorkBookWithFormat = function(test){

	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var format = "pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkBookWithFormat(name, format, null, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};
exports.testPostDocumentSaveAs = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var newfilename = "Sample_Test_Book.pdf";
	var saveOptionsBody = {};
	var format = "pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostDocumentSaveAs(name, newfilename, null, null, null, null, saveOptionsBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				if(config.debug){console.log('body:', responseMessage.body);}
				test.ok(responseMessage.body !== null && typeof responseMessage.body.SaveResult !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostAutofitWorkbookRows = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var autoFitterOptionsBody ={'IgnoreHidden' : true};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostAutofitWorkbookRows(name, null, null, null, null, null, autoFitterOptionsBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};
exports.testPostWorkbookCalculateFormula = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorkbookCalculateFormula(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorkBookDefaultStyle = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var format = "pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkBookDefaultStyle(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}				
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Style !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetDocumentProperties = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetDocumentProperties(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.DocumentProperties !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testDeleteDocumentProperties = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteDocumentProperties(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.DocumentProperties !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetDocumentProperty = function(test){
	
	test.expect(3);	
	var name = "Sample_Book1.xlsx";
	var propertyName = "AsposeAuthor";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetDocumentProperty(name, propertyName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}				
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.DocumentProperty !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPutDocumentProperty = function(test){
	
	test.expect(3);	
	var name = "Sample_Book1.xlsx";
	var propertyName = "AsposeAuthor";
	var cellsDocumentPropertyBody = {
			'Name' : 'AsposeAuthor',
			'Value' : 'Aspose Plugin Developer',
			'BuiltIn' : false
			};
         
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutDocumentProperty(name, propertyName, null, null, cellsDocumentPropertyBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.DocumentProperty !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testDeleteDocumentProperty = function(test){
	
	test.expect(3);	
	var name = "Sample_Book1.xlsx";
	var propertyName = "AsposeAuthor";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteDocumentProperty(name, propertyName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.DocumentProperties !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostEncryptDocument = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var workbookEncryptionRequest = {
			'EncryptionType' : 'XOR',
			'Password' : 'aspose',
			'KeyLength' : '128'
				};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostEncryptDocument(name, null, null, workbookEncryptionRequest, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testDeleteDecryptDocument = function(test){
	
	test.expect(2);	
	var name = "encrypted_Sample_Test_Book.xls";
	var workbookEncryptionRequest = {
			'EncryptionType' : 'XOR',
			'Password' : 'aspose',
			'KeyLength' : '128'
				};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteDecryptDocument(name, null, null, workbookEncryptionRequest, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostWorkbooksTextSearch = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var text = "aspose";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorkbooksTextSearch(name, text, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextItems !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostImportData = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var importOption = {
			'IsInsert' : true
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostImportData(name, null, null, importOption, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostWorkbooksMerge = function(test){
	
	test.expect(3);	
	var name = "Sample_Book1.xlsx";
	var mergeWith = "Sample_Book2.xls";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		storageApi.PutCreate(mergeWith, null, null, data_path + mergeWith , function(responseMessage) {
			
			test.equal(responseMessage.status, 'OK', '');		
			cellsApi.PostWorkbooksMerge(name, mergeWith, null, null, function(responseMessage) {
					if(config.debug){console.log('status:', responseMessage.status);}
					if(config.debug){console.log('body:', responseMessage.body);}
					test.equal(responseMessage.status, 'OK', '');	
					test.ok(responseMessage.body !== null && typeof responseMessage.body.Workbook !== 'undefined', "response body assertion should pass");
					test.done();
				});
			});
		});
};

exports.testGetWorkBookNames = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkBookNames(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Names !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorkBookName = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var nameName = "TestRange";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkBookName(name, nameName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Name !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostProtectDocument = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var workbookProtectionRequest = {
			'Password' : 'aspose',
			'ProtectionType' : 'All'
	};
	
    storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostProtectDocument(name, null, null, workbookProtectionRequest, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testDeleteUnProtectDocument = function(test){
	
	test.expect(2);	
	var name = "Sample_Protected_Test_Book.xls";
	var workbookProtectionRequest = {
			'Password' : 'aspose',
			'ProtectionType' : 'None'
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteUnProtectDocument(name, null, null, workbookProtectionRequest, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostWorkbooksTextReplace = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
    var oldValue = "aspose";
    var newValue = "aspose.com";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorkbooksTextReplace(name, oldValue, newValue, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Matches !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostWorkbookGetSmartMarkerResult = function(test){
	
	test.expect(3);	
	var name = "Sample_SmartMarker.xlsx";
	var datafile = "Sample_SmartMarker_Data.xml";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorkbookGetSmartMarkerResult(name, null, null, null, null, data_path + datafile, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}				
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Content !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostWorkbookSplit = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var format = "png";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorkbookSplit(name, format, 1, 1, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Result !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorkBookTextItems = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkBookTextItems(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextItems !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorkSheets = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheets(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Worksheets !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostUpdateWorksheetProperty = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var worksheetBody = {
			'Type' : 'Worksheet',
			'Name' : 'Sheet1',
			'IsGridlinesVisible' : true
			
	};
        
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostUpdateWorksheetProperty(name, sheetName, null, null, worksheetBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Worksheet !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testPutAddNewWorksheet = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1-new";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutAddNewWorksheet(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Worksheets !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testDeleteWorksheet = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet3";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheet(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Worksheets !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorkSheetWithFormat = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var format = "png";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetWithFormat(name, sheetName, format, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorkSheet = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheet(name, sheetName, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostAutofitWorksheetRows = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var autoFitterOptions = {
			'IgnoreHidden' : true
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostAutofitWorksheetRows(name, sheetName, null, null, null, null, null, autoFitterOptions, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.done();
			});
		});
};

exports.testGetWorksheetAutoshapes = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet4";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetAutoshapes(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.AutoShapes !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorksheetAutoshape = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet4";
    var autoshapeNumber = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetAutoshape(name, sheetName, autoshapeNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.AutoShape !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorksheetAutoshapeWithFormat = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet4";
    var autoshapeNumber = 1;          
    var format = "png";	
	
    storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetAutoshapeWithFormat(name, sheetName, autoshapeNumber, format, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPutWorkSheetBackground = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var  file = data_path + 'aspose-cloud.png';
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutWorkSheetBackground(name, sheetName, null, null, file, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testDeleteWorkSheetBackground = function(test){
	
	test.expect(2);	
	var name = "WorkSheetBackground_Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorkSheetBackground(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorksheetCells = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
 	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetCells(name, sheetName, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Cells !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostSetCellRangeValue = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var cellarea = "A10:B20";
	var value = "1234";
	var type = "int";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostSetCellRangeValue(name, sheetName, cellarea, value, type, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostClearContents = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var startRow = 1;
	var startColumn = 1;
	var endRow = 2;
	var endColumn = 2;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostClearContents(name, sheetName, null, startRow, startColumn, endRow, endColumn, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostClearFormats = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet2";
	var startRow = 1;
	var startColumn = 1;
	var endRow = 2;
	var endColumn = 2;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostClearFormats(name, sheetName, '', startRow, startColumn, endRow, endColumn, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorksheetColumns = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetColumns(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Columns !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostCopyWorksheetColumns = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var sourceColumnIndex = 2;
	var destinationColumnIndex = 2;
	var columnNumber = 2;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostCopyWorksheetColumns(name, sheetName, sourceColumnIndex, destinationColumnIndex, columnNumber, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostGroupWorksheetColumns = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var firstIndex = 2;
	var lastIndex = 3;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostGroupWorksheetColumns(name, sheetName, firstIndex, lastIndex, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostHideWorksheetColumns = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var startColumn = 1;
	var totalColumns = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostHideWorksheetColumns(name, sheetName, startColumn, totalColumns, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostUngroupWorksheetColumns = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var firstIndex = 1;
	var lastIndex = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostUngroupWorksheetColumns(name, sheetName, firstIndex, lastIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostUnhideWorksheetColumns = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var startcolumn = 1;
	var totalColumns = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostUnhideWorksheetColumns(name, sheetName, startcolumn, totalColumns, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorksheetColumn = function(test){
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var columnIndex = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetColumn(name, sheetName, columnIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Column !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPutInsertWorksheetColumns = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";          
	var columnIndex = 1;
	var columns = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutInsertWorksheetColumns(name, sheetName, columnIndex, columns, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Columns !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testDeleteWorksheetColumns = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";          
	var columnIndex = 1;
	var columns = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetColumns(name, sheetName, columnIndex, columns, true, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Columns !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testPostSetWorksheetColumnWidth = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var columnIndex = "1";
	var width = "20";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostSetWorksheetColumnWidth(name, sheetName, columnIndex, width, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Column !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostColumnStyle = function(test){

	//TODO
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var columnIndex = 0;
    var styleBody = {
    		'Font' : {
				'Name' :  'Calibri',
				'Size' : 40
			},
			'Name' : 'TestStyle'
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostColumnStyle(name, sheetName, columnIndex, null, null, styleBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostWorksheetMerge = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
	var startRow = 1;
	var startColumn = 1;
	var totalRows = 1;
	var totalColumns = 5;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorksheetMerge(name, sheetName, startRow, startColumn, totalRows, totalColumns, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorksheetRows = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetRows(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Rows !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testPutInsertWorksheetRows = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";            
	var startrow = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutInsertWorksheetRows(name, sheetName, startrow, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				
				test.done();
			});
		});
};

exports.testDeleteWorksheetRows = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";            
	var startrow = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetRows(name, sheetName, startrow, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostCopyWorksheetRows = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var sourceRowIndex = 2;
	var destinationRowIndex = 2;
	var rowNumber = 2;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostCopyWorksheetRows(name, sheetName, sourceRowIndex, destinationRowIndex, rowNumber, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostGroupWorksheetRows = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var firstIndex = 2;
	var lastIndex = 3;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostGroupWorksheetRows(name, sheetName, firstIndex, lastIndex, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostHideWorksheetRows = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var startrow = 1;
	var totalRows = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostHideWorksheetRows(name, sheetName, startrow, totalRows, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostUngroupWorksheetRows = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var firstIndex = 1;
	var lastIndex = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostUngroupWorksheetRows(name, sheetName, firstIndex, lastIndex, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostUnhideWorksheetRows = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var startrow = 1;
	var totalRows = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostUnhideWorksheetRows(name, sheetName, startrow, totalRows, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostUpdateWorksheetRow = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
    var rowIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostUpdateWorksheetRow(name, sheetName, rowIndex, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Row !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorksheetRow = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var rowIndex = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetRow(name, sheetName, rowIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Row !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPutInsertWorksheetRow = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";            
	var rowIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutInsertWorksheetRow(name, sheetName, rowIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Row !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testDeleteWorksheetRow = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1"; 
	var rowIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetRow(name, sheetName, rowIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostRowStyle = function(test){
	//TODO
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var rowIndex = 1;
	var styleBody = {
		    'Font': {
		        'Color': {
		          'A': 255,
		          'R': 0,
		          'G': 0,
		          'B': 0
		        },    
		        'Name': 'Arial',
		        'Size': 10
		      }
		   
		    };
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostRowStyle(name, sheetName, rowIndex, null, null, styleBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostUpdateWorksheetRangeStyle = function(test){
	//TODO
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var range = "A2";
	var styleBody = {
		    'Font': {		        
		        'Name': 'Arial',
		        'Size': 10
		      }
		   
		    };
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostUpdateWorksheetRangeStyle(name, sheetName, range, null, null, styleBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostWorksheetUnmerge = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";            
	var startRow = 1;
	var startColumn = 1;
	var totalRows = 1;
	var totalColumns = 5;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorksheetUnmerge(name, sheetName, startRow, startColumn, totalRows, totalColumns, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostWorksheetCellSetValue = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
    var cellName = "A1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorksheetCellSetValue(name, sheetName, cellName, null, null, null, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Cell !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostSetCellHtmlString = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var cellName = "a1";
	var file = data_path + 'testfile.txt';

	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostSetCellHtmlString(name, sheetName, cellName, null, null, file, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Cell !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorksheetCellStyle = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var cellName = "a1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetCellStyle(name, sheetName, cellName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Style !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testPostUpdateWorksheetCellStyle = function(test){
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var cellName = "A1";
	var styleBody = {
		    'Font': {
		        'Color': {
		          'A': 255,
		          'R': 0,
		          'G': 0,
		          'B': 0
		        },    
		        'Name': 'Arial',
		        'Size': 10
		      }
		   
		    };
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostUpdateWorksheetCellStyle(name, sheetName, cellName, null, null, styleBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorksheetCell = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var cellOrMethodName = "a1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetCell(name, sheetName, cellOrMethodName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Cell !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostCopyCellIntoCell = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName =  "Sheet1";
	var worksheet =  "Sheet2";
	var destCellName = "a1";
	var row = 2;
	var column = 2;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostCopyCellIntoCell(name, destCellName, sheetName, worksheet, null, row, column, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorksheetCharts = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetCharts(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Charts !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testDeleteWorksheetClearCharts = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetClearCharts(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPutWorksheetAddChart = function(test){
	
	test.expect(3);	
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
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutWorksheetAddChart(name, sheetName, chartType, upperLeftRow, 
				upperLeftColumn, lowerRightRow, lowerRightColumn, area, 
				isVertical, null, isAutoGetSerialName, 
				title, null, null, function(responseMessage) {
			
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Charts !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testDeleteWorksheetDeleteChart = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
    var chartIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetDeleteChart(name, sheetName, chartIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Charts !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testGetChartArea = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
	var chartIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetChartArea(name, sheetName, chartIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.ChartArea !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testGetChartAreaBorder = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
	var chartIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetChartAreaBorder(name, sheetName, chartIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Line !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testGetChartAreaFillFormat = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
	var chartIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetChartAreaFillFormat(name, sheetName, chartIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.FillFormat !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testGetWorksheetChartLegend = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
	var chartIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetChartLegend(name, sheetName, chartIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Legend !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPutWorksheetChartLegend = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
	var chartIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutWorksheetChartLegend(name, sheetName, chartIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostWorksheetChartLegend = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
	var chartIndex = 0;
	var legendBody = {
			'Height' : 200
	};
        
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorksheetChartLegend(name, sheetName, chartIndex, null, null, legendBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Legend !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testDeleteWorksheetChartLegend = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
	var chartIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetChartLegend(name, sheetName, chartIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPutWorksheetChartTitle = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
    var sheetName = "Sheet5";
    var chartIndex = 0;
    var titleBody = {
    	'Height' : 200
    };
       
    storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutWorksheetChartTitle(name, sheetName, chartIndex, null, null, titleBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Title !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostWorksheetChartTitle = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
    var chartIndex = 0;
    var titleBody = {
    	'Height' : 200
    };
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorksheetChartTitle(name, sheetName, chartIndex, null, null, titleBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Title !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testDeleteWorksheetChartTitle = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
    var chartIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetChartTitle(name, sheetName, chartIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorksheetChart = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
    var chartNumber = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetChart(name, sheetName, chartNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Chart !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorksheetChartWithFormat = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet5";
	var chartNumber = 0;
	var format = "png";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetChartWithFormat(name, sheetName, chartNumber, format, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorkSheetComments = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetComments(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Comments !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorkSheetComment = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";	
	var sheetName = "Sheet2";
	var cellName = "A4"; 
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetComment(name, sheetName, cellName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Comment !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testPutWorkSheetComment = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
	var cellName = "A4";
	var commentBody = {
			'AutoSize': true,
			'Note' : 'aspose'
	};
      
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutWorkSheetComment(name, sheetName, cellName, null, null, commentBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Comment !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostWorkSheetComment = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
	var cellName = "A4";
	var commentBody = {
			'AutoSize': true,
			'Note' : 'aspose'
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorkSheetComment(name, sheetName, cellName, null, null, commentBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testDeleteWorkSheetComment = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
	var cellName = "A4";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorkSheetComment(name, sheetName, cellName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostCopyWorksheet = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet7";
	var sourceSheet = "Sheet1";

	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostCopyWorksheet(name, sheetName, sourceSheet, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostWorkSheetTextSearch = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
	var text = "aspose";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorkSheetTextSearch(name, sheetName, text, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextItems !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorkSheetCalculateFormula = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
    var formula = "SUM(A5:A10)";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetCalculateFormula(name, sheetName, formula, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Value !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testPutWorksheetFreezePanes = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var row = 0;
	var column = 1;
	var freezedRows = 1;
	var freezedColumns = 2;
	
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');
		
		cellsApi.PutWorksheetFreezePanes(name, sheetName, row, column, freezedRows, freezedColumns, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testDeleteWorksheetFreezePanes = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var row = 1;
	var column = 1;
	var freezedRows = 1;
	var freezedColumns = 1;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetFreezePanes(name, sheetName, row, column, freezedRows, freezedColumns, null, null, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');			
			test.done();
			});
		});
};

exports.testPutWorkSheetHyperlink = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var firstRow = 2;
	var firstColumn = 2;
	var totalRows = 2;
	var totalColumns = 2;
	var address = "http://www.aspose.com/cloud/total-api.aspx";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutWorkSheetHyperlink(name, sheetName, firstRow, firstColumn, totalRows, totalColumns, address, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Hyperlink !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorkSheetHyperlinks = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetHyperlinks(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Hyperlinks !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testDeleteWorkSheetHyperlinks = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorkSheetHyperlinks(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorkSheetHyperlink = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
    var hyperlinkIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetHyperlink(name, sheetName, hyperlinkIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Hyperlink !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostWorkSheetHyperlink = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
    var hyperlinkIndex = 0;
    var hyperlinkBody = {
    		'Address' : 'http://www.aspose.com/cloud/total-api.aspx',
    		'TextToDisplay' : 'Aspose Cloud APIs'
    };
        
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorkSheetHyperlink(name, sheetName, hyperlinkIndex, null, null, hyperlinkBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Hyperlink !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testDeleteWorkSheetHyperlink = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet2";
	var hyperlinkIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorkSheetHyperlink(name, sheetName, hyperlinkIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorkSheetMergedCells = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetMergedCells(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.MergedCells !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testGetWorkSheetMergedCell = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var mergedCellIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetMergedCell(name, sheetName, mergedCellIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.MergedCell !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorksheetOleObjects = function(test){
	
	test.expect(3);	
	var name = "Embeded_OleObject_Sample_Book1.xlsx";
	var sheetName = "Sheet1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetOleObjects(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.OleObjects !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testDeleteWorksheetOleObjects = function(test){
	
	test.expect(2);	
	var name = "Embeded_OleObject_Sample_Book1.xlsx";
	var sheetName = "Sheet1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetOleObjects(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPutWorksheetOleObject = function(test){
	
	test.expect(4);	
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

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		test.equal(responseMessage.status, 'OK', '');
		
		storageApi.PutCreate(sourceFileName, null, null, data_path + sourceFileName , function(responseMessage) {
			test.equal(responseMessage.status, 'OK', '');
			
			storageApi.PutCreate(imageFileName, null, null, data_path + imageFileName , function(responseMessage) {
				test.equal(responseMessage.status, 'OK', '');
				
				cellsApi.PutWorksheetOleObject(name, sheetName, null, null, null, null, null, null, null, null, oleObjectBody, function(responseMessage) {
						if(config.debug){console.log('status:', responseMessage.status);}
						test.equal(responseMessage.status, 'OK', '');	
						test.done();
				});
			});
		});
	});
};

exports.testGetWorksheetOleObject = function(test){
	
	test.expect(3);	
	var name = "Embeded_OleObject_Sample_Book1.xlsx";
	var sheetName = "Sheet1";
	var objectNumber = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetOleObject(name, sheetName, objectNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.OleObject !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testGetWorksheetOleObjectWithFormat = function(test){
	
	test.expect(2);	
	var name = "Embeded_OleObject_Sample_Book1.xlsx";
	var sheetName = "Sheet1";
	var objectNumber = 0;
	var format = "png";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetOleObjectWithFormat(name, sheetName, objectNumber, format, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostUpdateWorksheetOleObject = function(test){
	
	test.expect(4);	
	var name = "Embeded_OleObject_Sample_Book1.xlsx";
	var sheetName = "Sheet1";
	var oleObjectIndex = 0;
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

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		test.equal(responseMessage.status, 'OK', '');
		
		storageApi.PutCreate(sourceFileName, null, null, data_path + sourceFileName , function(responseMessage) {
			test.equal(responseMessage.status, 'OK', '');
			
			storageApi.PutCreate(imageFileName, null, null, data_path + imageFileName , function(responseMessage) {
				test.equal(responseMessage.status, 'OK', '');
				
				cellsApi.PostUpdateWorksheetOleObject(name, sheetName, oleObjectIndex, null, null, oleObjectBody, function(responseMessage) {
				
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
				});
			});
		});
	});
};

exports.testDeleteWorksheetOleObject = function(test){
	
	test.expect(2);	
	var name = "Embeded_OleObject_Sample_Book1.xlsx";
	var sheetName = "Sheet1";
	var oleObjectIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetOleObject(name, sheetName, oleObjectIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorksheetPictures = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet6";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetPictures(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Pictures !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testDeleteWorkSheetPictures = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet6";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorkSheetPictures(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPutWorksheetAddPicture = function(test){
	
	test.expect(4);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet6";
	var upperLeftRow = 5;
	var upperLeftColumn = 5;
	var lowerRightRow = 10;
	var lowerRightColumn = 10;
	var picturePath = "aspose-cloud.png";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {	
		test.equal(responseMessage.status, 'OK', '');		
		
		storageApi.PutCreate(picturePath, null, null, data_path + picturePath , function(responseMessage) {			
			test.equal(responseMessage.status, 'OK', '');
			
			cellsApi.PutWorksheetAddPicture(name, sheetName, upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, picturePath, null, null, null, function(responseMessage) {
					if(config.debug){console.log('status:', responseMessage.status);}
					if(config.debug){console.log('body:', responseMessage.body);}
					test.equal(responseMessage.status, 'OK', '');
					test.ok(responseMessage.body !== null && typeof responseMessage.body.Pictures !== 'undefined', "response body assertion should pass");
	
					test.done();
				});
		});
	});
};

exports.testPostWorkSheetPicture = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet6";
    var pictureIndex = 0;
    var picName = "aspose-cloud-logo";
    var pictureBody = {
    		'Name' :  'picName',
    		'RotationAngle' : 90
    };
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		test.equal(responseMessage.status, 'OK', '');
		cellsApi.PostWorkSheetPicture(name, sheetName, pictureIndex, null, null, pictureBody, function(responseMessage) {
					if(config.debug){console.log('status:', responseMessage.status);}
					if(config.debug){console.log('body:', responseMessage.body);}
					test.equal(responseMessage.status, 'OK', '');
					test.ok(responseMessage.body !== null && typeof responseMessage.body.Picture !== 'undefined', "response body assertion should pass");		
					test.done();
				});
		});
};

exports.testDeleteWorksheetPicture = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet6";
	var pictureIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetPicture(name, sheetName, pictureIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorksheetPicture = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet6";
	var pictureNumber = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetPicture(name, sheetName, pictureNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Picture !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testGetWorksheetPictureWithFormat = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet6";
	var pictureNumber = 0;
	var format = "png";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetPictureWithFormat(name, sheetName, pictureNumber, format, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetExtractBarcodes = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet6";
	var pictureNumber = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetExtractBarcodes(name, sheetName, pictureNumber, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Barcodes !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testGetWorksheetPivotTables = function(test){
	
	test.expect(3);	
	var name = "Sample_Pivot_Table_Example.xls";
	var sheetName = "Sheet2";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetPivotTables(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.PivotTables !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testDeleteWorksheetPivotTables = function(test){
	
	test.expect(2);	
	var name = "Sample_Pivot_Table_Example.xls";
	var sheetName = "Sheet2";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetPivotTables(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPutWorksheetPivotTable = function(test){
	
	test.expect(3);	
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
        
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutWorksheetPivotTable(name, sheetName, null, null, null, null, null, null, createPivotTableRequestBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.PivotTable !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testDeleteWorksheetPivotTable = function(test){
	
	test.expect(2);	
	var name = "Sample_Pivot_Table_Example.xls";
	var sheetName = "Sheet2";
	var pivotTableIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorksheetPivotTable(name, sheetName, pivotTableIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostPivotTableCellStyle = function(test){
	
	test.expect(2);	
	var name = "Sample_Pivot_Table_Example.xls";
	var sheetName = "Sheet2";
	var pivotTableIndex = 0;
	var column = 1;
	var row = 1;
	var styleBody = {
		    'Font': {		        
		        'Name': 'Arial',
		        'Size': 10
		      }
		   
		    };
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostPivotTableCellStyle(name, sheetName, pivotTableIndex, column, row, null, null, styleBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostPivotTableStyle = function(test){
	
	test.expect(2);	
	var name = "Sample_Pivot_Table_Example.xls";
	var sheetName = "Sheet2";
	var pivotTableIndex = 0;
	var styleBody = {
		    'Font': {		        
		        'Name': 'Arial',
		        'Size': 10
		      }
		   
		    };
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostPivotTableStyle(name, sheetName, pivotTableIndex, null, null, styleBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPutPivotTableField = function(test){
	
	test.expect(2);	
	var name = "Sample_Pivot_Table_Example.xls";
	var sheetName = "Sheet2";
	var pivotTableIndex = 0;
	var pivotFieldType = "Row";
	var pivotTableFieldRequest = {
			'Data' : [1,2]
	};
        
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutPivotTableField(name, sheetName, pivotTableIndex, pivotFieldType, null, null, pivotTableFieldRequest, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorksheetPivotTable = function(test){
	
	test.expect(3);	
	var name = "Sample_Pivot_Table_Example.xls";
	var sheetName = "Sheet2";
	var pivottableIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorksheetPivotTable(name, sheetName, pivottableIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.PivotTable !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testPostMoveWorksheet = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var worksheetMovingRequest = {
			'DestinationWorksheet' : 'Sheet5',
			'Position' : 'after'
	};
        
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostMoveWorksheet(name, sheetName, null, null, worksheetMovingRequest, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Worksheets !== 'undefined', "response body assertion should pass");	
				test.done();
			});
		});
};

exports.testPutProtectWorksheet = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var protectSheetParameter = {
			'ProtectionType' : 'None'
	};
        
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutProtectWorksheet(name, sheetName, null, null, protectSheetParameter, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Worksheet !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testDeleteUnprotectWorksheet = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var protectSheetParameter = {
			'ProtectionType' : 'None'
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteUnprotectWorksheet(name, sheetName, null, null, protectSheetParameter, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Worksheet !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostRenameWorksheet = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var newname = "newSheet";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostRenameWorksheet(name, sheetName, newname, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostWorsheetTextReplace = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName="Sheet2";
	var oldValue = "aspose";
	var newValue = "aspose.com";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorsheetTextReplace(name, sheetName, oldValue, newValue, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Matches !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostWorksheetRangeSort = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var cellArea = "A5:A10";
	var sortKey = {
			'Key' : 0,
			'SortOrder' : 'descending'
	};
    var dataSorter = {
    		'CaseSensitive' : false,
    		'HasHeaders' : false,
    		'SortLeftToRight' : false,
    		'KeyList' : [sortKey]
    };
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorksheetRangeSort(name, sheetName, cellArea, null, null, dataSorter, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorkSheetTextItems = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetTextItems(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.TextItems !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPutWorkSheetValidation = function(test){
	//TODO fix it
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var format = "pdf";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutWorkSheetValidation(name, sheetName, range, storage, folder, file, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorkSheetValidations = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet3";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetValidations(name, sheetName, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Validations !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testGetWorkSheetValidation = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet3";
	var validationIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkSheetValidation(name, sheetName, validationIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Validation !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostWorkSheetValidation = function(test){
	//TODO
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet3";
	var validationIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorkSheetValidation(name, sheetName, validationIndex, null, null, file, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				if(config.debug){console.log('body:', responseMessage.body);}
				test.done();
			});
		});
};

exports.testDeleteWorkSheetValidation = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet3";
	var validationIndex = 0;	
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteWorkSheetValidation(name, sheetName, validationIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Validation !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPutChangeVisibilityWorksheet = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	var sheetName = "Sheet1";
	var isVisible = false;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutChangeVisibilityWorksheet(name, sheetName, isVisible, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.Worksheet !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPutDocumentProtectFromChanges = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var passwordRequest = {
			'Password' : 'aspose'
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PutDocumentProtectFromChanges(name, null, null, passwordRequest, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testDeleteDocumentUnProtectFromChanges = function(test){
	
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeleteDocumentUnProtectFromChanges(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetWorkbookSettings = function(test){
	
	test.expect(3);	
	var name = "Sample_Test_Book.xls";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetWorkbookSettings(name, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.ok(responseMessage.body !== null && typeof responseMessage.body.settings !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testPostWorkbookSettings = function(test){
	//TODO Fix it
	test.expect(2);	
	var name = "Sample_Test_Book.xls";
	var settingsBody = {
			'LanguageCode' : 'USA'
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorkbookSettings(name, null, null, settingsBody, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testPostWorksheetPivotTableCalculate = function(test){
	//TODO
	test.expect(2);	
	var name = "Sample_Pivot_Table_Example.xls";
	var sheetName = "Sheet2";
	var pivotTableIndex = 0;
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.PostWorksheetPivotTableCalculate(name, sheetName, pivotTableIndex, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				if(config.debug){console.log('body:', responseMessage.body);}
				test.equal(responseMessage.status, 'OK', '');	
				test.done();
			});
		});
};

exports.testGetPivotTableField = function(test){
	
	test.expect(3);	
	var name = "Sample_Pivot_Table_Example.xls";
	var sheetName = "Sheet2";
	var pivotTableIndex = 0;
	var pivotFieldIndex = 0;
	var pivotFieldType = "Row";
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.GetPivotTableField(name, sheetName, pivotTableIndex, pivotFieldIndex, pivotFieldType, null, null, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');	
				if(config.debug){console.log('body:', responseMessage.body);}
				test.ok(responseMessage.body !== null && typeof responseMessage.body.PivotField !== 'undefined', "response body assertion should pass");
				test.done();
			});
		});
};

exports.testDeletePivotTableField = function(test){
	
	test.expect(2);	
	var name = "Sample_Pivot_Table_Example.xls";
	var sheetName = "Sheet2";
	var pivotTableIndex = 0;
	var pivotFieldType = "Row";
	var pivotTableFieldRequest = {
			'Data' : [1,2]
	};
	
	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	
		test.equal(responseMessage.status, 'OK', '');		
		cellsApi.DeletePivotTableField(name, sheetName, pivotTableIndex, pivotFieldType, null, null, pivotTableFieldRequest, function(responseMessage) {
				if(config.debug){console.log('status:', responseMessage.status);}
				test.equal(responseMessage.status, 'OK', '');
				if(config.debug){console.log('body:', responseMessage.body);}
				test.done();
			});
		});
};
