var utils = require("../utils.js");
var fs = require('fs');

var method = 'PUT';
var input_file = 'sample1.xlsx';
var request_url = 'storage/file/' + input_file;
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

        var sURL = 'cells/' + input_file + '/worksheets/Sheet1/cells/maxrow';
        var sMethod = 'GET';

        var sSignedURL = Sign(sURL);

        ProcessCommand(sMethod, sSignedURL, null,
            function (response) {
                console.log(
                    JSON.stringify(response, null, 2)
                );
            }
        );

    }
);
