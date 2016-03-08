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


        var method = 'GET';
        var request_url ='cells/'+input_file+'?format=pdf&isAutoFit=true';
       // var output_file = 'Workbook1.pdf';
        var output_file = 'NodejsREST.output.pdf';
        var outputPath = getPath(__filename, output_file);

        ProcessCommandContent(
            method,
            Sign(request_url),
            null,
            function(buffer) {
                fs.writeFileSync(outputPath, buffer);


            }
        );
    }
);



