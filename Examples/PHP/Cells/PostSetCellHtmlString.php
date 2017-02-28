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

	public function postSetCellHtmlString() {
		// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

		//$file = realpath(__DIR__ . '/../../..') . '/Data/index.html';
        $result = $this->cells->PostSetCellHtmlString($name=$fileName, $sheetName="Sheet1", $cellName="A3", $storage = null, $folder = null, $file = null);
        print_r($result);
	}
}

$cell = new Cell();
$cell->postSetCellHtmlString();

?>