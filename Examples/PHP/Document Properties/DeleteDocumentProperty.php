<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class DocumentProperty {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function deleteDocumentProperty() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "myWorkbook.xlsx";
		Utils::uploadFile($fileName);
		
        $result = $this->cells->DeleteDocumentProperty($name=$fileName, $propertyName="author", $storage = null, $folder = null);
        print_r($result);
	}
}

$documentProperty = new DocumentProperty();
$documentProperty->deleteDocumentProperty();

?>