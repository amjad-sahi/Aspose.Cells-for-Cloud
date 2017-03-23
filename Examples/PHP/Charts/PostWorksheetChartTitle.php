//ExStart:
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

	public function postWorksheetChartTitle() {
		// Upload file to Aspose Cloud Storage
		$fileName = "test_cells.xlsx";
		Utils::uploadFile($fileName);
		
        $body = array("Title"=>array("Text"=>"Sales Report"));
        $result = $this->cells->PostWorksheetChartTitle($name=$fileName, $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$chart = new Chart();
$chart->postWorksheetChartTitle();

?>
//ExEnd:
