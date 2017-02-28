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
	
	public function postWorkSheetValidation() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostWorkSheetValidation($name=$fileName, $sheetName="Sheet3", $validationIndex = 0, $storage = null, $folder = null, $file);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->postWorkSheetValidation();

?>