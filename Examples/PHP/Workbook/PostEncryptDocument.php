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
	
	public function postEncryptDocument() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "test_cells.xlsx";
		Utils::uploadFile($fileName);

        $body = array("EncriptionType"=>"XOR", "KeyLength"=>"128", "Password"=>"123456");
        $result = $this->cells->PostEncryptDocument($name=$fileName, $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$workbook = new Workbook();
$workbook->postEncryptDocument();

?>