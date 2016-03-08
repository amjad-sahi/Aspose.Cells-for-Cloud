var fs = require('fs'),
    assert = require('assert'),
    utils = require('../utils.js'),
    cells = utils.cellsApi,
    storage = utils.storageApi;


var inputFile = "sample1.xlsx";
var inputPath = utils.getPath(__filename, inputFile);


storage.PutCreate(inputFile, null, null, inputPath, function (responseMessage) {
    cells.GetWorkBookNames(inputFile, null, null, function(responseMessage) {
            assert.equal(responseMessage.status, 'OK');
        console.log("Total Workbook Count : " + responseMessage.body.Names.Count);
        });
    });
