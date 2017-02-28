<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Worksheet {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function postUpdateWorksheetRangeStyle() {
        // Upload file to Aspose Cloud Storage
        $fileName = "myWorkbook.xlsx";
        Utils::uploadFile($fileName);
        
        $body = '{
                    "Font": {
                      "DoubleSize": 20.0,
                      "IsBold": true,
                      "IsItalic": true,
                      "IsStrikeout": true,
                      "Size": 15
                    },
                    "ShrinkToFit": true
                  }';
                  
        $result = $this->cells->PostUpdateWorksheetRangeStyle($name=$fileName, $sheetName="Sheet1", $range="A1:C4", $storage = null, $folder = null, $body);
        print_r($result);
    }
}

$worksheet = new Worksheet();
$worksheet->postUpdateWorksheetRangeStyle();

?>