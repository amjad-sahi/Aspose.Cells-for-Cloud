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
	
	public function putWorkbookCreate() {
		$file = realpath(__DIR__ . '/../../..') . '/Data/test_convert_cell.xlsx';
        $result = $this->cells->PutWorkbookCreate($name="new_workbook.xlsx", $templateFile = null, $dataFile = null, $storage = null, $folder = null, $file);
        print_r($result);
	}
}

$workbook = new Workbook();
$workbook->putWorkbookCreate();

?>