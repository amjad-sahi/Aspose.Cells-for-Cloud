var fs = require('fs'),
    assert = require('assert'),
    utils = require('../utils.js'),
    cells = utils.cellsApi,
    storage = utils.storageApi;


var inputName = "sample1.xlsx";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "Unprotected_output_.xlsx";
var outputPath = utils.getPath(__filename, outputName);


var workbookProtectionRequest = {
    'Password' : 'aspose',
    'ProtectionType' : 'None'
};

storage.PutCreate(inputName, null, null, inputPath, function (responseMessage) {
    cells.DeleteUnProtectDocument(inputName, null, null, workbookProtectionRequest, function(responseMessage) {
        storage.GetDownload(inputName, null, null, function (responseMessage) {
            assert.equal(responseMessage.status, 'OK');
            fs.writeFileSync(outputPath, responseMessage.body);
        });
    });
});