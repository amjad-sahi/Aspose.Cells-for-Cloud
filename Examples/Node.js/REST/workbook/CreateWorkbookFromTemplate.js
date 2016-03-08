var utils = require("../utils.js");
var fs = require('fs');

var method = 'PUT';
var request_url = 'storage/file/' + 'sample1.xlsx';
var input_file = 'Sample1.xlsx';
var input_path = getPath(__filename, input_file);
var buffer = fs.readFileSync(input_path);

UploadFileBinary(
    method,
    Sign(request_url),
    buffer,
    function (response) {
        if (response.Status == 'OK') {
            console.log(input_path, 'has been uploaded');

        }
        var method = 'PUT';
        var request_url = 'storage/file/' + 'template.xlsx';
        var input_file = 'sample1.xlsx';
        var input_path = getPath(__filename, input_file);
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
                var request_url = 'storage/file/' + 'sample1.xlsx';
                var output_file = 'NodejsREST.output.xlsx';
                var output_path = getPath(__filename, output_file);

                ProcessCommandContent(
                    method,
                    Sign(request_url),
                    null,
                    function (buffer) {
                        fs.writeFileSync(output_path, buffer);
                        console.log('File saved', output_path);
                    }
                );
            }
        );
    }
);
