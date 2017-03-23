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
	
	public function putDocumentProtectFromChanges() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Test_Book.xls";
		Utils::uploadFile($fileName);

        $body = array("ProtectionType"=>"all", "Password"=>"aspose");
        $result = $this->cells->PutDocumentProtectFromChanges($name=$fileName, $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$workbook = new Workbook();
$workbook->putDocumentProtectFromChanges();

?>
//ExEnd:
