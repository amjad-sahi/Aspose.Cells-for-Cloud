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

	public function postSetCellRangeValue() {
		// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostSetCellRangeValue($name=$fileName, $sheetName="Sheet1", $cellarea="A10:B20", $value="1234", $type="int", $storage = null, $folder = null);
        print_r($result);
	}
}

$cell = new Cell();
$cell->postSetCellRangeValue();

?>
//ExEnd:
