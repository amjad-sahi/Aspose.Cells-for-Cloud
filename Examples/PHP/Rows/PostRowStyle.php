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

	public function postRowStyle() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $body = '{
                	"BackgroundColor": {
                    	"A": "1",
                    	"R": "245",
                    	"G": "200",
                    	"B": "178"
                	}
              	}';  

        $result = $this->cells->PostRowStyle($name="myWorkbook.xlsx", $sheetName="Sheet1", $rowIndex=1, $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$row = new Row();
$row->postRowStyle();

?>
//ExEnd:
