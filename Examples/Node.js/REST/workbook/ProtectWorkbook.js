var utils = require("../utils.js");
var fs = require('fs');

var method = 'PUT';
var request_url = 'storage/file/' + 'sample1.xlsx';
var input_file = 'sample1.xlsx';
var input_path = getPath(__filename, input_file);
var buffer = fs.readFileSync(input_path);

//Uploading a File
UploadFileBinary(
    method,
    Sign(request_url),
    buffer,
    function (response) {
        if (response.Status == 'OK') {
            console.log(input_path, 'has been uploaded');
        }
//Processing File
        var method = 'POST';
        var request_url = 'cells/' +input_file+ '/protection';

        ProcessCommand(
            method,
            Sign(request_url),
            {
                ProtectionType: 'All',
                Password: 'password'
            },
            function (response) {
                if (response.Status == 'OK') {
                    console.log('File has been Protected');
                }
//Downloading processed File
                var method = 'GET';
                var request_url = 'storage/file/' + 'Sample1.xlsx';
                var output_file = 'Nodejs.output.xlsx';
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

