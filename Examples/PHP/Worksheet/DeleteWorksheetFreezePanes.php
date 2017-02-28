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
	
	public function deleteWorksheetFreezePanes() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->DeleteWorksheetFreezePanes($name=$fileName, $sheetName="Sheet1", $row=1, $column=1, $freezedRows=1, $freezedColumns=1, $folder = null, $storage = null);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->deleteWorksheetFreezePanes();

?>