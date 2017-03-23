//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Worksheet {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}
	
	public function postMoveWorksheet() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $body = '{
                    "DestinationWorksheet": "Sheet5",
                    "Position": "after"
                  }';
        $result = $this->cells->PostMoveWorksheet($name=$fileName, $sheetName="Sheet1", $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->postMoveWorksheet();

?>
//ExEnd:
