//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Hyperlink {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function postWorkSheetHyperlink() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $body = array("Address"=>"http://www.aspose.com", "TextToDisplay"=>"Welcome to Aspose", "ScreenTip"=>"Hello World");
        $result = $this->cells->PostWorkSheetHyperlink($name=$fileName, $sheetName="Sheet1", $hyperlinkIndex="0", $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$hyperlink = new Hyperlink();
$hyperlink->postWorkSheetHyperlink();

?>
//ExEnd:
