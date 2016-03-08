var fs = require('fs'),
    assert = require('assert'),
    utils = require('../utils.js'),
    cells = utils.cellsApi,
    storage = utils.storageApi;



var outputName = "Output-" + Date.now() + ".xlsx";
var outputPath = utils.getPath(__filename, outputName);

cells.PutWorkbookCreate(outputName, null, null, null, null, null, function(responseMessage) {
    assert.equal(responseMessage.status, 'OK');
    //download updated Workbook from storage server
    storage.GetDownload(outputName, null, null, function(responseMessage) {
        assert.equal(responseMessage.status, 'OK');
        fs.writeFileSync(outputPath, responseMessage.body);
        console.log(outputPath, "workbook has been created successfully");
    });
});
