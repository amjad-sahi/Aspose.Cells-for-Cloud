var utils = require("../utils.js");
var fs = require('fs');

var method = 'PUT';
var request_url = 'storage/file/' + 'sample1.xlsx';
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

        var sURL = 'cells/sample1.xlsx/split?format=png';
        var sMethod = 'POST';
        var sSignedURL = Sign(sURL);

// Split Worksheet
        ProcessCommand(
            sMethod,
            sSignedURL,
            null,
            function (response) {
                console.log(JSON.stringify(response, null, 2));

                var method = 'GET';
                var request_url = 'storage/file/' + response.Result.Documents[0].link.Href;
                var output_file = 'NodejsREST0.output.png';
                var output_path = getPath(__filename, output_file);
                console.error(output_path);
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

