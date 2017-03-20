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

- (void)deleteWorksheetRow {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetRowWithCompletionBlock:fileName
                                               sheetName:@"Sheet1"
                                                rowIndex:[NSNumber numberWithInt:1]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
}

- (void)deleteWorksheetRows {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetRowsWithCompletionBlock:fileName
                                                sheetName:@"Sheet1"
                                                 startrow:[NSNumber numberWithInt:2]
                                                totalRows:[NSNumber numberWithInt:5]
                                          updateReference:[NSNumber numberWithBool:YES]
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
}

- (void)getWorksheetRow {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetRowWithCompletionBlock:fileName
                                            sheetName:@"Sheet1"
                                             rowIndex:[NSNumber numberWithInt:1]
                                              storage:nil folder:nil
                                    completionHandler:^(ASPRowResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
}

- (void)postAutofitWorkbookRows {
    NSString *fileName = @"test_cells.xlsx";
    [Utils uploadFile:fileName];
    
    ASPAutoFitterOptions *autoFitterOptions = [[ASPAutoFitterOptions alloc] init];
    autoFitterOptions.autoFitMergedCells = [NSNumber numberWithBool:YES];
    autoFitterOptions.ignoreHidden = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postAutofitWorkbookRowsWithCompletionBlock:fileName
                                            autoFitterOptions:autoFitterOptions
                                                     startRow:[NSNumber numberWithInt:1]
                                                       endRow:[NSNumber numberWithInt:300]
                                                     onlyAuto:[NSNumber numberWithBool:YES]
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
}

- (void)postCopyWorksheetRows {
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postCopyWorksheetRowsWithCompletionBlock:fileName
                                                  sheetName:@"Sheet1"
                                             sourceRowIndex:[NSNumber numberWithInt:5]
                                        destinationRowIndex:[NSNumber numberWithInt:7]
                                                  rowNumber:[NSNumber numberWithInt:3]
                                                  worksheet:nil
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}

- (void)postGroupWorksheetRows {
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postGroupWorksheetRowsWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                                  firstIndex:[NSNumber numberWithInt:1]
                                                   lastIndex:[NSNumber numberWithInt:5]
                                                        hide:[NSNumber numberWithBool:NO]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)postHideWorksheetRows {
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postHideWorksheetRowsWithCompletionBlock:fileName
                                                  sheetName:@"Sheet1"
                                                   startrow:[NSNumber numberWithInt:1]
                                                  totalRows:[NSNumber numberWithInt:5]
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}

- (void)postRowStyle {
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPStyle *rowStyle = [[ASPStyle alloc] init];
    ASPColor* backgroundColor = [[ASPColor alloc] init];
    backgroundColor.A = @"1";
    backgroundColor.R = @"245";
    backgroundColor.G = @"200";
    backgroundColor.B = @"178";
    rowStyle.backgroundColor = backgroundColor;
    
    [self.cellsApi postRowStyleWithCompletionBlock:fileName
                                         sheetName:@"Sheet1"
                                          rowIndex:[NSNumber numberWithInt:1]
                                             style:rowStyle
                                           storage:nil
                                            folder:nil
                                 completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                     NSLog(@"%@", output);
                                 }];
}

- (void)postUngroupWorksheetRows {
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postUngroupWorksheetRowsWithCompletionBlock:fileName
                                                     sheetName:@"Sheet1"
                                                    firstIndex:[NSNumber numberWithInt:1]
                                                     lastIndex:[NSNumber numberWithInt:5]
                                                         isAll:[NSNumber numberWithBool:YES]
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                 NSLog(@"%@", output);
                                             }];
}

- (void)postUnhideWorksheetRows {
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postUnhideWorksheetRowsWithCompletionBlock:fileName
                                                    sheetName:@"Sheet1"
                                                     startrow:[NSNumber numberWithInt:1]
                                                    totalRows:[NSNumber numberWithInt:3]
                                                       height:[NSNumber numberWithDouble:30.0]
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
}

- (void)postUpdateWorksheetRow {
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postUpdateWorksheetRowWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                                    rowIndex:[NSNumber numberWithInt:1]
                                                      height:[NSNumber numberWithDouble:25.0]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPRowResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)putInsertWorksheetRow {
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putInsertWorksheetRowWithCompletionBlock:fileName
                                                  sheetName:@"Sheet1"
                                                   rowIndex:[NSNumber numberWithInt:10]
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPRowResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}

- (void)putInsertWorksheetRows {
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putInsertWorksheetRowsWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                                    startrow:[NSNumber numberWithInt:10]
                                                   totalRows:[NSNumber numberWithInt:10]
                                             updateReference:[NSNumber numberWithBool:YES]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

@end
