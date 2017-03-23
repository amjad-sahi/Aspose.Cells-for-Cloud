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
	
	public function getWorkBookWithFormat() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);

        $result = $this->cells->GetWorkBookWithFormat($name=$fileName, $format="pdf", $password = null, $isAutoFit = null, $storage = null, $folder = null, $outPath = null);
        $fh = fopen(realpath(__DIR__ . '/../../..') . '/Data/Output/Workbook.pdf', 'w');
        fwrite($fh, $result);
        fclose($fh);
	}
}

$workbook = new Workbook();
$workbook->getWorkBookWithFormat();

?>
//ExEnd:
