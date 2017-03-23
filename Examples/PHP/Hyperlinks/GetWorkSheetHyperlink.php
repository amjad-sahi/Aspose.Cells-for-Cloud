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

	public function getWorkSheetHyperlink() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $result = $this->cells->GetWorkSheetHyperlink($name=$fileName, $sheetName="Sheet2", $hyperlinkIndex="0", $storage = null, $folder = null);
        print_r($result);
	}
}

$hyperlink = new Hyperlink();
$hyperlink->getWorkSheetHyperlink();

?>
//ExEnd:
