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
	
	public function postHideWorksheetColumns() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostHideWorksheetColumns($name=$fileName, $sheetName="Sheet1", $startColumn=0, $totalColumns=1, $storage = null, $folder = null);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->postHideWorksheetColumns();

?>