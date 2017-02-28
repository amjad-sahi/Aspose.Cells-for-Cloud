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
	
	public function postWorkbookGetSmartMarkerResult() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_SmartMarker.xlsx";
		Utils::uploadFile($fileName);

        $file = realpath(__DIR__ . '/../../..') . '/Data/Sample_SmartMarker_Data.xml';
        $result = $this->cells->PostWorkbookGetSmartMarkerResult($name=$fileName, $xmlFile = null, $storage = null, $folder = null, $outPath = "smartmarker1.xlsx", $file);
        print_r($result);
	}	
}

$workbook = new Workbook();
$workbook->postWorkbookGetSmartMarkerResult();

?>