var fs = require('fs'),
    assert = require('assert'),
    utils = require('../utils.js'),
    cells = utils.cellsApi,
    storage = utils.storageApi;


var inputName = "sample1.xlsx";
var inputPath = utils.getPath(__filename, inputName);

var outputName = "encrypted_output_.xlsx";
var outputPath = utils.getPath(__filename, outputName);


var workbookEncryptionRequest = {
    'EncryptionType': 'XOR',
    'Password': 'aspose',
    'KeyLength': '128'
};

storage.PutCreate(inputName, null, null, inputPath, function (responseMessage) {
    cells.PostEncryptDocument(inputName, null, null, workbookEncryptionRequest, function (responseMessage) {
        storage.GetDownload(inputName, null, null, function (responseMessage) {
            assert.equal(responseMessage.status, 'OK');
            fs.writeFileSync(outputPath, responseMessage.body);
        });
    });
});