<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Chart {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function getWorksheetChart() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "test_cells.xlsx";
		Utils::uploadFile($fileName);
		
        $result = $this->cells->GetWorksheetChart($name=$fileName, $sheetName="Sheet1", $chartNumber="0", $storage = null, $folder = null);
        print_r($result);
	}
}

$chart = new Chart();
$chart->getWorksheetChart();

?>