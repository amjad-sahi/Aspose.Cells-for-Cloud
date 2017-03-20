//
//  Row.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Row.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation Row

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

/*public function deleteWorksheetRow() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->DeleteWorksheetRow($name=$fileName, $sheetName="Sheet1", $rowIndex=1, $storage = null, $folder = null);
    print_r($result);
}*/

- (void)testCellsDeleteWorksheetRow
{
    
    
    [self.cellsApi deleteWorksheetRowWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" rowIndex:[NSNumber numberWithInt:1] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet row");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}


/*public function deleteWorksheetRows() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->DeleteWorksheetRows($name=$fileName, $sheetName="Sheet1", $startrow=2, $totalRows=10, $updateReference = true, $storage = null, $folder = null);
    print_r($result);
}*/

- (void)deleteWorksheetRowsWithCompletionBlock
{
    
    
    [self.cellsApi deleteWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startrow:[NSNumber numberWithInt:2] totalRows:[NSNumber numberWithInt:5] updateReference:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}

/*public function getWorksheetRow() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->GetWorksheetRow($name=$fileName, $sheetName="Sheet1", $rowIndex="1", $storage = null, $folder = null);
    print_r($result);
}*/

- (void)getWorksheetRow
{
    
    
    [self.cellsApi getWorksheetRowWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" rowIndex:[NSNumber numberWithInt:1] storage:nil folder:nil completionHandler:^(ASPRowResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read worksheet row data by row's index");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}

/*public function postAutofitWorkbookRows() {
    // Upload file to Aspose Cloud Storage
    $fileName = "test_cells.xlsx";
    Utils::uploadFile($fileName);
    $body = '{
    "AutoFitMergedCells": true,
    "IgnoreHidden": true,
    "OnlyAuto": true
}';
$result = $this->cells->PostAutofitWorkbookRows($name=$fileName, $startRow = null, $endRow = null, $onlyAuto = null, $storage = null, $folder = null, $body);
print_r($result);
}*/

- (void)postAutofitWorkbookRows
{
    
    
    ASPAutoFitterOptions *autoFitterOptions = [[ASPAutoFitterOptions alloc] init];
    autoFitterOptions.autoFitMergedCells = [NSNumber numberWithBool:YES];
    autoFitterOptions.ignoreHidden = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postAutofitWorkbookRowsWithCompletionBlock:@"myWorkBook.xlsx"
                                            autoFitterOptions:autoFitterOptions
                                                     startRow:[NSNumber numberWithInt:1]
                                                       endRow:[NSNumber numberWithInt:300]
                                                     onlyAuto:[NSNumber numberWithBool:YES]
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                XCTAssertNotNil(output, @"Failed to autofit workbook rows");
                                                XCTAssertEqualObjects(output.status, @"OK");
                                                
                                            }];
    
}


/*public function postCopyWorksheetRows() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->PostCopyWorksheetRows($name=$fileName, $sheetName="Sheet1", $sourceRowIndex=5, $destinationRowIndex=7, $rowNumber=3, $worksheet = null, $storage = null, $folder = null);
    print_r($result);
}*/

- (void)postCopyWorksheetRows
{
    
    
    [self.cellsApi postCopyWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" sourceRowIndex:[NSNumber numberWithInt:5] destinationRowIndex:[NSNumber numberWithInt:7] rowNumber:[NSNumber numberWithInt:3] worksheet:nil storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to copy worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}


/*public function postGroupWorksheetRows() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->PostGroupWorksheetRows($name=$fileName, $sheetName="Sheet1", $firstIndex=1, $lastIndex=5, $hide = null, $storage = null, $folder = null);
    print_r($result);
}*/

- (void)postGroupWorksheetRows
{
    
    
    [self.cellsApi postGroupWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" firstIndex:[NSNumber numberWithInt:1] lastIndex:[NSNumber numberWithInt:5] hide:[NSNumber numberWithBool:NO] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to group worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}


/*public function postHideWorksheetRows() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->PostHideWorksheetRows($name=$fileName, $sheetName="Sheet1", $startrow=1, $totalRows=5, $storage = null, $folder = null);
    print_r($result);
}*/

- (void)postHideWorksheetRows
{
    
    
    [self.cellsApi postHideWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startrow:[NSNumber numberWithInt:1] totalRows:[NSNumber numberWithInt:5] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to hide worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}

/*public function postRowStyle() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $body = '{
    "BackgroundColor": {
        "A": "1",
        "R": "245",
        "G": "200",
        "B": "178"
    }
}';
$result = $this->cells->PostRowStyle($name="myWorkbook.xlsx", $sheetName="Sheet1", $rowIndex=1, $storage = null, $folder = null, $body);
print_r($result);
}*/

- (void)postRowStyle
{
    
    
    ASPStyle *rowStyle = [[ASPStyle alloc] init];
    ASPColor* backgroundColor = [[ASPColor alloc] init];
    backgroundColor.A = @"1";
    backgroundColor.R = @"245";
    backgroundColor.G = @"200";
    backgroundColor.B = @"178";
    rowStyle.backgroundColor = backgroundColor;
    
    [self.cellsApi postRowStyleWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" rowIndex:[NSNumber numberWithInt:1] style:rowStyle storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to set row style");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}

/*public function postUngroupWorksheetRows() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->PostUngroupWorksheetRows($name=$fileName, $sheetName="Sheet1", $firstIndex=1, $lastIndex=5, $isAll = true, $storage = null, $folder = null);
    print_r($result);
}*/

- (void)postUngroupWorksheetRows
{
    
    
    [self.cellsApi postUngroupWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" firstIndex:[NSNumber numberWithInt:1] lastIndex:[NSNumber numberWithInt:5] isAll:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to ungroup worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}

/*public function postUnhideWorksheetRows() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->PostUnhideWorksheetRows($name=$fileName, $sheetName="Sheet1", $startrow=1, $totalRows=3, $height = 30.0, $storage = null, $folder = null);
    print_r($result);
}*/

- (void)postUnhideWorksheetRowsWithCompletionBlock
{
    
    
    [self.cellsApi postUnhideWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startrow:[NSNumber numberWithInt:1] totalRows:[NSNumber numberWithInt:3] height:[NSNumber numberWithDouble:30.0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to unhide worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}


/*public function postUpdateWorksheetRow() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->PostUpdateWorksheetRow($name=$fileName, $sheetName="Sheet1", $rowIndex=1, $height=25.0, $storage = null, $folder = null);
    print_r($result);
}*/
- (void)postUpdateWorksheetRow
{
    
    
    [self.cellsApi postUpdateWorksheetRowWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" rowIndex:[NSNumber numberWithInt:1] height:[NSNumber numberWithDouble:25.0] storage:nil folder:nil completionHandler:^(ASPRowResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update worksheet row");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}

/*public function putInsertWorksheetRow() {
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->PutInsertWorksheetRow($name=$fileName, $sheetName="Sheet1", $rowIndex=10, $storage = null, $folder = null);
    print_r($result);
}*/

- (void)putInsertWorksheetRow
{
    
    
    [self.cellsApi putInsertWorksheetRowWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" rowIndex:[NSNumber numberWithInt:10] storage:nil folder:nil completionHandler:^(ASPRowResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to insert new worksheet row");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
    
    
    
    
}

/*public function putInsertWorksheetRows() {
    
    // Upload file to Aspose Cloud Storage
    $fileName = "myWorkbook.xlsx";
    Utils::uploadFile($fileName);
    $result = $this->cells->PutInsertWorksheetRows($name=$fileName, $sheetName="Sheet1", $startrow=10, $totalRows=10, $updateReference = true, $storage = null, $folder = null);
    print_r($result);
}*/

- (void)putInsertWorksheetRows
{
    
    
    [self.cellsApi putInsertWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startrow:[NSNumber numberWithInt:10] totalRows:[NSNumber numberWithInt:10] updateReference:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to insert new worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        
    }];
    
}


@end
