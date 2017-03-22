//
//  Workbook.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Workbook.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation Workbook

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)deleteDecryptDocument {
//ExStart:DeleteDecryptDocument
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPWorkbookEncryptionRequest *workbookEncryptionRequest = [[ASPWorkbookEncryptionRequest alloc] init];
    workbookEncryptionRequest.password = @"password1234";
    
    [self.cellsApi deleteDecryptDocumentWithCompletionBlock:fileName
                                                 encryption:workbookEncryptionRequest
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
//ExEnd:DeleteDecryptDocument
}

- (void)deleteDocumentUnProtectFromChanges {
//ExStart:DeleteDocumentUnProtectFromChanges
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteDocumentUnProtectFromChangesWithCompletionBlock:fileName
                                                                 storage:nil
                                                                  folder:nil
                                                       completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                           NSLog(@"%@", output);
                                                       }];
//ExEnd:DeleteDocumentUnProtectFromChanges
}

- (void)deleteUnProtectDocument {
//ExStart:DeleteUnProtectDocument
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPWorkbookProtectionRequest *protectionRequest = [[ASPWorkbookProtectionRequest alloc] init];
    protectionRequest.password = @"password1234";
    
    [self.cellsApi deleteUnProtectDocumentWithCompletionBlock:fileName
                                                   protection:protectionRequest
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
//ExEnd:DeleteUnProtectDocument
    
}

- (void)getExtractBarcodes {
//ExStart:GetExtractBarcodes
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getExtractBarcodesWithCompletionBlock:fileName
                                               sheetName:@"Sheet1"
                                           pictureNumber:[NSNumber numberWithInt:0]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPBarcodeResponseList *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
//ExEnd:GetExtractBarcodes
}

- (void)getWorkBook {
//ExStart:GetWorkBook
    NSString *fileName = @"August-2015-Calendar.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkBookWithCompletionBlock:fileName
                                         password:nil
                                        isAutoFit:nil
                                          storage:nil
                                           folder:nil
                                completionHandler:^(ASPWorkbookResponse *output, NSError *error) {
                                    NSLog(@"%@", output);
                                    
                                }];
//ExEnd:GetWorkBook
    
}

- (void)getWorkBookDefaultStyle {
//ExStart:GetWorkBookDefaultStyle
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkBookDefaultStyleWithCompletionBlock:fileName
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPStyleResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                                
                                            }];
//ExEnd:GetWorkBookDefaultStyle
    
}

- (void)getWorkBookName {
//ExStart:GetWorkBookName
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkBookNameWithCompletionBlock:fileName
                                             nameName:@"HelpURLTemplate"
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPNameResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                        
                                    }];
//ExEnd:GetWorkBookName
    
    
    
    
    
}

- (void)getWorkBookNames {
//ExStart:GetWorkBookNames
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkBookNamesWithCompletionBlock:fileName
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPNamesResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
//ExEnd:GetWorkBookNames
    
}

- (void)getWorkBookWithFormat {
//ExStart:GetWorkBookWithFormat
    NSString *fileName = @"myWorkbook.xlsx";
    [Utils uploadFile:fileName];
    
    
    [self.cellsApi getWorkBookWithFormatWithCompletionBlock:fileName
                                                     format:@"pdf"
                                                    outPath:@"myWorkbook.pdf"
                                                   password:nil
                                                  isAutoFit:[NSNumber numberWithBool:YES]
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPWorkbookResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
//ExEnd:GetWorkBookWithFormat
    
}

- (void)postColumnStyle {
//ExStart:PostColumnStyle
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPStyle *columnStyle = [[ASPStyle alloc] init];
    ASPColor* backgroundColor = [[ASPColor alloc] init];
    backgroundColor.A = @"1";
    backgroundColor.R = @"245";
    backgroundColor.G = @"200";
    backgroundColor.B = @"178";
    columnStyle.backgroundColor = backgroundColor;
    
    
    [self.cellsApi postColumnStyleWithCompletionBlock:fileName
                                            sheetName:@"Sheet1"
                                          columnIndex:[NSNumber numberWithInt:0]
                                                style:columnStyle
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
//ExEnd:PostColumnStyle
}

- (void)postCopyWorksheetColumns {
//ExStart:PostCopyWorksheetColumns
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postCopyWorksheetColumnsWithCompletionBlock:@"myWorkBook.xlsx"
                                                     sheetName:@"Sheet1"
                                             sourceColumnIndex:[NSNumber numberWithInt:2]
                                        destinationColumnIndex:[NSNumber numberWithInt:0]
                                                  columnNumber:[NSNumber numberWithInt:4]
                                                     worksheet:nil
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                 NSLog(@"%@", output);
                                             }];
//ExEnd:PostCopyWorksheetColumns
}

- (void)postDocumentSaveAs {
//ExStart:PostDocumentSaveAs
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPSavingSaveOptions *saveOptions = [[ASPSavingSaveOptions alloc] init];
    saveOptions.clearData = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postDocumentSaveAsWithCompletionBlock:fileName
                                             saveOptions:saveOptions
                                             newfilename:@"updatedWorkbook.xlsx"
                                           isAutoFitRows:[NSNumber numberWithBool:YES]
                                        isAutoFitColumns:[NSNumber numberWithBool:YES]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPSaveResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
//ExEnd:PostDocumentSaveAs
    
}

- (void)postEncryptDocument {
//ExStart:PostEncryptDocument
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPWorkbookEncryptionRequest *workbookEncryptionRequest = [[ASPWorkbookEncryptionRequest alloc] init];
    workbookEncryptionRequest.encryptionType = @"EnhancedCryptographicProviderV1";
    workbookEncryptionRequest.password = @"password1234";
    workbookEncryptionRequest.keyLength = [NSNumber numberWithInt:128];
    
    [self.cellsApi postEncryptDocumentWithCompletionBlock:fileName
                                               encryption:workbookEncryptionRequest
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
//ExEnd:PostEncryptDocument
    
}

- (void)postGroupWorksheetColumns {
//ExStart:PostGroupWorksheetColumns
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postGroupWorksheetColumnsWithCompletionBlock:fileName
                                                      sheetName:@"Sheet1"
                                                     firstIndex:[NSNumber numberWithInt:0]
                                                      lastIndex:[NSNumber numberWithInt:2]
                                                           hide:[NSNumber numberWithBool:YES]
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                  NSLog(@"%@", output);
                                              }];
//ExEnd:PostGroupWorksheetColumns
    
}

- (void)postProtectDocument {
//ExStart:PostProtectDocument
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPWorkbookProtectionRequest *protectionRequest = [[ASPWorkbookProtectionRequest alloc] init];
    protectionRequest.protectionType = @"All";
    protectionRequest.password = @"password1234";
    
    [self.cellsApi postProtectDocumentWithCompletionBlock:fileName
                                               protection:protectionRequest
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                            
                                        }];
//ExEnd:PostProtectDocument
    
}

- (void)postWorkbookCalculateFormula {
//ExStart:PostWorkbookCalculateFormula
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorkbookCalculateFormulaWithCompletionBlock:fileName
                                                           storage:nil
                                                            folder:nil
                                                 completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                     NSLog(@"%@", output);
                                                     
                                                 }];
//ExEnd:PostWorkbookCalculateFormula
    
}

- (void)postWorkbookGetSmartMarkerResult {
//ExStart:PostWorkbookGetSmartMarkerResult
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"SmartMarker" withExtension:@"xml"];
    
    [self.cellsApi postWorkbookGetSmartMarkerResultWithCompletionBlock:fileName
                                                                  file:pathToFile
                                                               xmlFile:nil
                                                               storage:nil
                                                                folder:nil
                                                               outPath:@"output.xlsx"
                                                     completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                         NSLog(@"%@", output);
                                                     }];
//ExEnd:PostWorkbookGetSmartMarkerResult
}

- (void)postWorkbookSplit {
//ExStart:PostWorkbookSplit
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorkbookSplitWithCompletionBlock:fileName
                                                 format:@"pdf"
                                                   from:[NSNumber numberWithInt:1]
                                                     to:[NSNumber numberWithInt:2]
                                   horizontalResolution:nil
                                     verticalResolution:nil
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPSplitResultResponse *output, NSError *error) {
                                          NSLog(@"%@", output);
                                      }];
//ExEnd:PostWorkbookSplit
}

- (void)postWorkbooksMerge {
//ExStart:PostWorkbooksMerge
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorkbooksMergeWithCompletionBlock:fileName
                                               mergeWith:@"August-2015-Calendar.xlsx"
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPWorkbookResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
//ExEnd:PostWorkbooksMerge
    
}

- (void)putConvertWorkBook {
//ExStart:PutConvertWorkBook
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"myWorkbook" withExtension:@"xlsx"];
    
    [self.cellsApi putConvertWorkBookWithCompletionBlock:pathToFile
                                                  format:@"pdf"
                                                password:nil
                                                 outPath:nil
                                       completionHandler:^(NSURL *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
//ExEnd:PutConvertWorkBook
    
}

- (void)putDocumentProtectFromChanges {
//ExStart:PutDocumentProtectFromChanges
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPPasswordRequest *passwordRequest = [[ASPPasswordRequest alloc] init];
    passwordRequest.password = @"123456";
    
    [self.cellsApi putDocumentProtectFromChangesWithCompletionBlock:fileName
                                                           password:passwordRequest
                                                            storage:nil
                                                             folder:nil
                                                  completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                      NSLog(@"%@", output);
                                                  }];
//ExEnd:PutDocumentProtectFromChanges
}

- (void)putWorkbookCreate {
//ExStart:PutWorkbookCreate
    NSString *templateFile = @"2014-calendar.xlsx";
    [Utils uploadFile:templateFile];
    NSString *dataFile = @"SmartMarker.xml";
    [Utils uploadFile:dataFile];
    
    [self.cellsApi putWorkbookCreateWithCompletionBlock:@"newworkbook.xlsx"
                                           templateFile:templateFile
                                               dataFile:dataFile
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPWorkbookResponse *output, NSError *error) {
                                          NSLog(@"%@", output);
                                          
                                      }];
//ExEnd:PutWorkbookCreate
}

@end
