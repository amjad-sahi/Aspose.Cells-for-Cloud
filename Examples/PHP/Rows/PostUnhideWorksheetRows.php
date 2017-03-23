//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Row {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function postUnhideWorksheetRows() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostUnhideWorksheetRows($name=$fileName, $sheetName="Sheet1", $startrow=1, $totalRows=3, $height = 30.0, $storage = null, $folder = null);
        print_r($result);
	}
}

$row = new Row();
$row->postUnhideWorksheetRows();

?>
//ExEnd:
