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
	
	public function deleteWorkSheetBackground() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "WorkSheetBackground_Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $result = $this->cells->DeleteWorkSheetBackground($name=$fileName, $sheetName="Sheet1", $storage = null, $folder = null);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->deleteWorkSheetBackground();

?>