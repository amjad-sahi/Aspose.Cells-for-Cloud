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

	public function postWorkSheetPicture() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);
		Utils::uploadFile("aspose-cloud.png");

        $body = array("Name"=>"aspose-cloud.png", "AutoShapeType"=>"Picture", "Placement"=>"MoveAndSize",
                      "UpperLeftRow"=>5, "Top"=>100, "UpperLeftColumn"=>5, "Left"=>100);
        $result = $this->cells->PostWorkSheetPicture($name=$fileName, $sheetName="Sheet6", $pictureIndex="0", $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$picture = new Picture();
$picture->postWorkSheetPicture();

?>
//ExEnd:
