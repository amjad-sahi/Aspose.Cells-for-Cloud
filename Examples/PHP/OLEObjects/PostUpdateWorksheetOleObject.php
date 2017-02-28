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

	public function postUpdateWorksheetOleObject() {
        // Upload file to Aspose Cloud Storage
        $fileName = "Embeded_OleObject_Sample_Book1.xlsx";
        Utils::uploadFile($fileName);
        Utils::uploadFile("Sample_Book2.xls");
        Utils::uploadFile("aspose-logo.png");
        
        $body = '{
                    "OleObject": {
                      "Name" : "ole",
                      "UpperLeftRow" : "18",
                      "Top" : "100",
                      "UpperLeftColumn" : "18",
                      "Left" : "100",
                      "LowerRightRow" : "24",
                      "Bottom" : "0",
                      "LowerRightColumn" : "2",
                      "Right" : "0",
                      "Width" : "100",
                      "Height" : "100",
                      "X" : "64",
                      "Y" : "360",
                      "DisplayAsIcon" : "false",
                      "FileType" : "Unknown",
                      "IsAutoSize" : "false",
                      "IsLink" : "false",
                      "SourceFullName" : "Sample_Book2.xls",
                      "ImageSourceFullName" : "aspose-logo.png",
                    }}';
                    
        $result = $this->cells->PostUpdateWorksheetOleObject($name=$fileName, $sheetName="Sheet1", $oleObjectIndex="0", $storage = null, $folder = null, $body);
        print_r($result);
}
}

$oLEObject = new OLEObject();
$oLEObject->postUpdateWorksheetOleObject();

?>