//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Cell {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function getWorksheetCell() {
		// Upload file to Aspose Cloud Storage
		$fileName = "test_cells.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->GetWorksheetCell($name=$fileName, $sheetName="Sheet1", $cellOrMethodName="A1", $storage = null, $folder = null);
        print_r($result);
	}
}

$cell = new Cell();
$cell->getWorksheetCell();

?>
//ExEnd:
