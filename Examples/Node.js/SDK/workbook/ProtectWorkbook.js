var fs = require('fs'),
    assert = require('assert'),
    utils = require('../utils.js'),
    cells = utils.cellsApi,
    storage = utils.storageApi;


var inputName = "sample1.xlsx";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "Protected.out.xlsx";
var outputPath = utils.getPath(__filename, outputName);


var workbookProtectionRequest = {
    'Password': 'aspose',
    'ProtectionType': 'All'
};

storage.PutCreate(inputName, null, null, inputPath, function (responseMessage) {
    cells.PostProtectDocument(inputName, null, null, workbookProtectionRequest, function (responseMessage) {
        storage.GetDownload(inputName, null, null, function (responseMessage) {
            assert.equal(responseMessage.status, 'OK');
            fs.writeFileSync(outputPath, responseMessage.body);
        });
    });
});