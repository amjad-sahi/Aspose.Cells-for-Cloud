//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Image {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function getWorksheetAutoshapeWithFormat() {
		// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $result = $this->cells->GetWorksheetAutoshapeWithFormat($name=$fileName, $sheetName="Sheet4", $autoshapeNumber=1, $format="png", $storage = null, $folder = null);
        $fh = fopen(realpath(__DIR__ . '/../../..') . '/Data/Output/Autoshape.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
	}
}

$image = new Image();
$image->getWorksheetAutoshapeWithFormat();

?>
//ExEnd:
