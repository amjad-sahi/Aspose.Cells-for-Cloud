//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class OLEObject {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function getWorksheetOleObjectWithFormat() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Embeded_OleObject_Sample_Book1.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->GetWorksheetOleObjectWithFormat($name=$fileName, $sheetName="Sheet1", $objectNumber="0", $format="png", $storage = null, $folder = null);
        $fh = fopen(realpath(__DIR__ . '/../../..') . '/Data/Output/Ole.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
	}
}

$oLEObject = new OLEObject();
$oLEObject->getWorksheetOleObjectWithFormat();

?>
//ExEnd:
