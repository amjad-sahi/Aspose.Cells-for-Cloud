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

	public function putWorkSheetHyperlink() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->PutWorkSheetHyperlink($name=$fileName, $sheetName="Sheet1", $firstRow=1, $firstColumn=1, $totalRows=2, $totalColumns=2, $address="http://www.aspose.com/", $storage = null, $folder = null);
        print_r($result);
	}
}

$hyperlink = new Hyperlink();
$hyperlink->putWorkSheetHyperlink();

?>
//ExEnd:
