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

	public function postAutofitWorkbookRows() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "test_cells.xlsx";
		Utils::uploadFile($fileName);

        $body = '{
                    "AutoFitMergedCells": true,
                    "IgnoreHidden": true,
                    "OnlyAuto": true
                  }';
        $result = $this->cells->PostAutofitWorkbookRows($name=$fileName, $startRow = null, $endRow = null, $onlyAuto = null, $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$row = new Row();
$row->postAutofitWorkbookRows();

?>
//ExEnd:
