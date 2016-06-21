<?php

use Aspose\Cells\CellsApi;

class CellsApiTest extends PHPUnit_Framework_TestCase {
    
    protected $cells;

    protected function setUp()
    {        
        $this->cells = new CellsApi();
    }
    
    public function testDeleteDecryptDocument()
    {
        $body = array("Password" => "123456");
        $result = $this->cells->DeleteDecryptDocument($name="test_cells.xlsx", $storage = null, $folder = null, $body);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteDocumentProperties()
    {
        $result = $this->cells->DeleteDocumentProperties($name="test_convert_cell.xlsx", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteDocumentProperty()
    {
        $result = $this->cells->DeleteDocumentProperty($name="test_convert_cell.xlsx", $propertyName="Author", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteDocumentUnProtectFromChanges()
    {
        $result = $this->cells->DeleteDocumentUnProtectFromChanges($name="test_convert_cell.xlsx", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteUnProtectDocument()
    {
        $body = array("Password" => "123456");
        $result = $this->cells->DeleteUnProtectDocument($name="test_convert_cell.xlsx", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteUnprotectWorksheet()
    {
        $body = array("Password" => "123456");
        $result = $this->cells->DeleteUnprotectWorksheet($name="test_convert_cell.xlsx", $sheetName="Sheet1", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorkSheetBackground()
    {
        $result = $this->cells->DeleteWorkSheetBackground($name="test_convert_cell.xlsx", $sheetName="Sheet1", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorkSheetComment()
    {
        $result = $this->cells->DeleteWorkSheetComment($name="test_cells.xlsx", $sheetName="Sheet1", $cellName="A2", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorkSheetHyperlink()
    {
        $result = $this->cells->DeleteWorkSheetHyperlink($name="test_cells.xlsx", $sheetName="Sheet3", $hyperlinkIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorkSheetHyperlinks()
    {
        $result = $this->cells->DeleteWorkSheetHyperlinks($name="test_cells.xlsx", $sheetName="Sheet3", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorkSheetPictures()
    {
        $result = $this->cells->DeleteWorkSheetPictures($name="test_cells.xlsx", $sheetName="Sheet2", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorkSheetValidation()
    {
        $result = $this->cells->DeleteWorkSheetValidation($name="test_cells.xlsx", $sheetName="Sheet3", $validationIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheet()
    {
        $result = $this->cells->DeleteWorksheet($name="test_cells.xlsx", $sheetName="Sheet3", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetChartLegend()
    {
        $result = $this->cells->DeleteWorksheetChartLegend($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetChartTitle()
    {
        $result = $this->cells->DeleteWorksheetChartTitle($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetClearCharts()
    {
        $result = $this->cells->DeleteWorksheetClearCharts($name="test_cells.xlsx", $sheetName="Sheet1", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    /*public function testDeleteWorksheetColumns()
    {
        $result = $this->cells->DeleteWorksheetColumns($name="test_cells.xlsx", $sheetName="Sheet1", $columnIndex="0", $columns="0", $updateReference=true, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }*/
    
    public function testDeleteWorksheetDeleteChart()
    {
        $result = $this->cells->DeleteWorksheetDeleteChart($name="test_cells.xlsx", $sheetName="Sheet2", $chartIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetFreezePanes()
    {
        $result = $this->cells->DeleteWorksheetFreezePanes($name="test_cells.xlsx", $sheetName="Sheet3", $row=1, $column=1, $freezedRows=1, $freezedColumns=1, $folder = null, $storage = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetOleObject()
    {
        $result = $this->cells->DeleteWorksheetOleObject($name="test_cells.xlsx", $sheetName="Sheet2", $oleObjectIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetOleObjects()
    {
        $result = $this->cells->DeleteWorksheetOleObjects($name="test_cells.xlsx", $sheetName="Sheet2", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetPicture()
    {
        $result = $this->cells->DeleteWorksheetPicture($name="test_cells.xlsx", $sheetName="Sheet2", $pictureIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetPivotTable()
    {
        $result = $this->cells->DeleteWorksheetPivotTable($name="test_cells.xlsx", $sheetName="Sheet4", $pivotTableIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetPivotTables()
    {
        $result = $this->cells->DeleteWorksheetPivotTables($name="test_cells.xlsx", $sheetName="Sheet4", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetRow()
    {
        $result = $this->cells->DeleteWorksheetRow($name="test_cells.xlsx", $sheetName="Sheet3", $rowIndex=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testDeleteWorksheetRows()
    {
        $result = $this->cells->DeleteWorksheetRows($name="test_cells.xlsx", $sheetName="Sheet3", $startrow=1, $totalRows=10, $updateReference = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetChartArea()
    {
        $result = $this->cells->GetChartArea($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetChartAreaBorder()
    {
        $result = $this->cells->GetChartAreaBorder($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetChartAreaFillFormat()
    {
        $result = $this->cells->GetChartAreaFillFormat($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentProperties()
    {
        $result = $this->cells->GetDocumentProperties($name="test_cells.xlsx", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetDocumentProperty()
    {
        $result = $this->cells->GetDocumentProperty($name="test_cells.xlsx", $propertyName="Author", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetExtractBarcodes()
    {
        $result = $this->cells->GetExtractBarcodes($name="test_cells.xlsx", $sheetName="Sheet1", $pictureNumber="0", $storage = null, $folder = null);        
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkBook()
    {
        $result = $this->cells->GetWorkBook($name="test_cells.xlsx", $password = null, $isAutoFit = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkBookDefaultStyle()
    {
        $result = $this->cells->GetWorkBookDefaultStyle($name="test_cells.xlsx", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkBookName()
    {
        $result = $this->cells->GetWorkBookName($name="test_cells.xlsx", $nameName="test_cells.xlsx", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkBookNames()
    {
        $result = $this->cells->GetWorkBookNames($name="test_cells.xlsx", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkBookTextItems()
    {
        $result = $this->cells->GetWorkBookTextItems($name="test_cells.xlsx", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkBookWithFormat()
    {
        $result = $this->cells->GetWorkBookWithFormat($name="test_cells.xlsx", $format="pdf", $password = null, $isAutoFit = null, $storage = null, $folder = null, $outPath = null);
        $fh = fopen(getcwd(). '/Data/Output/Workbook.pdf', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Workbook.pdf');
    }
    
    public function testGetWorkSheet()
    {
        $result = $this->cells->GetWorkSheet($name="test_cells.xlsx", $sheetName="Sheet1", $verticalResolution = null, $horizontalResolution = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetCalculateFormula()
    {
        $result = $this->cells->GetWorkSheetCalculateFormula($name="test_cells.xlsx", $sheetName="Sheet3", $formula="SUM(A3,A4)", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetComment()
    {
        $result = $this->cells->GetWorkSheetComment($name="test_cells.xlsx", $sheetName="Sheet1", $cellName="A2", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetComments()
    {
        $result = $this->cells->GetWorkSheetComments($name="test_cells.xlsx", $sheetName="Sheet1", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetHyperlink()
    {
        $result = $this->cells->GetWorkSheetHyperlink($name="test_cells.xlsx", $sheetName="Sheet3", $hyperlinkIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetHyperlinks()
    {
        $result = $this->cells->GetWorkSheetHyperlinks($name="test_cells.xlsx", $sheetName="Sheet3", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetMergedCell()
    {
        $result = $this->cells->GetWorkSheetMergedCell($name="test_cells.xlsx", $sheetName="Sheet3", $mergedCellIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetMergedCells()
    {
        $result = $this->cells->GetWorkSheetMergedCells($name="test_cells.xlsx", $sheetName="Sheet3", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetTextItems()
    {
        $result = $this->cells->GetWorkSheetTextItems($name="test_cells.xlsx", $sheetName="Sheet3", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetValidation()
    {
        $result = $this->cells->GetWorkSheetValidation($name="test_cells.xlsx", $sheetName="Sheet1", $validationIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetValidations()
    {
        $result = $this->cells->GetWorkSheetValidations($name="test_cells.xlsx", $sheetName="Sheet1", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorkSheetWithFormat()
    {
        $result = $this->cells->GetWorkSheetWithFormat($name="test_cells.xlsx", $sheetName="Sheet1", $format="png", $verticalResolution = null, $horizontalResolution = null, $storage = null, $folder = null);
        $fh = fopen(getcwd(). '/Data/Output/Sheet1.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Sheet1.png');
    }
    
    public function testGetWorkSheets()
    {
        $result = $this->cells->GetWorkSheets($name="test_cells.xlsx", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetAutoshape()
    {
        $result = $this->cells->GetWorksheetAutoshape($name="test_cells.xlsx", $sheetName="Sheet2", $autoshapeNumber=2, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetAutoshapeWithFormat()
    {
        $result = $this->cells->GetWorksheetAutoshapeWithFormat($name="test_cells.xlsx", $sheetName="Sheet2", $autoshapeNumber=2, $format="png", $storage = null, $folder = null);
        $fh = fopen(getcwd(). '/Data/Output/Autoshape.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Autoshape.png');
    }
    
    public function testGetWorksheetAutoshapes()
    {
        $result = $this->cells->GetWorksheetAutoshapes($name="test_cells.xlsx", $sheetName="Sheet2", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetCell()
    {
        $result = $this->cells->GetWorksheetCell($name="test_cells.xlsx", $sheetName="Sheet1", $cellOrMethodName="A1", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetCellStyle()
    {
        $result = $this->cells->GetWorksheetCellStyle($name="test_cells.xlsx", $sheetName="Sheet1", $cellName="A1", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetCells()
    {
        $result = $this->cells->GetWorksheetCells($name="test_cells.xlsx", $sheetName="Sheet1", $offest = null, $count = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetChart()
    {
        $result = $this->cells->GetWorksheetChart($name="test_cells.xlsx", $sheetName="Sheet1", $chartNumber="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetChartLegend()
    {
        $result = $this->cells->GetWorksheetChartLegend($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetChartWithFormat()
    {
        $result = $this->cells->GetWorksheetChartWithFormat($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $format="png", $storage = null, $folder = null);
        $fh = fopen(getcwd(). '/Data/Output/Chart.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Chart.png');
    }
    
    public function testGetWorksheetCharts()
    {
        $result = $this->cells->GetWorksheetCharts($name="test_cells.xlsx", $sheetName="Sheet1", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetColumn()
    {
        $result = $this->cells->GetWorksheetColumn($name="test_cells.xlsx", $sheetName="Sheet1", $columnIndex=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetColumns()
    {
        $result = $this->cells->GetWorksheetColumns($name="test_cells.xlsx", $sheetName="Sheet1", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetOleObject()
    {
        $result = $this->cells->GetWorksheetOleObject($name="test_cells.xlsx", $sheetName="Sheet2", $objectNumber="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetOleObjectWithFormat()
    {
        $result = $this->cells->GetWorksheetOleObjectWithFormat($name="test_cells.xlsx", $sheetName="Sheet2", $objectNumber="0", $format="png", $storage = null, $folder = null);
        $fh = fopen(getcwd(). '/Data/Output/Ole.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Ole.png');
    }
    
    public function testGetWorksheetOleObjects()
    {
        $result = $this->cells->GetWorksheetOleObjects($name="test_cells.xlsx", $sheetName="Sheet2", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetPicture()
    {
        $result = $this->cells->GetWorksheetPicture($name="test_cells.xlsx", $sheetName="Sheet2", $pictureNumber="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetPictureWithFormat()
    {
        $result = $this->cells->GetWorksheetPictureWithFormat($name="test_cells.xlsx", $sheetName="Sheet2", $pictureNumber="0", $format="png", $storage = null, $folder = null);
        $fh = fopen(getcwd(). '/Data/Output/Picture.png', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/Picture.png');
    }
    
    public function testGetWorksheetPictures()
    {
        $result = $this->cells->GetWorksheetPictures($name="test_cells.xlsx", $sheetName="Sheet2", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetPivotTable()
    {
        $result = $this->cells->GetWorksheetPivotTable($name="test_cells.xlsx", $sheetName="Sheet1", $pivottableIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetPivotTables()
    {
        $result = $this->cells->GetWorksheetPivotTables($name="test_cells.xlsx", $sheetName="Sheet4", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetRow()
    {
        $result = $this->cells->GetWorksheetRow($name="test_cells.xlsx", $sheetName="Sheet2", $rowIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testGetWorksheetRows()
    {
        $result = $this->cells->GetWorksheetRows($name="test_cells.xlsx", $sheetName="Sheet2", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostAutofitWorkbookRows()
    {
        $body = '{
                    "AutoFitMergedCells": true,
                    "IgnoreHidden": true,
                    "OnlyAuto": true
                  }';
        $result = $this->cells->PostAutofitWorkbookRows($name="test_cells.xlsx", $startRow = null, $endRow = null, $onlyAuto = null, $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostAutofitWorksheetRows()
    {
        $body = '{
                    "AutoFitMergedCells": true,
                    "IgnoreHidden": true,
                    "OnlyAuto": true
                  }';
        $result = $this->cells->PostAutofitWorksheetRows($name="test_cells.xlsx", $sheetName="Sheet3", $startRow = null, $endRow = null, $onlyAuto = null, $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostClearContents()
    {
        $result = $this->cells->PostClearContents($name="test_cells.xlsx", $sheetName="Sheet3", $range = "A1:C4", $startRow = null, $startColumn = null, $endRow = null, $endColumn = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostClearFormats()
    {
        $result = $this->cells->PostClearFormats($name="test_cells.xlsx", $sheetName="Sheet4", $range = "A1:G1", $startRow = null, $startColumn = null, $endRow = null, $endColumn = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostColumnStyle()
    {
        $body = '{
                    "Font": {
                      "Color": {
                        "A": "",
                        "R": "28",
                        "G": "24",
                        "B": "22"
                      },
                      "DoubleSize": 0,
                      "IsBold": true,
                      "IsItalic": true,
                      "IsStrikeout": true,
                      "IsSubscript": true,
                      "IsSuperscript": true,
                      "Name": "string",
                      "Size": 0,
                      "Underline": "string"
                    },
                    "Name": "Arial",
                    "CultureCustom": "string",
                    "Custom": "string",
                    "BackgroundColor": "SaaSpose.API.Business.Cells.DTO.Color",
                    "ForegroundColor": "SaaSpose.API.Business.Cells.DTO.Color",
                    "IsFormulaHidden": true,
                    "IsDateTime": true,
                    "IsTextWrapped": true,
                    "IsGradient": true,
                    "IsLocked": true,
                    "IsPercent": true,
                    "ShrinkToFit": true,
                    "IndentLevel": 0,
                    "Number": 0,
                    "RotationAngle": 0,
                    "Pattern": "string",
                    "TextDirection": "string",
                    "VerticalAlignment": "string",
                    "HorizontalAlignment": "string",
                    "BorderCollection": [
                      {
                        "LineStyle": "string",
                        "Color": "SaaSpose.API.Business.Cells.DTO.Color",
                        "BorderType": "string"
                      }
                    ],
                    "link": {
                      "Href": "string",
                      "Rel": "string",
                      "Type": "string",
                      "Title": "string"
                    }
                  }';
        $result = $this->cells->PostColumnStyle($name="test_cells.xlsx", $sheetName="Sheet3", $columnIndex=1, $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostCopyCellIntoCell()
    {
        $result = $this->cells->PostCopyCellIntoCell($name="test_cells.xlsx", $destCellName="A1", $sheetName="Sheet1", $worksheet="Sheet3", $cellname="A2", $row = null, $column = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostCopyWorksheet()
    {
        $result = $this->cells->PostCopyWorksheet($name="test_cells.xlsx", $sheetName="NewSheet", $folder = null, $storage = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostCopyWorksheetColumns()
    {
        $result = $this->cells->PostCopyWorksheetColumns($name="test_cells.xlsx", $sheetName="Sheet3", $sourceColumnIndex=2, $destinationColumnIndex=5, $columnNumber=6, $worksheet = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostCopyWorksheetRows()
    {
        $result = $this->cells->PostCopyWorksheetRows($name="test_cells.xlsx", $sheetName="Sheet3", $sourceRowIndex=3, $destinationRowIndex=7, $rowNumber=1, $worksheet = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostDocumentSaveAs()
    {
        $body = '{
                    "desiredPPI": 300,
                    "jpegQuality": 70,
                    "OnePagePerSheet": true,
                    "SaveFormat": "pdf"
                  }';
        $result = $this->cells->PostDocumentSaveAs($name="test_cells.xlsx", $newfilename = "test_cells.pdf", $isAutoFitRows = null, $isAutoFitColumns = null, $storage = null, $folder = null, $body);
        print_r($result);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostEncryptDocument()
    {
        $body = array("EncriptionType"=>"XOR", "KeyLength"=>"128", "Password"=>"123456");
        $result = $this->cells->PostEncryptDocument($name="test_cells.xlsx", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostGroupWorksheetColumns()
    {
        $result = $this->cells->PostGroupWorksheetColumns($name="test_cells.xlsx", $sheetName="Sheet3", $firstIndex=1, $lastIndex=5, $hide = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostGroupWorksheetRows()
    {
        $result = $this->cells->PostGroupWorksheetRows($name="test_cells.xlsx", $sheetName="Sheet3", $firstIndex=1, $lastIndex=5, $hide = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostHideWorksheetColumns()
    {
        $result = $this->cells->PostHideWorksheetColumns($name="test_cells.xlsx", $sheetName="Sheet3", $startColumn=1, $totalColumns=10, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostHideWorksheetRows()
    {
        $result = $this->cells->PostHideWorksheetRows($name="test_cells.xlsx", $sheetName="Sheet3", $startrow=1, $totalRows=10, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostImportData()
    {
        $body = '{
                    "DestinationWorksheet": "Sheet3",
                    "IsInsert": true
                  }';
        $result = $this->cells->PostImportData($name="test_cells.xlsx", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostMoveWorksheet()
    {
        $body = '{
                    "DestinationWorksheet": "Sheet3",
                    "Position": "after"
                  }';
        $result = $this->cells->PostMoveWorksheet($name="test_cells.xlsx", $sheetName="Sheet1", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostPivotTableCellStyle()
    {
        $body = '{
                    "Style": {
                      "IsGradient": "true",
                      "Font": { "IsBold": "true" }
                    }
                  }';
        $result = $this->cells->PostPivotTableCellStyle($name="sample.xlsx", $sheetName="Sheet6", $pivotTableIndex="0", $column=1, $row=1, $storage = null, $folder = null, $body);
        print_r($result);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostPivotTableStyle()
    {
        $body = '{
                    "Style": {
                      "IsGradient": "true",
                      "Font": { "IsBold": "true" }
                    }
                  }';
        $result = $this->cells->PostPivotTableStyle($name="sample.xlsx", $sheetName="Sheet6", $pivotTableIndex="0", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostProtectDocument()
    {
        $body = array("ProtectionType"=>"All", "Password"=>"abc");
        $result = $this->cells->PostProtectDocument($name="test_convert_cell.xlsx", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostRenameWorksheet()
    {
        $result = $this->cells->PostRenameWorksheet($name="test_cells.xlsx", $sheetName="Sheet4", $newname="RenameSheet4", $folder = null, $storage = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostRowStyle()
    {
        $body = '{
                "Font": {
                  "Color": {
                    "A": "",
                    "R": "44",
                    "G": "24",
                    "B": "22"
                  },
                  "DoubleSize": 0,
                  "IsBold": true,
                  "IsItalic": true,
                  "IsStrikeout": true,
                  "IsSubscript": true,
                  "IsSuperscript": true,
                  "Name": "string",
                  "Size": 0,
                  "Underline": "string"
                },
                "Name": "Arial",
                "CultureCustom": "string",
                "Custom": "string",
                "BackgroundColor": "SaaSpose.API.Business.Cells.DTO.Color",
                "ForegroundColor": "SaaSpose.API.Business.Cells.DTO.Color",
                "IsFormulaHidden": true,
                "IsDateTime": true,
                "IsTextWrapped": true,
                "IsGradient": true,
                "IsLocked": true,
                "IsPercent": true,
                "ShrinkToFit": true,
                "IndentLevel": 0,
                "Number": 0,
                "RotationAngle": 0,
                "Pattern": "string",
                "TextDirection": "string",
                "VerticalAlignment": "string",
                "HorizontalAlignment": "string",
                "BorderCollection": [
                  {
                    "LineStyle": "string",
                    "Color": "SaaSpose.API.Business.Cells.DTO.Color",
                    "BorderType": "string"
                  }
                ],
                "link": {
                  "Href": "string",
                  "Rel": "string",
                  "Type": "string",
                  "Title": "string"
                }
              }';
        $result = $this->cells->PostRowStyle($name="test_cells.xlsx", $sheetName="Sheet3", $rowIndex=1, $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostSetCellHtmlString()
    {
        $file = getcwd() . '/Data/Input/index.html';
        $result = $this->cells->PostSetCellHtmlString($name="test_cells.xlsx", $sheetName="Sheet3", $cellName="A1", $storage = null, $folder = null, $file);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostSetCellRangeValue()
    {
        $result = $this->cells->PostSetCellRangeValue($name="test_cells.xlsx", $sheetName="Sheet3", $cellarea="A1:A5", $value="sample", $type="string", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostSetWorksheetColumnWidth()
    {
        $result = $this->cells->PostSetWorksheetColumnWidth($name="test_cells.xlsx", $sheetName="Sheet3", $columnIndex=1, $width=200, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostUngroupWorksheetColumns()
    {
        $result = $this->cells->PostUngroupWorksheetColumns($name="test_cells.xlsx", $sheetName="Sheet3", $firstIndex=1, $lastIndex=5, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostUngroupWorksheetRows()
    {
        $result = $this->cells->PostUngroupWorksheetRows($name="test_cells.xlsx", $sheetName="Sheet3", $firstIndex=1, $lastIndex=5, $isAll = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostUnhideWorksheetColumns()
    {
        $result = $this->cells->PostUnhideWorksheetColumns($name="test_cells.xlsx", $sheetName="Sheet3", $startcolumn=1, $totalColumns=5, $width = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostUnhideWorksheetRows()
    {
        $result = $this->cells->PostUnhideWorksheetRows($name="test_cells.xlsx", $sheetName="Sheet3", $startrow=1, $totalRows=5, $height = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostUpdateWorksheetCellStyle()
    {
        $body = '{
                    "Font": {
                      "Color": {
                        "A": "",
                        "R": "28",
                        "G": "24",
                        "B": "22"
                      },
                      "DoubleSize": 20.0,
                      "IsBold": true,
                      "IsItalic": true,
                      "IsStrikeout": true,
                      "IsSubscript": true,
                      "IsSuperscript": true,
                      "Name": "string",
                      "Size": 0,
                      "Underline": "string"
                    },
                    "Name": "Arial",
                    "CultureCustom": "string",
                    "Custom": "string",
                    "BackgroundColor": "SaaSpose.API.Business.Cells.DTO.Color",
                    "ForegroundColor": "SaaSpose.API.Business.Cells.DTO.Color",
                    "IsFormulaHidden": true,
                    "IsDateTime": true,
                    "IsTextWrapped": true,
                    "IsGradient": true,
                    "IsLocked": true,
                    "IsPercent": true,
                    "ShrinkToFit": true,
                    "IndentLevel": 0,
                    "Number": 0,
                    "RotationAngle": 0,
                    "Pattern": "string",
                    "TextDirection": "string",
                    "VerticalAlignment": "string",
                    "HorizontalAlignment": "string",
                    "BorderCollection": [
                      {
                        "LineStyle": "string",
                        "Color": "SaaSpose.API.Business.Cells.DTO.Color",
                        "BorderType": "string"
                      }
                    ],
                    "link": {
                      "Href": "string",
                      "Rel": "string",
                      "Type": "string",
                      "Title": "string"
                    }
                  }';
        $result = $this->cells->PostUpdateWorksheetCellStyle($name="test_cells.xlsx", $sheetName="Sheet3", $cellName="A1", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostUpdateWorksheetOleObject()
    {
        $body = '{
                    "OleObject": {
                      "Name" : "ole",
                      "UpperLeftRow" : "18",
                      "Top" : "100",
                      "UpperLeftColumn" : "18",
                      "Left" : "100",
                      "LowerRightRow" : "24",
                      "Bottom" : "0",
                      "LowerRightColumn" : "2",
                      "Right" : "0",
                      "Width" : "100",
                      "Height" : "100",
                      "X" : "64",
                      "Y" : "360",
                      "DisplayAsIcon" : "false",
                      "FileType" : "Unknown",
                      "IsAutoSize" : "false",
                      "IsLink" : "false",
                      "SourceFullName" : "ole.docx",
                      "ImageSourceFullName" : "WaterMark.png",
                    }}';
        $result = $this->cells->PostUpdateWorksheetOleObject($name="test_cells.xlsx", $sheetName="Sheet2", $oleObjectIndex="0", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostUpdateWorksheetProperty()
    {
        $body = array("Type"=>"Worksheet", "Name"=>"NewSheet", "IsGridlinesVisible"=>"false");
        $result = $this->cells->PostUpdateWorksheetProperty($name="test_cells.xlsx", $sheetName="Sheet3", $folder = null, $storage = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostUpdateWorksheetRangeStyle()
    {
        $body = '{
                    "Font": {
                      "Color": {
                        "A": "255",
                        "R": "255",
                        "G": "0",
                        "B": "0"
                      },
                      "DoubleSize": 11.0,
                      "IsBold": true,
                      "IsItalic": true,
                      "IsStrikeout": true,
                      "IsSubscript": true,
                      "IsSuperscript": true,
                      "Name": "Arial",
                      "Size": 24,
                      "Underline": "Single"
                    },
                    "Name": null,
                    "CultureCustom": "",
                    "Custom": "",
                    "BackgroundColor": "SaaSpose.API.Business.Cells.DTO.Color",
                    "ForegroundColor": "SaaSpose.API.Business.Cells.DTO.Color",
                    "IsFormulaHidden": true,
                    "IsDateTime": true,
                    "IsTextWrapped": true,
                    "IsGradient": true,
                    "IsLocked": true,
                    "IsPercent": true,
                    "ShrinkToFit": true,
                    "IndentLevel": 0,
                    "Number": 0,
                    "RotationAngle": 0,
                    "Pattern": "string",
                    "TextDirection": "string",
                    "VerticalAlignment": "string",
                    "HorizontalAlignment": "string",
                    "BorderCollection": [
                      {
                        "LineStyle": "string",
                        "Color": "SaaSpose.API.Business.Cells.DTO.Color",
                        "BorderType": "string"
                      }
                    ],
                    "link": {
                      "Href": "string",
                      "Rel": "string",
                      "Type": "string",
                      "Title": "string"
                    }
                  }';
        $result = $this->cells->PostUpdateWorksheetRangeStyle($name="test_cells.xlsx", $sheetName="Sheet3", $range="A1:G10", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostUpdateWorksheetRow()
    {
        $result = $this->cells->PostUpdateWorksheetRow($name="test_cells.xlsx", $sheetName="Sheet3", $rowIndex=1, $height=50, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorkSheetComment()
    {
        $body = '{
                    "CellName": "A2",
                    "Author": "Masood",
                    "HtmlNote": "",
                    "Note": "Update comments",
                    "AutoSize": true,
                    "IsVisible": true,
                    "Width": 0,
                    "Height": 0,
                    "TextHorizontalAlignment": "",
                    "TextOrientationType": "",
                    "TextVerticalAlignment": "",
                    "link": {
                      "Href": "",
                      "Rel": "",
                      "Type": "",
                      "Title": ""
                    }
                  }';
        $result = $this->cells->PostWorkSheetComment($name="test_cells.xlsx", $sheetName="Sheet1", $cellName="A2", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorkSheetHyperlink()
    {
        $body = array("Address"=>"http://www.aspose.com", "TextToDisplay"=>"Welcome to Aspose", "ScreenTip"=>"Hello World");
        $result = $this->cells->PostWorkSheetHyperlink($name="test_cells.xlsx", $sheetName="Sheet3", $hyperlinkIndex="0", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorkSheetPicture()
    {
        $body = array("Name"=>"test_picture", "AutoShapeType"=>"Picture", "Placement"=>"MoveAndSize",
                      "UpperLeftRow"=>5, "Top"=>100, "UpperLeftColumn"=>5, "Left"=>100);
        $result = $this->cells->PostWorkSheetPicture($name="test_cells.xlsx", $sheetName="Sheet2", $pictureIndex="0", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorkSheetTextSearch()
    {
        $result = $this->cells->PostWorkSheetTextSearch($name="test_cells.xlsx", $sheetName="Sheet2", $text="OLE", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    /*public function testPostWorkSheetValidation()
    {
        $result = $this->cells->PostWorkSheetValidation($name="test_cells.xlsx", $sheetName="Sheet2", $validationIndex, $storage = null, $folder = null, $file);
        $this->assertEquals(200, $result->Code);
    }*/
    
    public function testPostWorkbookCalculateFormula()
    {
        $result = $this->cells->PostWorkbookCalculateFormula($name="test_cells.xlsx", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorkbookGetSmartMarkerResult()
    {
        $file = getcwd() . '/Data/Input/Marker.xml';
        $result = $this->cells->PostWorkbookGetSmartMarkerResult($name="Book1.xlsx", $xmlFile = null, $storage = null, $folder = null, $outPath = "smartmarker1.xlsx", $file);
        $this->assertEquals(200, $result->StatusCode);
    }
    
    public function testPostWorkbookSplit()
    {
        $result = $this->cells->PostWorkbookSplit($name="test_cells.xlsx", $format = "png", $from = null, $to = null, $horizontalResolution = null, $verticalResolution = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorkbooksMerge()
    {
        $result = $this->cells->PostWorkbooksMerge($name="test_cells.xlsx", $mergeWith="test_convert_cell.xlsx", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorkbooksTextReplace()
    {
        $result = $this->cells->PostWorkbooksTextReplace($name="test_cells.xlsx", $oldValue="OLE", $newValue="OleObject", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorkbooksTextSearch()
    {
        $result = $this->cells->PostWorkbooksTextSearch($name="test_cells.xlsx", $text="OLE", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorksheetCellSetValue()
    {
        $result = $this->cells->PostWorksheetCellSetValue($name="test_cells.xlsx", $sheetName="Sheet3", $cellName="A1", $value="HelloWorld", $type="string", $formula = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorksheetChartLegend()
    {
        $body = array("Legend"=>array("Position"=>"Bottom"));
        $result = $this->cells->PostWorksheetChartLegend($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorksheetChartTitle()
    {
        $body = array("Title"=>array("Text"=>"Sales Report"));
        $result = $this->cells->PostWorksheetChartTitle($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorksheetMerge()
    {
        $result = $this->cells->PostWorksheetMerge($name="test_cells.xlsx", $sheetName="Sheet1", $startRow=1, $startColumn=1, $totalRows=10, $totalColumns=10, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorksheetRangeSort()
    {
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
        $result = $this->cells->PostWorksheetRangeSort($name="test_cells.xlsx", $sheetName="Sheet4", $cellArea="A1:G22", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorksheetUnmerge()
    {
        $result = $this->cells->PostWorksheetUnmerge($name="test_cells.xlsx", $sheetName="Sheet3", $startRow=1, $startColumn=1, $totalRows=10, $totalColumns=10, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostWorsheetTextReplace()
    {
        $result = $this->cells->PostWorsheetTextReplace($name="test_cells.xlsx", $sheetName="Sheet2", $oldValue="OLE", $newValue="Ole", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutAddNewWorksheet()
    {
        $result = $this->cells->PutAddNewWorksheet($name="test_cells.xlsx", $sheetName="NewSheet", $storage = null, $folder = null);
        $this->assertEquals('Created', $result->Status);
    }
    
    public function testPutChangeVisibilityWorksheet()
    {
        $result = $this->cells->PutChangeVisibilityWorksheet($name="test_cells.xlsx", $sheetName="Sheet1", $isVisible="true", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutConvertWorkBook()
    {
        $file = getcwd() . '/Data/Input/test_convert_cell.xlsx';
        $result = $this->cells->PutConvertWorkBook($format = "pdf", $password = null, $outPath = null, $file);
        $fh = fopen(getcwd(). '/Data/Output/test_convert_cell.pdf', 'w');
        fwrite($fh, $result);
        fclose($fh);
        $this->assertFileExists(getcwd(). '/Data/Output/test_convert_cell.pdf');
    }
    
    public function testPutDocumentProperty()
    {
        $body = array("Value"=>"Aspose");
        $result = $this->cells->PutDocumentProperty($name="test_cells.xlsx", $propertyName="Title", $storage = null, $folder = null, $body);
        $this->assertEquals('Created', $result->Status);
    }
    
    public function testPutDocumentProtectFromChanges()
    {
        $body = array("ProtectionType"=>"all", "Password"=>"123456");
        $result = $this->cells->PutDocumentProtectFromChanges($name="test_cells.xlsx", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutInsertWorksheetColumns()
    {
        $result = $this->cells->PutInsertWorksheetColumns($name="test_cells.xlsx", $sheetName="Sheet1", $columnIndex=1, $columns=5, $updateReference = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutInsertWorksheetRow()
    {
        $result = $this->cells->PutInsertWorksheetRow($name="test_cells.xlsx", $sheetName="Sheet1", $rowIndex=1, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutInsertWorksheetRows()
    {
        $result = $this->cells->PutInsertWorksheetRows($name="test_cells.xlsx", $sheetName="Sheet1", $startrow=1, $totalRows=10, $updateReference = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorkSheetBackground()
    {
        $file = getcwd() . '/Data/Input/watermark.png';
        $result = $this->cells->PutWorkSheetBackground($name="test_cells.xlsx", $sheetName="Sheet1", $storage = null, $folder = null, $file);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorkSheetComment()
    {
        $body = '{
                    "CellName": "A1",
                    "Author": "Masood",
                    "HtmlNote": "",
                    "Note": "Add comments",
                    "AutoSize": true,
                    "IsVisible": true,
                    "Width": 0,
                    "Height": 0,
                    "TextHorizontalAlignment": "",
                    "TextOrientationType": "",
                    "TextVerticalAlignment": "",
                    "link": {
                      "Href": "",
                      "Rel": "",
                      "Type": "",
                      "Title": ""
                    }
                  }';
        $result = $this->cells->PutWorkSheetComment($name="test_cells.xlsx", $sheetName="Sheet1", $cellName="A1", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorkSheetHyperlink()
    {
        $result = $this->cells->PutWorkSheetHyperlink($name="test_cells.xlsx", $sheetName="Sheet1", $firstRow=1, $firstColumn=1, $totalRows=1, $totalColumns=1, $address="www.aspose.com", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorkSheetValidation()
    {
        $result = $this->cells->PutWorkSheetValidation($name="test_cells.xlsx", $sheetName="Sheet1", $range="A1:A5", $storage = null, $folder = null, $file = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorkbookCreate()
    {
        $file = getcwd() . '/Data/Input/test_convert_cell.xlsx';
        $result = $this->cells->PutWorkbookCreate($name="new_workbook.xlsx", $templateFile = null, $dataFile = null, $storage = null, $folder = null, $file);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorksheetAddChart()
    {
        $result = $this->cells->PutWorksheetAddChart($name="test_cells.xlsx", $sheetName="Sheet1", $chartType="bar", $upperLeftRow = 12, $upperLeftColumn = 12, $lowerRightRow = 20, $lowerRightColumn = 20, $area = null, $isVertical = null, $categoryData = null, $isAutoGetSerialName = null, $title = null, $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorksheetAddPicture()
    {
        $file = getcwd() . '/Data/Input/watermark.png';
        $result = $this->cells->PutWorksheetAddPicture($name="test_cells.xlsx", $sheetName="Sheet3", $upperLeftRow = 12, $upperLeftColumn = 12, $lowerRightRow = 20, $lowerRightColumn = 20, $picturePath = "watermark.png", $storage = null, $folder = null, $file);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorksheetChartLegend()
    {
        $result = $this->cells->PutWorksheetChartLegend($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorksheetChartTitle()
    {
        $body = array("Title"=>array("Text"=>"Sales Report"));
        $result = $this->cells->PutWorksheetChartTitle($name="test_cells.xlsx", $sheetName="Sheet1", $chartIndex="0", $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorksheetFreezePanes()
    {
        $result = $this->cells->PutWorksheetFreezePanes($name="test_cells.xlsx", $sheetName="Sheet1", $row=1, $column=1, $freezedRows=5, $freezedColumns=5, $folder = null, $storage = null);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorksheetOleObject()
    {
        $body = '{
                    "DisplayAsIcon": true,
                    "FileFormatType": "",
                    "ImageSourceFullName": "watermark.png",
                    "IsAutoSize": true,
                    "IsLink": true,
                    "ProgID": "",
                    "SourceFullName": "ole.docx",
                    "Name": "OLE",
                    "MsoDrawingType": "",
                    "AutoShapeType": "",
                    "Placement": "",
                    "UpperLeftRow": 20,
                    "Top": 20,
                    "UpperLeftColumn": 20,
                    "Left": 20,
                    "LowerRightRow": 10,
                    "Bottom": 10,
                    "LowerRightColumn": 10,
                    "Right": 20,
                    "Width": 200,
                    "Height": 100,
                    "X": 0,
                    "Y": 0,
                    "RotationAngle": 0,
                    "HtmlText": "",
                    "Text": "ole object",
                    "AlternativeText": "no alternative text",
                    "TextHorizontalAlignment": "",
                    "TextHorizontalOverflow": "",
                    "TextOrientationType": "string",
                    "TextVerticalAlignment": "string",
                    "TextVerticalOverflow": "string",
                    "IsGroup": true,
                    "IsHidden": true,
                    "IsLockAspectRatio": true,
                    "IsLocked": true,
                    "IsPrintable": true,
                    "IsTextWrapped": true,
                    "IsWordArt": true,
                    "LinkedCell": "string",
                    "ZOrderPosition": 0
                  }';
        $result = $this->cells->PutWorksheetOleObject($name="test_cells.xlsx", $sheetName="Sheet3", $upperLeftRow = null, $upperLeftColumn = null, $height = null, $width = null, $oleFile = null, $imageFile = null, $storage = null, $folder = null, $body);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPutWorksheetPivotTable()
    {
        $body = '{
                    "Name": "MyData",
                    "SourceData": "A1",
                    "DestCellName": "A2",
                    "UseSameSource": true,
                    "PivotFieldRows": [
                      0
                    ],
                    "PivotFieldColumns": [
                      0
                    ],
                    "PivotFieldData": [
                      0
                    ]
                  }';
        $result = $this->cells->PutWorksheetPivotTable($name="test_convert_cell.xlsx", $sheetName="Sheet1", $storage = null, $folder = null, $sourceData = null, $destCellName = null, $tableName = null, $useSameSource = null, $body);
        $this->assertEquals(200, $result->Code);
    }
                           
}    