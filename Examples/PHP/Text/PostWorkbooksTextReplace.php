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

	public function postWorkbooksTextReplace() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PostWorkbooksTextReplace($name=$fileName, $oldValue="OLE", $newValue="OleObject", $storage = null, $folder = null);
        print_r($result);
	}
}

$text = new Text();
$text->postWorkbooksTextReplace();

?>