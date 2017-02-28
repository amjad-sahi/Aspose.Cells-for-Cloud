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
	
	public function postUnhideWorksheetColumns() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostUnhideWorksheetColumns($name=$fileName, $sheetName="Sheet1", $startcolumn=0, $totalColumns=2, $width = null, $storage = null, $folder = null);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->postUnhideWorksheetColumns();

?>