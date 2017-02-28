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
	
	public function postCopyWorksheetColumns() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostCopyWorksheetColumns($name=$fileName, $sheetName="Sheet1", $sourceColumnIndex=2, $destinationColumnIndex=0, $columnNumber=4, $worksheet = null, $storage = null, $folder = null);
        print_r($result);
	}
}

$workbook = new Workbook();
$workbook->postCopyWorksheetColumns();

?>