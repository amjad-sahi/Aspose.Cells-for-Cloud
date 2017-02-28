<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class OLEObject {

    public $cells;

    public function __construct() {
        AsposeApp::$appSID = Utils::appSID;
        AsposeApp::$apiKey = Utils::apiKey;
        $this->cells = new CellsApi();
    }

	public function putWorksheetOleObject() {
        
        // Upload file to Aspose Cloud Storage
        $fileName = "Sample_Test_Book.xls";
        Utils::uploadFile($fileName);
        Utils::uploadFile("Sample_Book2.xls");
        Utils::uploadFile("aspose-logo.png");

        $body = '{
                    "ImageSourceFullName": "aspose-logo.png",
                    "SourceFullName": "Sample_Book2.xls",
                    "UpperLeftRow": 15,
                    "UpperLeftColumn": 5,
                    "Top": 10,
                    "Left": 10,
                    "Width": 400,
                    "Height": 400,
                    "IsAutoSize" : true
                  }';

        $result = $this->cells->PutWorksheetOleObject($name=$fileName, $sheetName="Sheet1", $upperLeftRow = null, $upperLeftColumn = null, $height = null, $width = null, $oleFile = null, $imageFile = null, $storage = null, $folder = null, $body);
        print_r($result);
    }
}

$oLEObject = new OLEObject();
$oLEObject->putWorksheetOleObject();

?>