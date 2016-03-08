var fs = require('fs'),
    assert = require('assert'),
    utils = require('../utils.js'),
    cells = utils.cellsApi,
    storage = utils.storageApi;


var inputName = "sample1.xlsx";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "sample1_output_.pdf";
var outputPath = utils.getPath(__filename, outputName);

var saveOptionsBody = {
    'desiredPPI': 300,
    'jpegQuality' : 70,
    'OnePagePerSheet': true,
    'SaveFormat': 'pdf'
};

var format = "pdf";

storage.PutCreate(inputName, null, null, inputPath, function (responseMessage) {
    cells.PostDocumentSaveAs(inputName, outputName, null, null, null, null, saveOptionsBody, function (responseMessage) {
        storage.GetDownload(outputName, null, null, function (responseMessage) {
            assert.equal(responseMessage.status, 'OK');
            fs.writeFileSync(outputPath, responseMessage.body);
        });
    });
});