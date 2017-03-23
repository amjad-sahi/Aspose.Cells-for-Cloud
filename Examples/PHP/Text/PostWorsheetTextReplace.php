//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Text {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function postWorsheetTextReplace() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostWorsheetTextReplace($name=$fileName, $sheetName="Sheet2", $oldValue="OLE", $newValue="Ole", $storage = null, $folder = null);
        print_r($result);
	}
}

$text = new Text();
$text->postWorsheetTextReplace();

?>
//ExEnd:
