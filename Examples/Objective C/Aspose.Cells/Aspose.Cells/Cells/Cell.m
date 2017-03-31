//
//  Cell.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Cell.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation Cell

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)getWorkSheetMergedCell {
//ExStart:GetWorkSheetMergedCell
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetMergedCellWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                             mergedCellIndex:[NSNumber numberWithInt:0]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPMergedCellResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
//ExEnd:GetWorkSheetMergedCell
}

- (void)getWorkSheetMergedCells {
//ExStart:GetWorkSheetMergedCells
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetMergedCellsWithCompletionBlock:fileName
                                                    sheetName:@"Sheet1"
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPMergedCellsResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
//ExEnd:GetWorkSheetMergedCells
}

- (void)getWorksheetCell {
//ExStart:GetWorksheetCell
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellWithCompletionBlock:fileName
                                             sheetName:@"Sheet1"
                                      cellOrMethodName:@"A3"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPCellResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
//ExEnd:GetWorksheetCell
}

- (void)getWorksheetFirstCell {
    //ExStart:GetWorksheetFirstCell
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellWithCompletionBlock:fileName
                                             sheetName:@"Sheet2"
                                      cellOrMethodName:@"firstcell"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPCellResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
    //ExEnd:GetWorksheetFirstCell
}
    
- (void)getWorksheetLastCell {
    //ExStart:GetWorksheetLastCell
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellWithCompletionBlock:fileName
                                             sheetName:@"Sheet2"
                                      cellOrMethodName:@"endcell"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPCellResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
    //ExEnd:GetWorksheetLastCell
}
    
- (void)getWorksheetMaxRow {
    //ExStart:GetWorksheetMaxRow
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellWithCompletionBlock:fileName
                                             sheetName:@"Sheet2"
                                      cellOrMethodName:@"maxrow"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPCellResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
    //ExEnd:GetWorksheetMaxRow
}
    
- (void)getWorksheetMaxDataRow {
    //ExStart:GetWorksheetMaxDataRow
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellWithCompletionBlock:fileName
                                             sheetName:@"Sheet2"
                                      cellOrMethodName:@"maxdatarow"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPCellResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
    //ExEnd:GetWorksheetMaxDataRow
}
    
- (void)getWorksheetMaxColumn {
    //ExStart:GetWorksheetMaxColumn
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellWithCompletionBlock:fileName
                                             sheetName:@"maxcolumn"
                                      cellOrMethodName:@"A3"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPCellResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
    //ExEnd:GetWorksheetMaxColumn
}
    
    
- (void)getWorksheetMaxDataColumn {
    //ExStart:GetWorksheetMaxDataColumn
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellWithCompletionBlock:fileName
                                             sheetName:@"maxdatacolumn"
                                      cellOrMethodName:@"A3"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPCellResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
    //ExEnd:GetWorksheetMaxDataColumn
}
    
- (void)getWorksheetMinRow {
    //ExStart:GetWorksheetMinRow
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellWithCompletionBlock:fileName
                                             sheetName:@"minrow"
                                      cellOrMethodName:@"A3"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPCellResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
    //ExEnd:GetWorksheetMinRow
}
    
- (void)getWorksheetMinDataRow {
    //ExStart:GetWorksheetMinDataRow
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellWithCompletionBlock:fileName
                                             sheetName:@"mindatarow"
                                      cellOrMethodName:@"A3"
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPCellResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
    //ExEnd:GetWorksheetMinDataRow
}
    
- (void)getWorksheetMinColumn {
//ExStart:GetWorksheetMinColumn
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellStyleWithCompletionBlock:fileName
                                                  sheetName:@"mincolumn"
                                                   cellName:@"A7"
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPStyleResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
//ExEnd:GetWorksheetMinColumn
}

- (void)getWorksheetMinDataColumn {
    //ExStart:GetWorksheetMinDataColumn
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellStyleWithCompletionBlock:fileName
                                                  sheetName:@"mindatacolumn"
                                                   cellName:@"A7"
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPStyleResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
    //ExEnd:GetWorksheetMinDataColumn
}
    
- (void)getWorksheetCells {
//ExStart:GetWorksheetCellsWithCompletionBlock
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetCellsWithCompletionBlock:fileName
                                              sheetName:@"Sheet1"
                                                 offest:nil
                                                  count:nil
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPCellsResponse *output, NSError *error) {
                                          NSLog(@"%@", output);
                                      }];
