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

        var method = 'POST';
        var request_url ='cells/'+input_file+'/worksheets/Sheet1/cells/A1?value=hello&type=string';

        ProcessCommand(
            method,
            Sign(request_url),
            null,
            function(response) {
                console.log(JSON.stringify(response, null, 2));

                var method_download = 'GET';
                var request_url_download = 'storage/file/' + input_file;
                var output_file = 'NodejsREST.output.xlsx';
                var outputPath = getPath(__filename, output_file);

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

    }
);
