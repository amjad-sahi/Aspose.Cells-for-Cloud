//ExStart:
<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Picture {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function putWorksheetAddPicture() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);
		
        $file = realpath(__DIR__ . '/../../..') . '/Data/watermark.png';
        $result = $this->cells->PutWorksheetAddPicture($name=$fileName, $sheetName="Sheet6", $upperLeftRow = 5, $upperLeftColumn = 5, $lowerRightRow = 10, $lowerRightColumn = 10, $picturePath = "watermark.png", $storage = null, $folder = null, $file);
        print_r($result);
	}
}

$picture = new Picture();
$picture->putWorksheetAddPicture();

?>
//ExEnd:
