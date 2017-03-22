//
//  PivotTable.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "PivotTable.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation PivotTable

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)deleteWorksheetPivotTable {
//ExStart:DeleteWorksheetPivotTable
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetPivotTableWithCompletionBlock:fileName
                                                      sheetName:@"Sheet1"
                                                pivotTableIndex:[NSNumber numberWithInt:0]
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                  NSLog(@"%@", output);
                                              }];
//ExEnd:DeleteWorksheetPivotTable
}

- (void)deleteWorksheetPivotTablesWithCompletionBlock {
//ExStart:DeleteWorksheetPivotTablesWithCompletionBlock
    
    NSString *fileName = @"Sample_Pivot_Table_Example.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetPivotTablesWithCompletionBlock:fileName
                                                       sheetName:@"Sheet2"
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                   NSLog(@"%@", output);
                                               }];
//ExEnd:DeleteWorksheetPivotTablesWithCompletionBlock
}

- (void)getWorksheetPivotTable {
//ExStart:GetWorksheetPivotTable
    
    NSString *fileName = @"Sample_Pivot_Table_Example.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetPivotTableWithCompletionBlock:fileName
                                                   sheetName:@"Sheet2"
                                             pivottableIndex:[NSNumber numberWithInt:0]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPPivotTableResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
//ExEnd:GetWorksheetPivotTable
}

- (void)getWorksheetPivotTables {
//ExStart:GetWorksheetPivotTables
    
    NSString *fileName = @"Sample_Pivot_Table_Example.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetPivotTablesWithCompletionBlock:fileName
                                                    sheetName:@"Sheet2"
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPPivotTablesResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
//ExEnd:GetWorksheetPivotTables
}

- (void)postPivotTableCellStyle {
//ExStart:PostPivotTableCellStyle
    
    NSString *fileName = @"Sample_Pivot_Table_Example.xls";
    [Utils uploadFile:fileName];
    
    ASPStyle *pivotTableStyleRequest = [[ASPStyle alloc] init];
    pivotTableStyleRequest.isGradient = [NSNumber numberWithBool:YES];
    pivotTableStyleRequest.font = [[ASPFont alloc] init];
    pivotTableStyleRequest.font.isBold = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postPivotTableCellStyleWithCompletionBlock:fileName
                                                    sheetName:@"Sheet2"
                                              pivotTableIndex:[NSNumber numberWithInt:0]
                                                       column:[NSNumber numberWithInt:1]
                                                          row:[NSNumber numberWithInt:1]
                                                        style:pivotTableStyleRequest
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
//ExEnd:PostPivotTableCellStyle
}

- (void)postPivotTableStyle {
//ExStart:PostPivotTableStyle
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPStyle *pivotTableStyleRequest = [[ASPStyle alloc] init];
    pivotTableStyleRequest.isGradient = [NSNumber numberWithBool:YES];
    pivotTableStyleRequest.font = [[ASPFont alloc] init];
    pivotTableStyleRequest.font.isBold = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postPivotTableStyleWithCompletionBlock:fileName
                                                sheetName:@"Sheet1"
                                          pivotTableIndex:[NSNumber numberWithInt:0]
                                                    style:pivotTableStyleRequest
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
//ExEnd:PostPivotTableStyle
}

- (void)putWorksheetPivotTable {
//ExStart:PutWorksheetPivotTable
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPCreatePivotTableRequest *createPivotTableRequest = [[ASPCreatePivotTableRequest alloc] init];
    createPivotTableRequest.name = @"SalePivotTable";
    createPivotTableRequest.sourceData = @"A1:F214";
    createPivotTableRequest.destCellName = @"A1";
    createPivotTableRequest.useSameSource = [NSNumber numberWithBool:YES];
    createPivotTableRequest.pivotFieldRows = @[[NSNumber numberWithInteger:1]];
    createPivotTableRequest.pivotFieldColumns = @[[NSNumber numberWithInteger:1]];
    createPivotTableRequest.pivotFieldData = @[[NSNumber numberWithInteger:1]];
    
    [self.cellsApi putWorksheetPivotTableWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                                     request:createPivotTableRequest
                                                     storage:nil
                                                      folder:nil
                                                  sourceData:@"A1:F214"
                                                destCellName:@"A1"
                                                   tableName:@"SalePivotTable"
                                               useSameSource:[NSNumber numberWithBool:YES]
                                           completionHandler:^(ASPPivotTableResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
//ExEnd:PutWorksheetPivotTable
}

@end
