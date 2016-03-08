var utils = require("../utils.js");
var fs = require('fs');


var method = 'PUT';
var request_url = 'cells/convert?format=pdf';
var input_file = 'sample1.xlsx';
var input_path = getPath(__filename, input_file);
var output_file = 'nodejsREST.output.pdf';
var output_path = getPath(__filename, output_file);
var input_buffer = fs.readFileSync(input_path);

ProcessCommandStream(
    method,
    Sign(request_url),
    input_buffer,
    function(output_buffer) {
        fs.writeFileSync(output_path, output_buffer);
    }
);
