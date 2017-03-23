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

	public function getWorkSheetWithFormat() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->GetWorkSheetWithFormat($name=$fileName, $sheetName="Sheet1", $format="gif", $verticalResolution = null, $horizontalResolution = null, $storage = null, $folder = null);
        $fh = fopen(realpath(__DIR__ . '/../../..') . '/Data/Output/Sheet1.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
	}
}

$worksheet = new Worksheet();
$worksheet->getWorkSheetWithFormat();

?>
//ExEnd:
