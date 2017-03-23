//ExStart:
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
	
	public function postGroupWorksheetColumns() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "test_cells.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostGroupWorksheetColumns($name=$fileName, $sheetName="Sheet3", $firstIndex=1, $lastIndex=5, $hide = null, $storage = null, $folder = null);
        print_r($result);
	}
}

$workbook = new Workbook();
$workbook->postGroupWorksheetColumns();

?>
//ExEnd:
