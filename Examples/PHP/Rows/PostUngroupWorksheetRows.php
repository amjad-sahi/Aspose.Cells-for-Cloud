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

	public function postUngroupWorksheetRows() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostUngroupWorksheetRows($name=$fileName, $sheetName="Sheet1", $firstIndex=1, $lastIndex=5, $isAll = true, $storage = null, $folder = null);
        print_r($result);
	}
}

$row = new Row();
$row->postUngroupWorksheetRows();

?>
//ExEnd:
