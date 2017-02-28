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

	public function putInsertWorksheetColumns() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);
		
        $result = $this->cells->PutInsertWorksheetColumns($name=$fileName, $sheetName="Sheet1", $columnIndex=5, $columns=3, $updateReference = true, $storage = null, $folder = null);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->putInsertWorksheetColumns();

?>