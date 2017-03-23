//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class ImportData {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function postImportData() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $body = '{
                    "DestinationWorksheet": "Sheet3",
                    "IsInsert": true
                  }';
        $result = $this->cells->PostImportData($name=$fileName, $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$importData = new ImportData();
$importData->postImportData();

?>
//ExEnd:
