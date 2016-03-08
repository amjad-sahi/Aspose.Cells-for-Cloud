var fs = require('fs'),
    assert = require('assert'),
    utils = require('../utils.js'),
    cells = utils.cellsApi,
    storage = utils.storageApi;



var inputFile1 = "sample1.xlsx";
var inputPath1 = utils.getPath(__filename, inputFile1);

var inputFile2 = "sample2.xlsx";
var inputPath2 = utils.getPath(__filename, inputFile2);

var outputName = "output.xlsx";
var outputPath = utils.getPath(__filename, outputName);


storage.PutCreate(inputFile1, null, null, inputPath1, function (responseMessage) {

   storage.PutCreate(inputFile2, null, null, inputPath2, function (responseMessage) {

        cells.PostWorkbooksMerge(inputFile2, inputFile1, null, null, function (responseMessage) {

            assert.equal(responseMessage.status, 'OK');
           // var destFileName = responseMessage.body.Workbook.FileName;
           // console.log("FileName " + destFileName);

            storage.GetDownload(inputFile1, null, null, function (responseMessage) {
                fs.writeFileSync(outputPath, responseMessage.body);
            });
        });
    });
});