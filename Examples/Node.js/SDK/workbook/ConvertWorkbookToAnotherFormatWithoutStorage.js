var fs = require('fs'),
    assert = require('assert'),
    utils = require('../utils.js'),
    cells = utils.cellsApi;

var inputName = "sample1.xlsx";
var inputPath = utils.getPath(__filename, inputName);
var outputName = "Sample1.out.pdf";
var outputPath = utils.getPath(__filename, outputName);
var format = "pdf";

cells.PutConvertWorkBook(format, null, null, inputPath, null, function (responseMessage) {
    assert.equal(responseMessage.status, 'OK');
    fs.writeFileSync(outputPath, responseMessage.body);
});
