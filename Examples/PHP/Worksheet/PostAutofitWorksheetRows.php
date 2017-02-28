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
	
	public function postAutofitWorksheetRows() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $body = '{
                    "AutoFitMergedCells": true,
                    "IgnoreHidden": true,
                    "OnlyAuto": true
                }';
        $result = $this->cells->PostAutofitWorksheetRows($name=$fileName, $sheetName="Sheet1", $startRow = 1, $endRow = 10, $onlyAuto = true, $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->postAutofitWorksheetRows();

?>