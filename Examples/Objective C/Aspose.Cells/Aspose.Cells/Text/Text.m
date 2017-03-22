//
//  Text.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Text.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation Text

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)getWorkBookTextItems {
//ExStart:GetWorkBookTextItems
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkBookTextItemsWithCompletionBlock:fileName
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                             NSLog(@"%@", output);
                                         }];
//ExEnd:GetWorkBookTextItems
}

- (void)getWorkSheetTextItems {
//ExStart:GetWorkSheetTextItems
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetTextItemsWithCompletionBlock:fileName
                                                  sheetName:@"Sheet1"
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
//ExEnd:GetWorkSheetTextItems
}

- (void)postWorkSheetTextSearch {
//ExStart:PostWorkSheetTextSearch
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorkSheetTextSearchWithCompletionBlock:fileName
                                                    sheetName:@"Sheet2"
                                                         text:@"OLE"
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
//ExEnd:PostWorkSheetTextSearch
}

- (void)postWorkbooksTextReplace {
//ExStart:PostWorkbooksTextReplace
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorkbooksTextReplaceWithCompletionBlock:fileName
                                                      oldValue:@"Averages"
                                                      newValue:@"Median"
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPWorkbookReplaceResponse *output, NSError *error) {
                                                 NSLog(@"%@", output);
                                             }];
//ExEnd:PostWorkbooksTextReplace
}

- (void)postWorkbooksTextSearch {
//ExStart:PostWorkbooksTextSearch
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorkbooksTextSearchWithCompletionBlock:fileName
                                                         text:@"Pros"
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
//ExEnd:PostWorkbooksTextSearch
}

- (void)postWorsheetTextReplace {
//ExStart:PostWorsheetTextReplace
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorsheetTextReplaceWithCompletionBlock:fileName
                                                    sheetName:@"Sheet1"
                                                     oldValue:@"Except"
                                                     newValue:@"Expect"
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPWorksheetReplaceResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
//ExEnd:PostWorsheetTextReplace
}

@end
