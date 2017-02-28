<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Workbook {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function postColumnStyle() {
        // Upload file to Aspose Cloud Storage
        $fileName = "myWorkbook.xlsx";
        Utils::uploadFile($fileName);
        
        $body = '{
                    "BackgroundColor": {
                        "A": "1",
                        "R": "245",
                        "G": "200",
                        "B": "178"
                      }
                  }';
                  
        $result = $this->cells->PostColumnStyle($name=$fileName, $sheetName="Sheet1", $columnIndex=0, $storage = null, $folder = null, $body);
        print_r($result);
    }
}

$workbook = new Workbook();
$workbook->postColumnStyle();

?>