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

	public function putWorksheetPivotTable() {
        // Upload file to Aspose Cloud Storage
        $fileName = "Sample_Test_Book.xls";
        Utils::uploadFile($fileName);

        $body = '{
                    "Name": "MyPivot",
                    "SourceData": "A5:E10",
                    "DestCellName": "H20",
                    "UseSameSource": true,
                    "PivotFieldRows": [
                      1
                    ],
                    "PivotFieldColumns": [
                      1
                    ],
                    "PivotFieldData": [
                      1
                    ]
                  }';
        $result = $this->cells->PutWorksheetPivotTable($name=$fileName, $sheetName="Sheet1", $storage = null, $folder = null, $sourceData = null, $destCellName = null, $tableName = null, $useSameSource = null, $body);
        print_r($result);
  }
}

$pivotTable = new PivotTable();
$pivotTable->putWorksheetPivotTable();

?>