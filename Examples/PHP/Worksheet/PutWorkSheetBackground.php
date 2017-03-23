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

	public function putWorkSheetBackground() {
		// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);
		
        $file = realpath(__DIR__ . '/../../..') . '/Data/Creative.jpg';
        $result = $this->cells->PutWorkSheetBackground($name=$fileName, $sheetName="Sheet1", $storage = null, $folder = null, $file);
        print_r($result);
	}
}

$worksheet = new Worksheet();
$worksheet->putWorkSheetBackground();

?>
//ExEnd:
