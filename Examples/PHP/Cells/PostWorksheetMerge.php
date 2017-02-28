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

	public function postWorksheetMerge() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "test_cells.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostWorksheetMerge($name=$fileName, $sheetName="Sheet1", $startRow=1, $startColumn=1, $totalRows=10, $totalColumns=10, $storage = null, $folder = null);
        print_r($result);
	}
}

$cell = new Cell();
$cell->postWorksheetMerge();

?>