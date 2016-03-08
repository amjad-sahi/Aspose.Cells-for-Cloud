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

        var sURL = 'cells/'+input_file+'/worksheets/Sheet1/cells/style?range=A4:A8';
        var sMethod = 'POST';

        var sSignedURL = Sign(sURL);

        // Color class
        function Color() {
            this.A = 0;
            this.R = 0;
            this.G = 0;
            this.B = 0;
        };

// Font class
        function Font() {
            this.Name = "";
            this.Size = 0.0;
            this.objColor = new Color();
            this.DoubleSize = 0.0;
            this.IsBold = false;
            this.IsItalic = false;
            this.IsSubscript = false;
            this.IsStrikeout = false;
            this.IsSuperscript = false;
            this.sUndeline = "";
        };
 var objColor = new Color();
       var objFont = new Font();
        objFont.DoubleSize = 20.0;
        objFont.IsBold = true;
        objFont.IsItalic = true;
        objFont.IsStrikeout = true;
        objFont.Size = 15.0;

        objColor.R = 10;
        objColor.G = 14;
        objColor.B = 20;
// Style class
        function Style() {

            this.objFont = new Font();
            this.ShrinkToFit = false;
            this.BackgroundColor = new Color();

        };
        var objStyle = new Style();
        objStyle.Font = objFont;
        objStyle.BackgroundColor = objColor;
        objStyle.ShrinkToFit = true;


        ProcessCommand(	sMethod, sSignedURL, objStyle,
            function(response)
            {
                console.log(JSON.stringify(response, null, 2));


        sURL = "storage/file/"+input_file;

        sMethod = 'GET';
        sSignedURL = Sign(sURL);
        console.log(sSignedURL);

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
