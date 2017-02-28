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

	public function postCopyWorksheet() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostCopyWorksheet($name=$fileName, $sheetName="Sheet3", $sourceSheet="Sheet1", $folder = null, $storage = null);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->postCopyWorksheet();

?>