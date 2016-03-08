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

// Cell area Class
        function CellArea() {
            this.StartRow = 0;
            this.EndRow = 0;
            this.StartColumn = 0;
            this.EndColumn = 0;
        };

// Hyper link
        function Hyperlink() {
            this.Address = "";
            this.Area = new CellArea();
            this.ScreenTip = "";
            this.TextToDisplay = "";
        };
        var sURL = 'cells/' + input_file + '/worksheets/Sheet1/hyperlinks/0';
        var sMethod = 'POST';

        var sSignedURL = Sign(sURL);

        //var objcellarea = require('C:\\nodes.js\\CellArea.js');
        var objcellarea = new CellArea();
        objcellarea.StartRow = 1;
        objcellarea.EndRow = 1;
        objcellarea.StartColumn = 1;
        objcellarea.EndColumn = 3;

        //  var objHLink = require('C:\\nodes.js\\Hyperlink.js');
        var objHLink = new Hyperlink();
        objHLink.Area = objcellarea;
        objHLink.Address = 'http://www.aspose.com/';
        objHLink.ScreenTip = 'Hello World';
        objHLink.TextToDisplay = 'Welcome to Aspose';

        ProcessCommand(sMethod, sSignedURL, objHLink,
            function (response) {
                console.log(JSON.stringify(response, null, 2));


                sURL = "storage/file/" + input_file;

                sMethod = 'GET';
                sSignedURL = Sign(sURL);

                var fs = require('fs');
                var output_file = 'NodejsREST.outPut.xlsx';
                var outputPath = getPath(__filename, output_file);

                ProcessCommandContent(sMethod, sSignedURL, null,
                    function (buffer) {
                        fs.writeFileSync(outputPath, buffer);
                    }
                );

            }
        );
    }
);



