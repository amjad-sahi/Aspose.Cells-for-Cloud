//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Cell {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function postUpdateWorksheetCellStyle() {
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
                    "BackgroundColor": {
                        "R": "255",
                        "G": "255",
                        "B": "255"
                    },
                    "ShrinkToFit": true
                }';
        $result = $this->cells->PostUpdateWorksheetCellStyle($name=$fileName, $sheetName="Sheet1", $cellName="A3", $storage = null, $folder = null, $body);
        print_r($result);
    }
}

$cell = new Cell();
$cell->postUpdateWorksheetCellStyle();

?>
//ExEnd:
