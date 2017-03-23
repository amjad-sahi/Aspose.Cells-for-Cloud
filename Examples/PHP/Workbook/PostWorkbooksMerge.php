//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Workbook {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}
	
	public function postWorkbooksMerge() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Book1.xlsx";
		Utils::uploadFile($fileName);
		$mergeWith = "Sample_Book2.xls";
		Utils::uploadFile($mergeWith);

        $result = $this->cells->PostWorkbooksMerge($name=$fileName, $mergeWith=$mergeWith, $storage = null, $folder = null);
        print_r($result);
	}
}

$workbook = new Workbook();
$workbook->postWorkbooksMerge();

?>
//ExEnd:
