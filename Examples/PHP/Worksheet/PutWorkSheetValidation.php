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

	public function putWorkSheetValidation() {
		// Upload file to Aspose Cloud Storage
		$fileName = "myWorkBook.xlsx";
		Utils::uploadFile($fileName);
		
        $result = $this->cells->PutWorkSheetValidation($name=$fileName, $sheetName="Sheet1", $range="A1:C10", $storage = null, $folder = null, $file = null);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->putWorkSheetValidation();

?>