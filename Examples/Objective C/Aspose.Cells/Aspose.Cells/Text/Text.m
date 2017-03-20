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
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkBookTextItemsWithCompletionBlock:fileName
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                             NSLog(@"%@", output);
                                         }];
}

- (void)getWorkSheetTextItems {
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetTextItemsWithCompletionBlock:fileName
                                                  sheetName:@"Sheet1"
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}

- (void)postWorkSheetTextSearch {
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
}

- (void)postWorkbooksTextReplace {
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
}

- (void)postWorkbooksTextSearch {
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi postWorkbooksTextSearchWithCompletionBlock:fileName
                                                         text:@"Pros"
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPTextItemsResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
}

- (void)postWorsheetTextReplace {
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
}

@end
