//
//  CellPicturesTestCase.m
//  Aspose_Cloud_SDK_For_iOS
//
//  Created by Muhammad Sohail Ismail on 12/7/14.
//  Copyright (c) 2014 Muhammad Sohail Ismail. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ASPCellsApi.h"
#import "ASPStorageApi.h"
#import "AppDelegate.h"

@interface ASPCellsTestCase : XCTestCase
@property(nonatomic, strong) ASPCellsApi *cellsApi;
@end

@implementation ASPCellsTestCase

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
    self.cellsApi = [[ASPCellsApi alloc] init];
    //Get App key and App SID from https://cloud.aspose.com
    [ASPApiClient setAppKey:ASPAppKey andAppSID:ASPAppSID];
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)uploadFile:(NSString *) fileName {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPStorageApi *storageApi = [[ASPStorageApi alloc] init];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:[fileName stringByDeletingPathExtension] withExtension:[fileName pathExtension]];
    [storageApi putCreateWithCompletionBlock:fileName
                                        file:pathToFile
                                   versionId:nil
                                     storage:nil
                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                               XCTAssertNotNil(output, @"Failed to upload a specific file.");
                               [expectation fulfill];
                           }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutConvertWorkBook {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"myWorkbook" withExtension:@"xlsx"];
    
    [self.cellsApi putConvertWorkBookWithCompletionBlock:pathToFile
                                                  format:@"pdf"
                                                password:nil
                                                 outPath:nil
                                       completionHandler:^(NSURL *output, NSError *error) {
                                           XCTAssertNotNil(output, @"Failed to convert workbook from request content to some format");
                                           [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkBookWithFormatWithCompletionBlock {
    NSString *fileName = @"myWorkbook.xlsx";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    [self.cellsApi getWorkBookWithFormatWithCompletionBlock:fileName
                                                     format:@"pdf"
                                                    outPath:@"myWorkbook.pdf"
                                                   password:nil
                                                  isAutoFit:[NSNumber numberWithBool:YES]
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPWorkbookResponse *output, NSError *error) {
                                              XCTAssertNil(error, @"Failed to convert excel workbook to different file formats");
                                              [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkBook {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    [self.cellsApi getWorkBookWithCompletionBlock:@"August-2015-Calendar.xlsx"
                                         password:nil
                                        isAutoFit:nil
                                          storage:nil
                                           folder:nil
                                completionHandler:^(ASPWorkbookResponse *output, NSError *error) {
                                    XCTAssertNotNil(output, @"Failed to read workbook info");
                                    XCTAssertEqualObjects(output.status, @"OK");
                                    [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorkbookCreate
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    [self.cellsApi putWorkbookCreateWithCompletionBlock:@"newworkbook.xlsx"
                                           templateFile:@"2014-calendar.xlsx"
                                               dataFile:@"SmartMarker.xml"
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPWorkbookResponse *output, NSError *error) {
                                          XCTAssertNotNil(output, @"Failed to create new workbook using different methods");
                                          XCTAssertEqualObjects(output.status, @"OK");
                                          [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostDocumentSaveAs
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPSavingSaveOptions *saveOptions = [[ASPSavingSaveOptions alloc] init];
    saveOptions.clearData = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postDocumentSaveAsWithCompletionBlock:@"myWorkBook.xlsx"
                                             saveOptions:saveOptions
                                                        newfilename:@"updatedWorkbook.xlsx"
                                           isAutoFitRows:[NSNumber numberWithBool:YES]
                                        isAutoFitColumns:[NSNumber numberWithBool:YES]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPSaveResponse *output, NSError *error) {
                                           XCTAssertNotNil(output, @"Failed to convert document and save result to storage");
                                           XCTAssertEqualObjects(output.status, @"OK");
                                           [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostAutofitWorkbookRows
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
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
                                                [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkbookCalculateFormula
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postWorkbookCalculateFormulaWithCompletionBlock:@"myWorkBook.xlsx"
                                                           storage:nil
                                                            folder:nil
                                                 completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                     XCTAssertNotNil(output, @"Failed to calculate all formulas in workbook");
                                                     XCTAssertEqualObjects(output.status, @"OK");
                                                     [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkBookDefaultStyle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkBookDefaultStyleWithCompletionBlock:@"myWorkBook.xlsx"
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPStyleResponse *output, NSError *error) {
                                                XCTAssertNotNil(output, @"Failed to read workbook default style info");
                                                XCTAssertEqualObjects(output.status, @"OK");
                                                [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentProperties
{
     XCTestExpectation *expectation = [self expectationWithDescription:@""];
     
     [self.cellsApi getDocumentPropertiesWithCompletionBlock:@"myWorkBook.xlsx"
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPCellsDocumentPropertiesResponse *output, NSError *error) {
                                               XCTAssertNotNil(output, @"Failed to read document properties");
                                               XCTAssertEqualObjects(output.status, @"OK");
                                               [expectation fulfill];
     }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
         if (error) {
             NSLog(@"Timeout Error: %@", error);
         }
     }];
}

- (void)testDeleteDocumentProperties
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

    [self.cellsApi deleteDocumentPropertiesWithCompletionBlock:@"myWorkBook.xlsx"
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPCellsDocumentPropertiesResponse *output, NSError *error) {
                                                 XCTAssertNotNil(output, @"Failed to delete all custom document properties and clean built-in ones");
                                                 XCTAssertEqualObjects(output.status, @"OK");
                                                 [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetDocumentPropertyWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

    [self.cellsApi getDocumentPropertyWithCompletionBlock:@"myWorkBook.xlsx"
                                             propertyName:@"Title"
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPCellsDocumentPropertyResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to read document property by name");
                                            XCTAssertEqualObjects(output.status, @"OK");
                                            [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutDocumentProperty
 {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

     ASPCellsDocumentProperty *cellsDocumentProperty = [[ASPCellsDocumentProperty alloc] init];
     cellsDocumentProperty.name = @"Title";
     cellsDocumentProperty.value = @"Tax Reforms";
     
    [self.cellsApi putDocumentPropertyWithCompletionBlock:@"myWorkBook.xlsx"
                                             propertyName:@"Title"
                                                _property:cellsDocumentProperty
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPCellsDocumentPropertyResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to set/create document property");
                                            XCTAssertEqualObjects(output.status, @"Created");
                                            [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteDocumentProperty
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

    [self.cellsApi deleteDocumentPropertyWithCompletionBlock:@"myWorkBook.xlsx"
                                                propertyName:@"author"
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPCellsDocumentPropertiesResponse *output, NSError *error) {
                                               XCTAssertNotNil(output, @"Failed to delete document property");
                                               XCTAssertEqualObjects(output.status, @"OK");
                                               [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostEncryptDocument
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPWorkbookEncryptionRequest *workbookEncryptionRequest = [[ASPWorkbookEncryptionRequest alloc] init];
    workbookEncryptionRequest.encryptionType = @"EnhancedCryptographicProviderV1";
    workbookEncryptionRequest.password = @"password1234";
    workbookEncryptionRequest.keyLength = [NSNumber numberWithInt:128];
    
    [self.cellsApi postEncryptDocumentWithCompletionBlock:@"myWorkBook.xlsx"
                                               encryption:workbookEncryptionRequest
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to encrypt document");
                                            XCTAssertEqualObjects(output.status, @"OK");
                                            [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteDecryptDocument
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPWorkbookEncryptionRequest *workbookEncryptionRequest = [[ASPWorkbookEncryptionRequest alloc] init];
    workbookEncryptionRequest.password = @"password1234";
    
    [self.cellsApi deleteDecryptDocumentWithCompletionBlock:@"myWorkBook.xlsx"
                                                 encryption:workbookEncryptionRequest
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                              XCTAssertNotNil(output, @"Failed to decrypt document");
                                              XCTAssertEqualObjects(output.status, @"OK");
                                              [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkbooksTextSearch {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi postWorkbooksTextSearchWithCompletionBlock:@"myWorkBook.xlsx"
                                                         text:@"Pros"
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                                XCTAssertNotNil(output, @"Failed to search text");
                                                XCTAssertEqualObjects(output.status, @"OK");
                                                [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostImportDataWithCompletionBlock {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    ASPImportDataImportOption *importDataImportOption = [[ASPImportDataImportOption alloc] init];
    importDataImportOption.destinationWorksheet = @"Sheet3";
    importDataImportOption.isInsert = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postImportDataWithCompletionBlock:@"myWorkBook.xlsx"
                                        importOption:importDataImportOption
                                             storage:nil
                                              folder:nil
                                   completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                       XCTAssertNotNil(output, @"Failed to import data to workbook");
                                       XCTAssertEqualObjects(output.status, @"OK");
                                       [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkbooksMerge {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi postWorkbooksMergeWithCompletionBlock:@"myWorkBook.xlsx"
                                               mergeWith:@"August-2015-Calendar.xlsx"
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPWorkbookResponse *output, NSError *error) {
                                           XCTAssertNotNil(output, @"Failed to merge workbooks");
                                           XCTAssertEqualObjects(output.status, @"OK");
                                           [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkBookNames {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi getWorkBookNamesWithCompletionBlock:@"myWorkBook.xlsx"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPNamesResponse *output, NSError *error) {
                                         XCTAssertNotNil(output, @"Failed to read workbook's names");
                                         XCTAssertEqualObjects(output.status, @"OK");
                                         [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkBookName {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkBookNameWithCompletionBlock:@"myWorkBook.xlsx"
                                             nameName:@"HelpURLTemplate"
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPNameResponse *output, NSError *error) {
                                        XCTAssertNotNil(output, @"Failed to read workbook's name");
                                        XCTAssertEqualObjects(output.status, @"OK");
                                        [expectation fulfill];
    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostProtectDocument {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPWorkbookProtectionRequest *protectionRequest = [[ASPWorkbookProtectionRequest alloc] init];
    protectionRequest.protectionType = @"All";
    protectionRequest.password = @"password1234";
    
    [self.cellsApi postProtectDocumentWithCompletionBlock:@"myWorkBook.xlsx"
                                               protection:protectionRequest
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                            XCTAssertNotNil(output, @"Failed to protect document");
                                            XCTAssertEqualObjects(output.status, @"OK");
                                            [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteUnProtectDocument {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPWorkbookProtectionRequest *protectionRequest = [[ASPWorkbookProtectionRequest alloc] init];
    protectionRequest.password = @"password1234";
    
    [self.cellsApi deleteUnProtectDocumentWithCompletionBlock:@"myWorkBook.xlsx"
                                                   protection:protectionRequest
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                XCTAssertNotNil(output, @"Failed to unprotect document");
                                                XCTAssertEqualObjects(output.status, @"OK");
                                                [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkbooksTextReplace {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postWorkbooksTextReplaceWithCompletionBlock:@"myWorkBook.xlsx"
                                                      oldValue:@"Averages"
                                                      newValue:@"Median"
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPWorkbookReplaceResponse *output, NSError *error) {
                                                 XCTAssertNotNil(output, @"Failed to replace text");
                                                 XCTAssertEqualObjects(output.status, @"OK");
                                                 [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkbookSettings {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkbookSettingsWithCompletionBlock:@"myWorkBook.xlsx" storage:nil folder:nil completionHandler:^(ASPWorkbookSettingsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get workbook settings");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkbookSettings {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPWorkbookSettings *workbookSettings = [[ASPWorkbookSettings alloc] init];
    workbookSettings.autoCompressPictures = [NSNumber numberWithBool:YES];
    workbookSettings.enableMacros = [NSNumber numberWithBool:YES];
    workbookSettings.isHScrollBarVisible = [NSNumber numberWithBool:NO];
    
    [self.cellsApi postWorkbookSettingsWithCompletionBlock:@"myWorkBook.xlsx" storage:nil folder:nil settings:workbookSettings completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update workbook settings");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkbookGetSmartMarkerResultWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"SmartMarker" withExtension:@"xml"];
    
    [self.cellsApi postWorkbookGetSmartMarkerResultWithCompletionBlock:@"myWorkBook.xlsx" file:pathToFile xmlFile:nil storage:nil folder:nil outPath:@"output.xlsx" completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get smart marker processing result");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkbookSplit
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postWorkbookSplitWithCompletionBlock:@"myWorkBook.xlsx" format:@"pdf" from:[NSNumber numberWithInt:1] to:[NSNumber numberWithInt:2] horizontalResolution:nil verticalResolution:nil storage:nil folder:nil completionHandler:^(ASPSplitResultResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to split workbook");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkBookTextItems
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkBookTextItemsWithCompletionBlock:@"myWorkBook.xlsx" storage:nil folder:nil completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read workbook's text items");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];

    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheets
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetsWithCompletionBlock:@"myWorkBook.xlsx" storage:nil folder:nil completionHandler:^(ASPWorksheetsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read worksheets info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheet
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" verticalResolution:nil horizontalResolution:nil storage:nil folder:nil completionHandler:^(ASPWorksheetResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read worksheet info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetWithFormat
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    //Valid image format "tiff", "jpeg", "png", "emf", "bmp" and "gif"
    [self.cellsApi getWorkSheetWithFormatWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" format:@"gif" verticalResolution:nil horizontalResolution:nil storage:nil folder:nil completionHandler:^(NSURL *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read worksheet in specified format.");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutAddNewWorksheet
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi putAddNewWorksheetWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Tasks" storage:nil folder:nil completionHandler:^(ASPWorksheetsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to add new worksheet");
        XCTAssertEqualObjects(output.status, @"Created");
        [expectation fulfill];
    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostUpdateWorksheetProperty
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPWorksheet *updateWorksheet = [[ASPWorksheet alloc] init];
    updateWorksheet.type = @"Worksheet";
    updateWorksheet.name = @"sheet1";
    updateWorksheet.isGridlinesVisible = [NSNumber numberWithBool:YES];
    updateWorksheet.isRowColumnHeadersVisible = [NSNumber numberWithBool:YES];
    updateWorksheet.displayZeros = [NSNumber numberWithBool:YES];
    updateWorksheet.displayRightToLeft = [NSNumber numberWithBool:YES];
    updateWorksheet.isOutlineShown = [NSNumber numberWithBool:YES];
    updateWorksheet.isSelected = [NSNumber numberWithBool:YES];
    updateWorksheet.transitionEvaluation = [NSNumber numberWithBool:YES];
    updateWorksheet.transitionEntry = [NSNumber numberWithBool:YES];
    updateWorksheet.isVisible = [NSNumber numberWithBool:YES];
    updateWorksheet.index = [NSNumber numberWithInt:0];
    updateWorksheet.firstVisibleRow = [NSNumber numberWithInt:1];
    updateWorksheet.firstVisibleColumn = [NSNumber numberWithInt:1];
    updateWorksheet.zoom = [NSNumber numberWithInt:80];
    updateWorksheet.viewType = @"PageBreakPreview";
    updateWorksheet.isPageBreakPreview = [NSNumber numberWithBool:YES];
    updateWorksheet.isRulerVisible = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postUpdateWorksheetPropertyWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" sheet:updateWorksheet folder:nil storage:nil completionHandler:^(ASPWorksheetResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update worksheet property");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheet
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorksheetWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet3" storage:nil folder:nil completionHandler:^(ASPWorksheetsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}


- (void)testPostAutofitWorksheetRowsWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPAutoFitterOptions *autoFitterOptions = [[ASPAutoFitterOptions alloc] init];
    autoFitterOptions.autoFitMergedCells = [NSNumber numberWithBool:YES];
    autoFitterOptions.ignoreHidden = [NSNumber numberWithBool:YES];
    autoFitterOptions.onlyAuto = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postAutofitWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" autoFitterOptions:autoFitterOptions startRow:[NSNumber numberWithInt:1] endRow:[NSNumber numberWithInt:10] onlyAuto:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to autofit worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetAutoshapes
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetAutoshapesWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet3" storage:nil folder:nil completionHandler:^(ASPAutoShapesResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet autoshapes info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetAutoshape
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetAutoshapeWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet3" autoshapeNumber:[NSNumber numberWithInt:1] storage:nil folder:nil completionHandler:^(ASPAutoShapeResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get autoshape info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetAutoshapeWithFormat
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    //Valid Image Formats For Worksheet "tiff", "jpeg", "png", "emf", "bmp", "gif"];
    [self.cellsApi getWorksheetAutoshapeWithFormatWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" autoshapeNumber:[NSNumber numberWithInt:0] format:@"jpeg" storage:nil folder:nil completionHandler:^(NSURL *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get autoshape info");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorkSheetBackground
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"Creative" withExtension:@"jpg"];
    
    [self.cellsApi putWorkSheetBackgroundWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" backgroundImage:pathToFile folder:nil storage:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to set worksheet background image");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorkSheetBackground
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorkSheetBackgroundWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet3" folder:nil storage:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet background image");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetCellsWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetCellsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" offest:nil count:nil storage:nil folder:nil completionHandler:^(ASPCellsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get cells info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostSetCellRangeValueWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postSetCellRangeValueWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellarea:@"A7" value:@"Aspose" type:@"string" storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to set cell range value");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostClearContents
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postClearContentsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" range:@"A2:C11"
                                                    startRow:[NSNumber numberWithInt:2]
                                                 startColumn:[NSNumber numberWithInt:1]
                                                      endRow:[NSNumber numberWithInt:11]
                                                   endColumn:[NSNumber numberWithInt:3]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                               
                                                    XCTAssertNotNil(output, @"Failed to clear cells contents");
                                                    XCTAssertEqualObjects(output.status, @"OK");
                                                    [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostClearFormats
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postClearFormatsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" range:@"A2:C11" startRow:[NSNumber numberWithInt:2] startColumn:[NSNumber numberWithInt:1] endRow:[NSNumber numberWithInt:11] endColumn:[NSNumber numberWithInt:3] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to clear cells format");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetColumns
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetColumnsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPColumnsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read worksheet columns info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostCopyWorksheetColumns
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postCopyWorksheetColumnsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" sourceColumnIndex:[NSNumber numberWithInt:2] destinationColumnIndex:[NSNumber numberWithInt:0] columnNumber:[NSNumber numberWithInt:4] worksheet:nil storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to copy worksheet columns");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostGroupWorksheetColumnsWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postGroupWorksheetColumnsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" firstIndex:[NSNumber numberWithInt:0] lastIndex:[NSNumber numberWithInt:2] hide:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to group worksheet columns");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostHideWorksheetColumns
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postHideWorksheetColumnsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1"
                                                        startColumn:[NSNumber numberWithInt:0] totalColumns:[NSNumber numberWithInt:1] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                            XCTAssertNotNil(output, @"Failed to hide worksheet columns");
                                                            XCTAssertEqualObjects(output.status, @"OK");
                                                            [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostUngroupWorksheetColumns
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postUngroupWorksheetColumnsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" firstIndex:[NSNumber numberWithInt:0] lastIndex:[NSNumber numberWithInt:2] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to ungroup worksheet columns");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostUnhideWorksheetColumns
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postUnhideWorksheetColumnsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startcolumn:[NSNumber numberWithInt:0] totalColumns:[NSNumber numberWithInt:2] width:nil storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to unhide worksheet columns");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetColumn
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetColumnWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" columnIndex:[NSNumber numberWithInt:1] storage:nil folder:nil completionHandler:^(ASPColumnResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read worksheet column data by column's index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutInsertWorksheetColumns
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi putInsertWorksheetColumnsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" columnIndex:[NSNumber numberWithInt:5] columns:[NSNumber numberWithInt:3] updateReference:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPColumnsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to insert worksheet columns");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostSetWorksheetColumnWidth
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postSetWorksheetColumnWidthWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" columnIndex:[NSNumber numberWithInt:3] width:[NSNumber numberWithDouble:25.0] storage:nil folder:nil completionHandler:^(ASPColumnResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to set worksheet column width");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetColumns
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorksheetColumnsWithCompletionBlock:@"Sample_Test_Book.xls" sheetName:@"Sheet1" columnIndex:[NSNumber numberWithInt:1] columns:[NSNumber numberWithInt:10] updateReference:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPColumnsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet columns");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostColumnStyle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPStyle *columnStyle = [[ASPStyle alloc] init];
    ASPColor* backgroundColor = [[ASPColor alloc] init];
    backgroundColor.A = @"1";
    backgroundColor.R = @"245";
    backgroundColor.G = @"200";
    backgroundColor.B = @"178";
    columnStyle.backgroundColor = backgroundColor;
    
    
    [self.cellsApi postColumnStyleWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" columnIndex:[NSNumber numberWithInt:0] style:columnStyle storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to set column style");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];

    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorksheetMerge
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postWorksheetMergeWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startRow:[NSNumber numberWithInt:0] startColumn:[NSNumber numberWithInt:0] totalRows:[NSNumber numberWithInt:5] totalColumns:[NSNumber numberWithInt:2] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to merge cells");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetRows
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPRowsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read worksheet rows info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutInsertWorksheetRows
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi putInsertWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startrow:[NSNumber numberWithInt:10] totalRows:[NSNumber numberWithInt:10] updateReference:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to insert new worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetRowsWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startrow:[NSNumber numberWithInt:2] totalRows:[NSNumber numberWithInt:5] updateReference:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostCopyWorksheetRows
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi postCopyWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" sourceRowIndex:[NSNumber numberWithInt:5] destinationRowIndex:[NSNumber numberWithInt:7] rowNumber:[NSNumber numberWithInt:3] worksheet:nil storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to copy worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostGroupWorksheetRows
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
        
    [self.cellsApi postGroupWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" firstIndex:[NSNumber numberWithInt:1] lastIndex:[NSNumber numberWithInt:5] hide:[NSNumber numberWithBool:NO] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to group worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
         
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostHideWorksheetRows
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

    [self.cellsApi postHideWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startrow:[NSNumber numberWithInt:1] totalRows:[NSNumber numberWithInt:5] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to hide worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}
    
- (void)testPostUngroupWorksheetRows
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi postUngroupWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" firstIndex:[NSNumber numberWithInt:1] lastIndex:[NSNumber numberWithInt:5] isAll:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to ungroup worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostUnhideWorksheetRowsWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

    [self.cellsApi postUnhideWorksheetRowsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startrow:[NSNumber numberWithInt:1] totalRows:[NSNumber numberWithInt:3] height:[NSNumber numberWithDouble:30.0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to unhide worksheet rows");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetRow
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

    [self.cellsApi getWorksheetRowWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" rowIndex:[NSNumber numberWithInt:1] storage:nil folder:nil completionHandler:^(ASPRowResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read worksheet row data by row's index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutInsertWorksheetRow
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

    [self.cellsApi putInsertWorksheetRowWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" rowIndex:[NSNumber numberWithInt:10] storage:nil folder:nil completionHandler:^(ASPRowResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to insert new worksheet row");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];

     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostUpdateWorksheetRow
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

    [self.cellsApi postUpdateWorksheetRowWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" rowIndex:[NSNumber numberWithInt:1] height:[NSNumber numberWithDouble:25.0] storage:nil folder:nil completionHandler:^(ASPRowResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update worksheet row");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testCellsDeleteWorksheetRow
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

    [self.cellsApi deleteWorksheetRowWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" rowIndex:[NSNumber numberWithInt:1] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet row");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostRowStyle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

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
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostUpdateWorksheetRangeStyle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPStyle *style = [[ASPStyle alloc] init];
    ASPFont *font = [[ASPFont alloc] init];
    font.doubleSize = [NSNumber numberWithInt:20];
    font.isBold = [NSNumber numberWithBool:YES];
    font.isItalic = [NSNumber numberWithBool:YES];
    font.isStrikeout = [NSNumber numberWithBool:YES];
    font.size = [NSNumber numberWithInt:15];
    
    style.font = font;
    style.shrinkToFit = [NSNumber numberWithBool:YES];
    
    ASPColor *color = [[ASPColor alloc] init];
    color.R = @"255";
    color.G = @"255";
    color.B = @"255";
    style.backgroundColor = color;
    
    [self.cellsApi postUpdateWorksheetRangeStyleWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" range:@"A1:C4" style:style storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update cell's range style");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorksheetUnmerge
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];

    [self.cellsApi postWorksheetUnmergeWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" startRow:[NSNumber numberWithInt:1] startColumn:[NSNumber numberWithInt:1] totalRows:[NSNumber numberWithInt:5] totalColumns:[NSNumber numberWithInt:3] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to unmerge cells");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorksheetCellSetValue
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi postWorksheetCellSetValueWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellName:@"A3" value:@"1234" type:@"string" formula:@"sum(a1,a2)" storage:nil folder:nil completionHandler:^(ASPCellResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to set cell value");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostSetCellHtmlString
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi postSetCellHtmlStringWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellName:@"A3" storage:nil folder:nil completionHandler:^(ASPCellResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to set htmlstring value into cell");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetCellStyle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi getWorksheetCellStyleWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellName:@"A7" storage:nil folder:nil completionHandler:^(ASPStyleResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read cell's style info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostUpdateWorksheetCellStyle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    ASPStyle *cellStyle = [[ASPStyle alloc] init];
    ASPFont *font = [[ASPFont alloc] init];
    font.doubleSize = [NSNumber numberWithInt:20];
    font.isBold = [NSNumber numberWithBool:YES];
    font.isItalic = [NSNumber numberWithBool:YES];
    font.isStrikeout = [NSNumber numberWithBool:YES];
    font.size = [NSNumber numberWithInt:15];
    
    cellStyle.font = font;
    cellStyle.shrinkToFit = [NSNumber numberWithBool:YES];
    
    ASPColor *color = [[ASPColor alloc] init];
    color.R = @"255";
    color.G = @"255";
    color.B = @"255";
    cellStyle.backgroundColor = color;
    
    [self.cellsApi postUpdateWorksheetCellStyleWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellName:@"A3" style:cellStyle storage:nil folder:nil completionHandler:^(ASPStyleResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update cell's style");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetCell
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi getWorksheetCellWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellOrMethodName:@"A3" storage:nil folder:nil completionHandler:^(ASPCellResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read cell data by cell's name");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostCopyCellIntoCell
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi postCopyCellIntoCellWithCompletionBlock:@"myWorkBook.xlsx" destCellName:@"C5" sheetName:@"Sheet1" worksheet:@"Sheet1" cellname:@"A5" row:nil column:nil storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to copy cell into cell");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetCharts
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi getWorksheetChartsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPChartsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet charts info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorksheetAddChart
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi putWorksheetAddChartWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartType:@"Bar" upperLeftRow:[NSNumber numberWithInt:12] upperLeftColumn:[NSNumber numberWithInt:12] lowerRightRow:[NSNumber numberWithInt:20] lowerRightColumn:[NSNumber numberWithInt:20] area:@"B1:F2" isVertical:[NSNumber numberWithBool:YES] categoryData:@"A1:A2" isAutoGetSerialName:[NSNumber numberWithBool:YES] title:@"SalesState" storage:nil folder:nil completionHandler:^(ASPChartsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to add new chart to worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetClearCharts
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi deleteWorksheetClearChartsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to clear the charts");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetDeleteChart
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi deleteWorksheetDeleteChartWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPChartsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet chart by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetChartArea
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi getChartAreaWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPChartAreaResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get chart area info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetChartAreaBorderWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi getChartAreaBorderWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPLineResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get chart area border info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetChartAreaFillFormat
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi getChartAreaFillFormatWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPFillFormatResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get chart area fill format info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetChartLegend
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi getWorksheetChartLegendWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPLegendResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get chart legend");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorksheetChartLegend
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi putWorksheetChartLegendWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to show legend in chart");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorksheetChartLegend
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    ASPChartsLegend *chartsLegend = [[ASPChartsLegend alloc] init];
    
    chartsLegend.position = @"Bottom";
    ASPFont *font = [[ASPFont alloc] init];
    ASPColor *color = [[ASPColor alloc] init];
    color.A = @"1";
    color.R = @"255";
    color.G = @"0";
    color.B = @"0";
    font.color = color;
    font.doubleSize = [NSNumber numberWithDouble:10.0];
    font.isBold = [NSNumber numberWithBool:YES];
    font.isItalic = [NSNumber numberWithBool:NO];
    font.isStrikeout = [NSNumber numberWithBool:NO];
    font.isSubscript = [NSNumber numberWithBool:NO];
    font.isSuperscript = [NSNumber numberWithBool:NO];
    font.name = @"Arial";
    font.size = [NSNumber numberWithInt:10];
    font.underline = @"None";
    chartsLegend.font = font;
    chartsLegend.shadow = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postWorksheetChartLegendWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0] legend:chartsLegend storage:nil folder:nil completionHandler:^(ASPLegendResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update chart legend");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetChartLegend
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    [self.cellsApi deleteWorksheetChartLegendWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to hide legend in chart");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorksheetChartTitle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
 
    ASPChartsTitle *chartTitle = [[ASPChartsTitle alloc] init];
    chartTitle.text = @"Sales Chart";
    
    [self.cellsApi putWorksheetChartTitleWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0]  title:chartTitle storage:nil folder:nil completionHandler:^(ASPTitleResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to add chart title / Set chart title visible");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
 
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorksheetChartTitle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPChartsTitle *chartsTitle = [[ASPChartsTitle alloc] init];
    chartsTitle.text = @"Stock exchange";
    
    [self.cellsApi postWorksheetChartTitleWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0] title:chartsTitle storage:nil folder:nil completionHandler:^(ASPTitleResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update chart title");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetChartTitle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorksheetChartTitleWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to hide title in chart");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetChartWithFormat
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    //Valid Image Formats "tiff", "jpeg", "png", "emf", "bmp" and "gif"
    [self.cellsApi getWorksheetChartWithFormatWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" chartNumber:[NSNumber numberWithInt:0] format:@"png" storage:nil folder:nil completionHandler:^(NSURL *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to hide title in chart");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetChart
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetChartWithCompletionBlock:@"myWorkbook.xlsx" sheetName:@"Sheet1" chartNumber:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get chart info");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetComments
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetCommentsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPCommentsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet comments");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetComment
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetCommentWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellName:@"D19" storage:nil folder:nil completionHandler:^(ASPCommentResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet comment by cell name");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
     [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorkSheetComment
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPComment *comment = [[ASPComment alloc] init];
    comment.htmlNote = @"<Font Style=\"FONT-WEIGHT: bold;FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: #000000;TEXT-ALIGN: left;\">Sohail:</Font><Font Style=\"FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: #000000;TEXT-ALIGN: left;\">\nShopping</Font>";
    comment.cellName = @"D18";
    
    [self.cellsApi putWorkSheetCommentWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellName:@"D18" comment:comment storage:nil folder:nil completionHandler:^(ASPCommentResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to add worksheet's cell comment");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkSheetComment
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    ASPComment *comment = [[ASPComment alloc] init];
    comment.htmlNote = @"<Font Style=\"FONT-WEIGHT: bold;FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: #000000;TEXT-ALIGN: left;\">Sohail:</Font><Font Style=\"FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: #000000;TEXT-ALIGN: left;\">\nDaily Expenses</Font>";
    comment.cellName = @"D19";
    
    [self.cellsApi postWorkSheetCommentWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellName:@"D19" comment:comment storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update worksheet's cell comment");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
     
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorkSheetComment
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorkSheetCommentWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellName:@"D19" storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet's cell comment");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostCopyWorksheetWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postCopyWorksheetWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet3" sourceSheet:@"Sheet1" folder:nil storage:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to copy worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}


- (void)testPostWorkSheetTextSearch
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postWorkSheetTextSearchWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" text:@"All" storage:nil folder:nil completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to search text");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetCalculateFormula
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetCalculateFormulaWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" formula:@"sum(A1,A2)" storage:nil folder:nil completionHandler:^(ASPSingleValueResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to calculate formula value");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorksheetFreezePanes
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi putWorksheetFreezePanesWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" row:[NSNumber numberWithInt:1] column:[NSNumber numberWithInt:1] freezedRows:[NSNumber numberWithInt:1] freezedColumns:[NSNumber numberWithInt:1] folder:nil storage:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to set freeze panes");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetFreezePanes
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorksheetFreezePanesWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" row:[NSNumber numberWithInt:1] column:[NSNumber numberWithInt:1] freezedRows:[NSNumber numberWithInt:1] freezedColumns:[NSNumber numberWithInt:1] folder:nil storage:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to unfreeze panes");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetHyperlinks
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetHyperlinksWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPHyperlinksResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet hyperlinks");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorkSheetHyperlink
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi putWorkSheetHyperlinkWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" firstRow:[NSNumber numberWithInt:1] firstColumn:[NSNumber numberWithInt:1] totalRows:[NSNumber numberWithInt:2] totalColumns:[NSNumber numberWithInt:2] address:@"http://www.aspose.com/" storage:nil folder:nil completionHandler:^(ASPHyperlinkResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to add worksheet hyperlink");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorkSheetHyperlinks
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorkSheetHyperlinksWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete all hyperlinks in worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetHyperlink
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetHyperlinkWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" hyperlinkIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPHyperlinkResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet hyperlink by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkSheetHyperlinkWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPHyperlink *hyperlink = [[ASPHyperlink alloc] init];
    ASPCellArea *area = [[ASPCellArea alloc] init];
    area.startRow = [NSNumber numberWithInt:1];
    area.startColumn = [NSNumber numberWithInt:1];
    area.endRow = [NSNumber numberWithInt:3];
    area.endColumn = [NSNumber numberWithInt:3];
    
    hyperlink.area = area;
    hyperlink.address = @"http://www.aspose.com/";
    hyperlink.textToDisplay = @"Aspose";
    
    [self.cellsApi postWorkSheetHyperlinkWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" hyperlinkIndex:[NSNumber numberWithInt:0] hyperlink:hyperlink storage:nil folder:nil completionHandler:^(ASPHyperlinkResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update worksheet hyperlink by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorkSheetHyperlink
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorkSheetHyperlinkWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" hyperlinkIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet hyperlink by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetMergedCells
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetMergedCellsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPMergedCellsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet merged cells");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetMergedCell
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetMergedCellWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" mergedCellIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPMergedCellResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet merged cell by its index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetOleObjects
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetOleObjectsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPOleObjectsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet OLE objects info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorksheetOleObject
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPDrawingOleObject *oleObject = [[ASPDrawingOleObject alloc] init];
    oleObject.sourceFullName = @"OLEDoc2.docx";
    oleObject.imageSourceFullName = @"sample.jpg";
    oleObject.upperLeftRow = [NSNumber numberWithInt:10];
    oleObject.upperLeftColumn = [NSNumber numberWithInt:10];
    oleObject.top = [NSNumber numberWithInt:20];
    oleObject.left = [NSNumber numberWithInt:20];
    oleObject.height = [NSNumber numberWithInt:20];
    oleObject.width = [NSNumber numberWithInt:20];
    
    
    [self.cellsApi putWorksheetOleObjectWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" oleObject:oleObject upperLeftRow:[NSNumber numberWithInt:1] upperLeftColumn:[NSNumber numberWithInt:1] height:[NSNumber numberWithInt:30] width:[NSNumber numberWithInt:40] oleFile:@"OLEDoc2.docx" imageFile:@"sample.jpg" storage:nil folder:nil completionHandler:^(ASPOleObjectResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to add OLE object");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetOleObjects
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorksheetOleObjectsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete all OLE objects");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetOleObjectWithFormat
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    //Valid Ole Object Formats "tiff", "jpeg", "png", "emf", "bmp", and "gif"
    [self.cellsApi getWorksheetOleObjectWithFormatWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" objectNumber:[NSNumber numberWithInt:0] format:@"jpeg" storage:nil folder:nil completionHandler:^(NSURL *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete all OLE objects");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetOleObject
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetOleObjectWithCompletionBlock:@"myWorkbook.xlsx" sheetName:@"Sheet1" objectNumber:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get OLE object info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostUpdateWorksheetOleObject
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPDrawingOleObject *oleObject = [[ASPDrawingOleObject alloc] init];
    oleObject.sourceFullName = @"OLEDoc2.docx";
    oleObject.imageSourceFullName = @"portrait.jpg";
    oleObject.upperLeftRow = [NSNumber numberWithInt:10];
    oleObject.upperLeftColumn = [NSNumber numberWithInt:10];
    oleObject.top = [NSNumber numberWithInt:20];
    oleObject.left = [NSNumber numberWithInt:20];
    oleObject.height = [NSNumber numberWithInt:20];
    oleObject.width = [NSNumber numberWithInt:20];
    
    [self.cellsApi postUpdateWorksheetOleObjectWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" oleObjectIndex:[NSNumber numberWithInt:0] ole:oleObject storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update OLE object");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetOleObject
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorksheetOleObjectWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" oleObjectIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete OLE object");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetPictures
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetPicturesWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPPicturesResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read worksheet pictures");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorksheetAddPicture
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi putWorksheetAddPictureWithCompletionBlock:@"Sample_Test_Book.xls"
                                                   sheetName:@"Sheet6" picturePath:@"aspose-cloud.png"
                                                      upperLeftRow:[NSNumber numberWithInt:5] upperLeftColumn:[NSNumber numberWithInt:5] lowerRightRow:[NSNumber numberWithInt:10] lowerRightColumn:[NSNumber numberWithInt:10] storage:nil folder:nil completionHandler:^(ASPPicturesResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to add a new worksheet picture");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorkSheetPictures
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorkSheetPicturesWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete all pictures in worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkSheetPicture
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPDrawingPicture *picture = [[ASPDrawingPicture alloc] init];
    picture.name = @"ic_profile.png";
    picture.autoShapeType = @"Picture";
    picture.placement = @"MoveAndSize";
    picture.upperLeftRow = [NSNumber numberWithInt:5];
    picture.top = [NSNumber numberWithInt:100];
    picture.upperLeftColumn = [NSNumber numberWithInt:5];
    picture.left = [NSNumber numberWithInt:100];
    picture.lowerRightRow = [NSNumber numberWithInt:9];
    picture.bottom = [NSNumber numberWithInt:0];
    picture.lowerRightColumn = [NSNumber numberWithInt:11];
    picture.right = [NSNumber numberWithInt:0];
    picture.width = [NSNumber numberWithInt:100];
    picture.height = [NSNumber numberWithInt:100];
    picture.X = [NSNumber numberWithInt:687];
    picture.Y = [NSNumber numberWithInt:100];
    picture.rotationAngle = [NSNumber numberWithFloat:0];
    picture.text = @"Profile";
    picture.textHorizontalAlignment = @"Left";
    picture.textHorizontalOverflow = @"Clip";
    picture.textOrientationType = @"NoRotation";
    picture.textVerticalOverflow = @"Clip";
    picture.textVerticalAlignment = @"Top";
    picture.isGroup = [NSNumber numberWithBool:NO];
    picture.isHidden = [NSNumber numberWithBool:NO];
    picture.isLockAspectRatio = [NSNumber numberWithBool:NO];
    picture.isLocked = [NSNumber numberWithBool:YES];
    picture.isPrintable = [NSNumber numberWithBool:YES];
    picture.isTextWrapped = [NSNumber numberWithBool:YES];
    picture.zOrderPosition = [NSNumber numberWithInt:2];
    
    [self.cellsApi postWorkSheetPictureWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" pictureIndex:[NSNumber numberWithInt:0] picture:picture storage:nil folder:nil completionHandler:^(ASPPictureResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update worksheet picture by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetExtractBarcodes
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getExtractBarcodesWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" pictureNumber:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBarcodeResponseList *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to extract barcodes from worksheet picture");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetPivotTables
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetPivotTablesWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet2" storage:nil folder:nil completionHandler:^(ASPPivotTablesResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet pivot tables info");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorksheetPivotTable
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPCreatePivotTableRequest *createPivotTableRequest = [[ASPCreatePivotTableRequest alloc] init];
    createPivotTableRequest.name = @"SalePivotTable";
    createPivotTableRequest.sourceData = @"A1:F214";
    createPivotTableRequest.destCellName = @"A1";
    createPivotTableRequest.useSameSource = [NSNumber numberWithBool:YES];
    createPivotTableRequest.pivotFieldRows = @[[NSNumber numberWithInteger:1]];
    createPivotTableRequest.pivotFieldColumns = @[[NSNumber numberWithInteger:1]];
    createPivotTableRequest.pivotFieldData = @[[NSNumber numberWithInteger:1]];
    
    [self.cellsApi putWorksheetPivotTableWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" request:createPivotTableRequest storage:nil folder:nil sourceData:@"A1:F214" destCellName:@"A1" tableName:@"SalePivotTable" useSameSource:[NSNumber numberWithBool:YES] completionHandler:^(ASPPivotTableResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to add a pivot table into worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetPivotTablesWithCompletionBlock
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorksheetPivotTablesWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet pivot tables");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetPivotTable
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorksheetPivotTableWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" pivotTableIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet pivot table by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorksheetPivotTableCalculate
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postWorksheetPivotTableCalculateWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet2" pivotTableIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to calculates pivottable's data to cells");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostPivotTableCellStyle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPStyle *pivotTableStyleRequest = [[ASPStyle alloc] init];
    pivotTableStyleRequest.isGradient = [NSNumber numberWithBool:YES];
    pivotTableStyleRequest.font = [[ASPFont alloc] init];
    pivotTableStyleRequest.font.isBold = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postPivotTableCellStyleWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" pivotTableIndex:[NSNumber numberWithInt:0] column:[NSNumber numberWithInt:1] row:[NSNumber numberWithInt:1] style:pivotTableStyleRequest storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update cell style for pivot table");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostPivotTableStyle
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPStyle *pivotTableStyleRequest = [[ASPStyle alloc] init];
    pivotTableStyleRequest.isGradient = [NSNumber numberWithBool:YES];
    pivotTableStyleRequest.font = [[ASPFont alloc] init];
    pivotTableStyleRequest.font.isBold = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postPivotTableStyleWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" pivotTableIndex:[NSNumber numberWithInt:0] style:pivotTableStyleRequest storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update style for pivot table");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutPivotTableField
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPPivotTableFieldRequest *pivotTableFieldRequest = [[ASPPivotTableFieldRequest alloc] init];
    pivotTableFieldRequest.data = @[[NSNumber numberWithInteger:1], [NSNumber numberWithInteger:2]];
    
    [self.cellsApi putPivotTableFieldWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" pivotTableIndex:[NSNumber numberWithInt:0] pivotFieldType:@"Row" request:pivotTableFieldRequest storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to add pivot field into into pivot table");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetPivotTableField
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    /*PivotTable field type.
     Members
     Member Name 	Value 	Description
     Column 	    2 	    Presents column pivot field type.
     Data 	        8 	    Presents data pivot field type.
     Page 	        4 	    Presents page pivot field type.
     Row 	        1 	    Presents row pivot field type.
     Undefined 	    0 	    Presents base pivot field type.*/
    
    [self.cellsApi getPivotTableFieldWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet2" pivotTableIndex:[NSNumber numberWithInt:0] pivotFieldIndex:[NSNumber numberWithInt:0] pivotFieldType:@"Column" storage:nil folder:nil completionHandler:^(ASPPivotFieldResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get pivot field into into pivot table");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeletePivotTableField
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    /*PivotTable field type.
     Members
     Member Name 	Value 	Description
     Column 	    2 	    Presents column pivot field type.
     Data 	        8 	    Presents data pivot field type.
     Page 	        4 	    Presents page pivot field type.
     Row 	        1 	    Presents row pivot field type.
     Undefined 	    0 	    Presents base pivot field type.*/
    
    ASPPivotTableFieldRequest *tableFieldRequest = [[ASPPivotTableFieldRequest alloc] init];
    tableFieldRequest.data = @[[NSNumber numberWithInt:0]];
    
    [self.cellsApi deletePivotTableFieldWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet2" pivotTableIndex:[NSNumber numberWithInt:0] pivotFieldType:@"Column" request:tableFieldRequest storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete pivot field into pivot table");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}


- (void)testGetWorksheetPivotTable
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetPivotTableWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" pivottableIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPPivotTableResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet pivot table info by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostMoveWorksheet
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPWorksheetMovingRequest *movingRequest = [[ASPWorksheetMovingRequest alloc] init];
    movingRequest.destinationWorksheet = @"Sheet3";
    
    [self.cellsApi postMoveWorksheetWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" moving:movingRequest storage:nil folder:nil completionHandler:^(ASPWorksheetsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to move worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutProtectWorksheet
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPProtectSheetParameter *protectSheetRequest = [[ASPProtectSheetParameter alloc] init];
    protectSheetRequest.protectionType = @"All";
    protectSheetRequest.password = @"123456";
    
    [self.cellsApi putProtectWorksheetWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" protectParameter:protectSheetRequest storage:nil folder:nil completionHandler:^(ASPWorksheetResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to protect worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteUnprotectWorksheet
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPProtectSheetParameter *protectSheetRequest = [[ASPProtectSheetParameter alloc] init];
    protectSheetRequest.password = @"123456";
    
    [self.cellsApi deleteUnprotectWorksheetWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" protectParameter:protectSheetRequest storage:nil folder:nil completionHandler:^(ASPWorksheetResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to unprotect worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostRenameWorksheet
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postRenameWorksheetWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" newname:@"Tasks Sheet" folder:nil storage:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to rename worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorsheetTextReplace
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postWorsheetTextReplaceWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" oldValue:@"Except" newValue:@"Expect" storage:nil folder:nil completionHandler:^(ASPWorksheetReplaceResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to replace text");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorksheetRangeSort
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPDataSorter *dataSort = [[ASPDataSorter alloc] init];
    dataSort.hasHeaders = [NSNumber numberWithBool:NO];
    dataSort.caseSensitive = [NSNumber numberWithBool:NO];
    dataSort.sortLeftToRight = [NSNumber numberWithBool:YES];
    
    ASPSortKey *sort = [[ASPSortKey alloc] init];
    sort.key = [NSNumber numberWithInt:4];
    sort.sortOrder = @"descending";
   
    dataSort.keyList = ( NSArray<ASPSortKey> *)@[sort];
    
    [self.cellsApi postWorksheetRangeSortWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" cellArea:@"A1:A10" dataSorter:dataSort storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to sort worksheet range");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetTextItems
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetTextItemsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet text items");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetValidations
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetValidationsWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" storage:nil folder:nil completionHandler:^(ASPValidationsResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet validations");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutWorkSheetValidation
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi putWorkSheetValidationWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" range:@"A1:C10" storage:nil folder:nil completionHandler:^(ASPValidationResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to add worksheet validation at index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorkSheetValidation
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorkSheetValidationWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" validationIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPValidationResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet validation by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostWorkSheetValidation
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi postWorkSheetValidationWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" validationIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPValidationResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to update worksheet validation by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorkSheetValidation
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorkSheetValidationWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" validationIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPValidationResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to delete worksheet validation by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutChangeVisibilityWorksheet
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi putChangeVisibilityWorksheetWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" isVisible:[NSNumber numberWithBool:YES] storage:nil folder:nil completionHandler:^(ASPWorksheetResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to change worksheet visibility");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPutDocumentProtectFromChanges
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPPasswordRequest *passwordRequest = [[ASPPasswordRequest alloc] init];
    passwordRequest.password = @"123456";
    
    [self.cellsApi putDocumentProtectFromChangesWithCompletionBlock:@"myWorkBook.xlsx" password:passwordRequest storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to protect document from changes");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteDocumentUnProtectFromChanges
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteDocumentUnProtectFromChangesWithCompletionBlock:@"myWorkBook.xlsx" storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to unprotect document from changes");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetPicture
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi getWorksheetPictureWithCompletionBlock:@"myworkbook.xlsx" sheetName:@"Sheet1" pictureNumber:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPPictureResponse* output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to get worksheet picture by index");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetWorksheetPictureWithFormat
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    //Valid image formats "tiff", @"jpeg", "png", "emf", "bmp" and "gif"
    [self.cellsApi getWorksheetPictureWithFormatWithCompletionBlock:@"myWorkBook.xlsx" sheetName:@"Sheet1" pictureNumber:[NSNumber numberWithInt:0] format:@"bmp" storage:nil folder:nil completionHandler:^(NSURL *output, NSError *error) {
        XCTAssertNotNil(output, @"Failed to read worksheet pictures");
        [expectation fulfill];
     }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testDeleteWorksheetPicture
{
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.cellsApi deleteWorksheetPictureWithCompletionBlock:@"myworkbook.xlsx" sheetName:@"Sheet1" pictureIndex:[NSNumber numberWithInt:0] storage:nil folder:nil completionHandler:^(ASPBaseResponse *output, NSError *error) {
        
        BOOL isPictureDeletedSuccessfully = ([output.code isEqualToString:@"200"] && [output.status isEqualToString:@"OK"]);
        XCTAssertTrue(isPictureDeletedSuccessfully, @"Failed to delete a picture from excel worksheet");
        XCTAssertEqualObjects(output.status, @"OK");
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:30.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

@end
