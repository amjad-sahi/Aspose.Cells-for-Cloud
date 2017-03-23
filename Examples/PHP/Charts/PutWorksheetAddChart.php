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

	public function putWorksheetAddChart() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PutWorksheetAddChart($name=$fileName, $sheetName="Sheet1", $chartType="Bar", $upperLeftRow = 12, $upperLeftColumn = 12, $lowerRightRow = 20, $lowerRightColumn = 20, $area = "B1:F2", $isVertical = true, $categoryData = "A1:A2", $isAutoGetSerialName = true, $title = "SalesState", $storage = null, $folder = null);
        print_r($result);
	}
}

$chart = new Chart();
$chart->putWorksheetAddChart();

?>
//ExEnd:
