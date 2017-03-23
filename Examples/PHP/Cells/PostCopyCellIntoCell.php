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

	public function postCopyCellIntoCell() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);
		
        $result = $this->cells->PostCopyCellIntoCell($name=$fileName, $destCellName="C5", $sheetName="Sheet1", $worksheet="Sheet1", $cellname="A5", $row = null, $column = null, $storage = null, $folder = null);
        print_r($result);
	}
}

$cell = new Cell();
$cell->postCopyCellIntoCell();

?>
//ExEnd:
