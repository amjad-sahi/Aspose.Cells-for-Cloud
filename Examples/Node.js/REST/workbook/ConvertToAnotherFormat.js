var utils = require("../utils.js");
var fs = require('fs');

var method = 'PUT';
var request_url = 'storage/file/' + 'sample1.xlsx';
var input_file = 'sample1.xlsx';
var input_path = getPath(__filename, input_file);

var output_file = 'NodejsREST.output.pdf';
var outputPath = getPath(__filename, output_file);

var buffer = fs.readFileSync(input_path);

UploadFileBinary(
    method,
    Sign(request_url),
    buffer,
    function (response) {
        if (response.Status == 'OK') {
            console.log(input_path, 'has been uploaded');
        }

        var method = 'GET';
        var request_url = 'cells/sample1.xlsx?format=pdf';

        ProcessCommandContent(
            method,
            Sign(request_url),
            null,
            function (buffer) {
                fs.writeFileSync(outputPath, buffer);

            }
        );
    }
);


