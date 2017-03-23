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
	
	public function postDocumentSaveAs() {
        // Upload file to Aspose Cloud Storage
        $fileName = "myWorkbook.xlsx";
        Utils::uploadFile($fileName);
        
        $body = '{
                    "desiredPPI": 300,
                    "jpegQuality": 70,
                    "OnePagePerSheet": true,
                    "SaveFormat": "pdf"
                  }';
        $result = $this->cells->PostDocumentSaveAs($name=$fileName, $newfilename = "test_cells.pdf", $isAutoFitRows = true, $isAutoFitColumns = true, $storage = null, $folder = null, $body);
        print_r($result);
    }
}

$workbook = new Workbook();
$workbook->postDocumentSaveAs();

?>
//ExEnd:
