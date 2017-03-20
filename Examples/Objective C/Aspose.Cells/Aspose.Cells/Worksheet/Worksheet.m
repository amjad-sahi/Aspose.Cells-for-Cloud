//
//  Worksheet.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Worksheet.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation Worksheet

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)deleteUnprotectWorksheet {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPProtectSheetParameter *protectSheetRequest = [[ASPProtectSheetParameter alloc] init];
    protectSheetRequest.password = @"123456";
    
    [self.cellsApi deleteUnprotectWorksheetWithCompletionBlock:fileName
                                                     sheetName:@"Sheet1"
                                              protectParameter:protectSheetRequest
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPWorksheetResponse *output, NSError *error) {
                                                 NSLog(@"%@", output);
                                             }];
}

- (void)deleteWorkSheetBackground {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorkSheetBackgroundWithCompletionBlock:fileName
                                                      sheetName:@"Sheet3"
                                                         folder:nil
                                                        storage:nil
                                              completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                  NSLog(@"%@", output);
                                              }];
}

- (void)deleteWorkSheetComment {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorkSheetCommentWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                                    cellName:@"D19"
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)deleteWorkSheetValidation {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorkSheetValidationWithCompletionBlock:fileName
                                                      sheetName:@"Sheet1"
                                                validationIndex:[NSNumber numberWithInt:0]
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(ASPValidationResponse *output, NSError *error) {
                                                  NSLog(@"%@", output);
                                              }];
}

- (void)deleteWorksheet {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetWithCompletionBlock:fileName
                                            sheetName:@"Sheet3"
                                              storage:nil
                                               folder:nil
                                    completionHandler:^(ASPWorksheetsResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
}

- (void)deleteWorksheetColumns {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetColumnsWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                                 columnIndex:[NSNumber numberWithInt:1]
                                                     columns:[NSNumber numberWithInt:10]
                                             updateReference:[NSNumber numberWithBool:YES]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPColumnsResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)deleteWorksheetFreezePanes {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetFreezePanesWithCompletionBlock:fileName
                                                       sheetName:@"Sheet1"
                                                             row:[NSNumber numberWithInt:1]
                                                          column:[NSNumber numberWithInt:1]
                                                     freezedRows:[NSNumber numberWithInt:1]
                                                  freezedColumns:[NSNumber numberWithInt:1]
                                                          folder:nil
                                                         storage:nil
                                               completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                   NSLog(@"%@", output);
                                               }];
}

- (void)getWorkSheet {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetWithCompletionBlock:fileName
                                         sheetName:@"Sheet1"
                                    verticalResolution:nil
                                horizontalResolution:nil
                                           storage:nil
                                            folder:nil
                                 completionHandler:^(ASPWorksheetResponse *output, NSError *error) {
                                     NSLog(@"%@", output);
                                 }];
}

- (void)getWorkSheetCalculateFormula {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetCalculateFormulaWithCompletionBlock:fileName
                                                         sheetName:@"Sheet1"
                                                           formula:@"sum(A1,A2)"
                                                           storage:nil
                                                            folder:nil
                                                 completionHandler:^(ASPSingleValueResponse *output, NSError *error) {
                                                     NSLog(@"%@", output);
                                                 }];
}

- (void)getWorkSheetComment {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetCommentWithCompletionBlock:fileName
                                                sheetName:@"Sheet1"
                                                 cellName:@"D19"
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPCommentResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
}

- (void)getWorkSheetComments {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetCommentsWithCompletionBlock:fileName
                                                 sheetName:@"Sheet1"
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPCommentsResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                         }];
}

- (void)getWorkSheetValidation {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetValidationWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                             validationIndex:[NSNumber numberWithInt:0]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPValidationResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)getWorkSheetValidations {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetValidationsWithCompletionBlock:fileName
                                                    sheetName:@"Sheet1"
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPValidationsResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
}

- (void)getWorkSheetWithFormat {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    //Valid image format "tiff", "jpeg", "png", "emf", "bmp" and "gif"
    [self.cellsApi getWorkSheetWithFormatWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                                      format:@"gif"
                                          verticalResolution:nil
                                        horizontalResolution:nil
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(NSURL *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)getWorkSheets {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetsWithCompletionBlock:fileName
                                            storage:nil
                                             folder:nil
                                  completionHandler:^(ASPWorksheetsResponse *output, NSError *error) {
                                      NSLog(@"%@", output);
                                  }];
}

- (void)getWorksheetAutoshape {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetAutoshapeWithCompletionBlock:fileName
                                                  sheetName:@"Sheet3"
                                            autoshapeNumber:[NSNumber numberWithInt:1]
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPAutoShapeResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}

- (void)getWorksheetAutoshapes {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetAutoshapesWithCompletionBlock:fileName
                                                   sheetName:@"Sheet3"
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPAutoShapesResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)getWorksheetColumn {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetColumnWithCompletionBlock:fileName
                                               sheetName:@"Sheet1"
                                             columnIndex:[NSNumber numberWithInt:1]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPColumnResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
}

- (void)getWorksheetColumns {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetColumnsWithCompletionBlock:fileName
                                                sheetName:@"Sheet1"
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPColumnsResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
}

- (void)getWorksheetRows {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetRowsWithCompletionBlock:fileName
                                             sheetName:@"Sheet1"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPRowsResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
}

- (void)postAutofitWorksheetRows {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPAutoFitterOptions *autoFitterOptions = [[ASPAutoFitterOptions alloc] init];
    autoFitterOptions.autoFitMergedCells = [NSNumber numberWithBool:YES];
    autoFitterOptions.ignoreHidden = [NSNumber numberWithBool:YES];
    autoFitterOptions.onlyAuto = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postAutofitWorksheetRowsWithCompletionBlock:fileName
                                                     sheetName:@"Sheet1"
                                             autoFitterOptions:autoFitterOptions
                                                      startRow:[NSNumber numberWithInt:1]
                                                        endRow:[NSNumber numberWithInt:10]
                                                      onlyAuto:[NSNumber numberWithBool:YES]
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                 NSLog(@"%@", output);
                                             }];
}

- (void)postCopyWorksheet {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postCopyWorksheetWithCompletionBlock:fileName
                                              sheetName:@"Sheet3"
                                            sourceSheet:@"Sheet1"
                                                 folder:nil
                                                storage:nil
                                      completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                          NSLog(@"%@", output);
                                      }];
}

- (void)postHideWorksheetColumns {

    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postHideWorksheetColumnsWithCompletionBlock:fileName
                                                     sheetName:@"Sheet1"
                                                   startColumn:[NSNumber numberWithInt:0]
                                                  totalColumns:[NSNumber numberWithInt:1]
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                       NSLog(@"%@", output);
                                                   }];
}

- (void)postMoveWorksheet {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPWorksheetMovingRequest *movingRequest = [[ASPWorksheetMovingRequest alloc] init];
    movingRequest.destinationWorksheet = @"Sheet3";
    
    [self.cellsApi postMoveWorksheetWithCompletionBlock:fileName
                                              sheetName:@"Sheet1"
                                                 moving:movingRequest
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPWorksheetsResponse *output, NSError *error) {
                                          NSLog(@"%@", output);
                                      }];
}

- (void)postRenameWorksheet {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postRenameWorksheetWithCompletionBlock:fileName
                                                sheetName:@"Sheet1"
                                                  newname:@"Tasks Sheet"
                                                   folder:nil
                                                  storage:nil
                                        completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
}

- (void)postSetWorksheetColumnWidth {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postSetWorksheetColumnWidthWithCompletionBlock:fileName
                                                        sheetName:@"Sheet1"
                                                      columnIndex:[NSNumber numberWithInt:3]
                                                            width:[NSNumber numberWithDouble:25.0]
                                                          storage:nil
                                                           folder:nil
                                                completionHandler:^(ASPColumnResponse *output, NSError *error) {
                                                    NSLog(@"%@", output);
                                                }];
}

- (void)postUngroupWorksheetColumns {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postUngroupWorksheetColumnsWithCompletionBlock:fileName
                                                        sheetName:@"Sheet1"
                                                       firstIndex:[NSNumber numberWithInt:0]
                                                        lastIndex:[NSNumber numberWithInt:2]
                                                          storage:nil
                                                           folder:nil
                                                completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                    NSLog(@"%@", output);
                                                }];
}

- (void)postUnhideWorksheetColumns {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postUnhideWorksheetColumnsWithCompletionBlock:fileName
                                                       sheetName:@"Sheet1"
                                                     startcolumn:[NSNumber numberWithInt:0]
                                                    totalColumns:[NSNumber numberWithInt:2]
                                                           width:nil
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                   NSLog(@"%@", output);
                                               }];
}

- (void)postUpdateWorksheetProperty {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
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
    
    [self.cellsApi postUpdateWorksheetPropertyWithCompletionBlock:fileName
                                                        sheetName:@"Sheet1"
                                                            sheet:updateWorksheet
                                                           folder:nil
                                                          storage:nil
                                                completionHandler:^(ASPWorksheetResponse *output, NSError *error) {
                                                    NSLog(@"%@", output);
                                                }];
}

- (void)postUpdateWorksheetRangeStyle {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
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
    
    [self.cellsApi postUpdateWorksheetRangeStyleWithCompletionBlock:fileName
                                                          sheetName:@"Sheet1"
                                                              range:@"A1:C4"
                                                              style:style
                                                            storage:nil
                                                             folder:nil
                                                  completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                      NSLog(@"%@", output);
                                                  }];
}

- (void)postWorkSheetComment {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPComment *comment = [[ASPComment alloc] init];
    comment.htmlNote = @"<Font Style=\"FONT-WEIGHT: bold;FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: #000000;TEXT-ALIGN: left;\">Sohail:</Font><Font Style=\"FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: #000000;TEXT-ALIGN: left;\">\nDaily Expenses</Font>";
    comment.cellName = @"D19";
    
    [self.cellsApi postWorkSheetCommentWithCompletionBlock:fileName
                                                 sheetName:@"Sheet1"
                                                  cellName:@"D19"
                                                   comment:comment
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                             NSLog(@"%@", output);
                                         }];
}

- (void)postWorkSheetValidation {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorkSheetValidationWithCompletionBlock:fileName
                                                    sheetName:@"Sheet1"
                                              validationIndex:[NSNumber numberWithInt:0]
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPValidationResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
}

- (void)postWorksheetRangeSort {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPDataSorter *dataSort = [[ASPDataSorter alloc] init];
    dataSort.hasHeaders = [NSNumber numberWithBool:NO];
    dataSort.caseSensitive = [NSNumber numberWithBool:NO];
    dataSort.sortLeftToRight = [NSNumber numberWithBool:YES];
    
    ASPSortKey *sort = [[ASPSortKey alloc] init];
    sort.key = [NSNumber numberWithInt:4];
    sort.sortOrder = @"descending";
    
    dataSort.keyList = ( NSArray<ASPSortKey> *)@[sort];
    
    [self.cellsApi postWorksheetRangeSortWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                                    cellArea:@"A1:A10"
                                                  dataSorter:dataSort
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)putAddNewWorksheet {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putAddNewWorksheetWithCompletionBlock:fileName
                                               sheetName:@"Tasks"
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPWorksheetsResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
}

- (void)putChangeVisibilityWorksheet {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putChangeVisibilityWorksheetWithCompletionBlock:fileName
                                                         sheetName:@"Sheet1"
                                                         isVisible:[NSNumber numberWithBool:YES]
                                                           storage:nil
                                                            folder:nil
                                                 completionHandler:^(ASPWorksheetResponse *output, NSError *error) {
                                                     NSLog(@"%@", output);
                                                 }];
}

- (void)putInsertWorksheetColumns {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putInsertWorksheetColumnsWithCompletionBlock:fileName
                                                      sheetName:@"Sheet1"
                                                    columnIndex:[NSNumber numberWithInt:5]
                                                        columns:[NSNumber numberWithInt:3]
                                                updateReference:[NSNumber numberWithBool:YES]
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(ASPColumnsResponse *output, NSError *error) {
                                                  NSLog(@"%@", output);
                                              }];
}

- (void)putWorkSheetBackground {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"Creative" withExtension:@"jpg"];
    
    [self.cellsApi putWorkSheetBackgroundWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                             backgroundImage:pathToFile
                                                      folder:nil
                                                     storage:nil
                                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)putWorkSheetComment {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPComment *comment = [[ASPComment alloc] init];
    comment.htmlNote = @"<Font Style=\"FONT-WEIGHT: bold;FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: #000000;TEXT-ALIGN: left;\">Sohail:</Font><Font Style=\"FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: #000000;TEXT-ALIGN: left;\">\nShopping</Font>";
    comment.cellName = @"D18";
    
    [self.cellsApi putWorkSheetCommentWithCompletionBlock:fileName
                                                sheetName:@"Sheet1"
                                                 cellName:@"D18"
                                                  comment:comment
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPCommentResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
}

- (void)putWorkSheetValidation {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putWorkSheetValidationWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                                       range:@"A1:C10"
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPValidationResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)putWorksheetFreezePanes {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putWorksheetFreezePanesWithCompletionBlock:fileName
                                                    sheetName:@"Sheet1"
                                                          row:[NSNumber numberWithInt:1]
                                                       column:[NSNumber numberWithInt:1]
                                                  freezedRows:[NSNumber numberWithInt:1]
                                               freezedColumns:[NSNumber numberWithInt:1]
                                                       folder:nil
                                                      storage:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
}

@end
