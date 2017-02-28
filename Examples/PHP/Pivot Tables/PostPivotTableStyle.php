<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class PivotTable {

	public $cells;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->cells = new CellsApi();
	}

	public function postPivotTableStyle() {
    	// Upload file to Aspose Cloud Storage
		$fileName = "Sample_Pivot_Table_Example.xls";
		Utils::uploadFile($fileName);
		
        $body = '{
                    "Style": {
                      "IsGradient": "true",
                      "Font": { "IsBold": "true" }
                    }
                  }';
        $result = $this->cells->PostPivotTableStyle($name=$fileName, $sheetName="Sheet2", $pivotTableIndex="0", $storage = null, $folder = null, $body);
        print_r($result);
	}
}

$pivotTable = new PivotTable();
$pivotTable->postPivotTableStyle();

?>