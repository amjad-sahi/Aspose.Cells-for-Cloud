<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\Cells\CellsApi;
use Aspose\Cells\AsposeApp;

class Worksheet {

  public $cells;

  public function __construct() {
    AsposeApp::$appSID = Utils::appSID;
    AsposeApp::$apiKey = Utils::apiKey;
    $this->cells = new CellsApi();
  }
  
	public function postWorksheetRangeSort() {
        // Upload file to Aspose Cloud Storage
        $fileName = "myWorkbook.xlsx";
        Utils::uploadFile($fileName);

        $body = array(
                    "CaseSensitive" => true,
                    "HasHeaders" => true,
                    'SortLeftToRight'=> false,
                    "KeyList" => array(
                      array(
                        "Key"=> 4,
                        "SortOrder"=> "descending"
                      ),
                      array(
                        "Key"=> 5,
                        "SortOrder"=> "descending"
                      )
                    )
                  );
        $result = $this->cells->PostWorksheetRangeSort($name=$fileName, $sheetName="Sheet1", $cellArea="A1:C4", $storage = null, $folder = null, $body);
        print_r($result);
  }
}

$worksheet = new Worksheet();
$worksheet->postWorksheetRangeSort();

?>