//ExEnd:GetWorksheetCellsWithCompletionBlock
}

- (void)postClearContents {
//ExStart:PostClearContents
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postClearContentsWithCompletionBlock:fileName
                                              sheetName:@"Sheet1"
                                                  range:@"A2:C11"
                                               startRow:[NSNumber numberWithInt:2]
                                            startColumn:[NSNumber numberWithInt:1]
                                                 endRow:[NSNumber numberWithInt:11]
                                              endColumn:[NSNumber numberWithInt:3]
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                          NSLog(@"%@", output);
                                      }];
//ExEnd:PostClearContents
}

- (void)postClearFormats {
//ExStart:PostClearFormats
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postClearFormatsWithCompletionBlock:fileName
                                             sheetName:@"Sheet1"
                                                 range:@"A2:C11"
                                              startRow:[NSNumber numberWithInt:2]
                                           startColumn:[NSNumber numberWithInt:1]
                                                endRow:[NSNumber numberWithInt:11]
                                             endColumn:[NSNumber numberWithInt:3]
                                               storage:nil
                                                folder:nil
                                     completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                         NSLog(@"%@", output);
                                     }];
//ExEnd:PostClearFormats
}

- (void)postCopyCellIntoCell {
//ExStart:PostCopyCellIntoCell
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postCopyCellIntoCellWithCompletionBlock:fileName
                                              destCellName:@"C5"
                                                 sheetName:@"Sheet1"
                                                 worksheet:@"Sheet1"
                                                  cellname:@"A5"
                                                       row:nil
                                                    column:nil
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                             NSLog(@"%@", output);
                                         }];
//ExEnd:PostCopyCellIntoCell
}

- (void)postSetCellHtmlString {
//ExStart:PostSetCellHtmlString
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postSetCellHtmlStringWithCompletionBlock:fileName
                                                  sheetName:@"Sheet1"
                                                   cellName:@"A3"
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPCellResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
//ExEnd:PostSetCellHtmlString
}

- (void)postSetCellRangeValue {
//ExStart:PostSetCellRangeValue
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postSetCellRangeValueWithCompletionBlock:fileName
                                                  sheetName:@"Sheet1"
                                                   cellarea:@"A10:B20"
                                                      value:@"Aspose"
                                                       type:@"string"
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
//ExEnd:PostSetCellRangeValue
}

- (void)postUpdateWorksheetCellStyle {
//ExStart:PostUpdateWorksheetCellStyle
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
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
    
    [self.cellsApi postUpdateWorksheetCellStyleWithCompletionBlock:fileName
                                                         sheetName:@"Sheet1"
                                                          cellName:@"A3"
                                                             style:cellStyle
                                                           storage:nil
                                                            folder:nil
                                                 completionHandler:^(ASPStyleResponse *output, NSError *error) {
                                                     NSLog(@"%@", output);
                                                 }];
//ExEnd:PostUpdateWorksheetCellStyle
}

- (void)postWorksheetCellSetValue {
//ExStart:PostWorksheetCellSetValue
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorksheetCellSetValueWithCompletionBlock:fileName
                                                      sheetName:@"Sheet1"
                                                       cellName:@"A3"
                                                          value:@"1234"
                                                           type:@"string"
                                                        formula:@"sum(a1,a2)"
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(ASPCellResponse *output, NSError *error) {
                                                  NSLog(@"%@", output);
                                              }];
//ExEnd:PostWorksheetCellSetValue
}

- (void)postWorksheetMerge {
//ExStart:PostWorksheetMerge
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorksheetMergeWithCompletionBlock:fileName
                                               sheetName:@"Sheet1"
                                                startRow:[NSNumber numberWithInt:0]
                                             startColumn:[NSNumber numberWithInt:0]
                                               totalRows:[NSNumber numberWithInt:5]
                                            totalColumns:[NSNumber numberWithInt:2]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
//ExEnd:PostWorksheetMerge
}

- (void)postWorksheetUnmerge {
//ExStart:PostWorksheetUnmerge
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorksheetUnmergeWithCompletionBlock:fileName
                                                 sheetName:@"Sheet1"
                                                  startRow:[NSNumber numberWithInt:1]
                                               startColumn:[NSNumber numberWithInt:1]
                                                 totalRows:[NSNumber numberWithInt:5]
                                              totalColumns:[NSNumber numberWithInt:3]
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                             NSLog(@"%@", output);
                                         }];
//ExEnd:PostWorksheetUnmerge
}

@end
