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
	
	public function postWorkbookSplit() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostWorkbookSplit($name=$fileName, $format = "png", $from = 1, $to = 1, $horizontalResolution = null, $verticalResolution = null, $storage = null, $folder = null);
        print_r($result);
	}
}

$workbook = new Workbook();
$workbook->postWorkbookSplit();

?>