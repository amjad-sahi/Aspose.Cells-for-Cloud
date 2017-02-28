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
	
	public function putConvertWorkBook() {
        $file = realpath(__DIR__ . '/../../..') . '/Data/myWorkbook.xlsx';
        $result = $this->cells->PutConvertWorkBook($format = "pdf", $password = null, $outPath = null, $file);
        $fh = fopen(realpath(__DIR__ . '/../../..') . '/Data/Output/test_convert_cell.pdf', 'w');
        fwrite($fh, $result);
        fclose($fh);
	}
}

$workbook = new Workbook();
$workbook->putConvertWorkBook();

?>