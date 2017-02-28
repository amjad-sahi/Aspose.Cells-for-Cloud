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
	
	public function postUpdateWorksheetProperty() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $body = array("Type"=>"Worksheet", "Name"=>"sheet1", "IsGridlinesVisible"=>"false");
        $result = $this->cells->PostUpdateWorksheetProperty($name=$fileName, $sheetName="Sheet1", $folder = null, $storage = null, $body);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->postUpdateWorksheetProperty();

?>