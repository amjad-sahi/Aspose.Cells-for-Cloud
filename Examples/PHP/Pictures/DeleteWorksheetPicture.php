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

	public function deleteWorksheetPicture() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $result = $this->cells->DeleteWorksheetPicture($name=$fileName, $sheetName="Sheet6", $pictureIndex="0", $storage = null, $folder = null);
        print_r($result);
	}
}

$picture = new Picture();
$picture->deleteWorksheetPicture();

?>
//ExEnd:
