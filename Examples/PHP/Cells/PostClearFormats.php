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

	public function postClearFormats() {
		// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);
		
        $result = $this->cells->PostClearFormats($name=$fileName, $sheetName="Sheet1", $range = "A2:C11", $startRow = 2, $startColumn = 1, $endRow = 11, $endColumn = 3, $storage = null, $folder = null);
        print_r($result);
	}
}

$cell = new Cell();
$cell->postClearFormats();

?>