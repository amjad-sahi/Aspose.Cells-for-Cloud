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
  
	public function putWorkSheetComment() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);

    $body = '{
                "CellName": "D18",
                "HtmlNote": "<Font Style=\"FONT-WEIGHT: bold;FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: 000000;TEXT-ALIGN: left;\">Sohail:</Font><Font Style=\"FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: 000000;TEXT-ALIGN: left;\">\nShopping</Font>"
             }';
    $result = $this->cells->PutWorkSheetComment($name=$fileName, $sheetName="Sheet1", $cellName="D18", $storage = null, $folder = null, $body);
    print_r($result);
  }
}

$worksheet = new Worksheet();
$worksheet->putWorkSheetComment();

?>