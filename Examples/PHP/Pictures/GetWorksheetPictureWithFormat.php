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

	public function getWorksheetPictureWithFormat() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $result = $this->cells->GetWorksheetPictureWithFormat($name=$fileName, $sheetName="Sheet6", $pictureNumber="0", $format="png", $storage = null, $folder = null);
        $fh = fopen(realpath(__DIR__ . '/../../..') . '/Data/Output/Picture.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
	}
}

$picture = new Picture();
$picture->getWorksheetPictureWithFormat();

?>