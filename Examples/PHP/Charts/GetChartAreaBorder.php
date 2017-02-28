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

	public function getChartAreaBorder() {
		// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $result = $this->cells->GetChartAreaBorder($name=$fileName, $sheetName="Sheet5", $chartIndex="0", $storage = null, $folder = null);        
        print_r($result);
	}
}

$chart = new Chart();
$chart->getChartAreaBorder();

?>