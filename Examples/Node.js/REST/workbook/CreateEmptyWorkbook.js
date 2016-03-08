var utils = require("../utils.js");
var fs = require('fs');

var filename = "Workbook-" + Date.now() + ".xlsx";
var method_input = 'PUT';
var request_url_input = 'cells/' + filename;
var method_download = 'GET';
var request_url_download = 'storage/file/' + filename;
var output_file = 'NodejsREST.output.xlsx';
var outputPath =  getPath(__filename, output_file);


ProcessCommand(
    method_input,
    Sign(request_url_input),
    null,
    function (response) {
        console.log(JSON.stringify(response, null, 2));

        ProcessCommandContent(
            method_download,
            Sign(request_url_download),
            null,
            function (buffer) {
                fs.writeFileSync(outputPath, buffer);
            }
        );

    }
);

