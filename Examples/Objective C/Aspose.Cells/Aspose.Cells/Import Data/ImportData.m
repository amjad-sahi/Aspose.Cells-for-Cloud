//
//  ImportData.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "ImportData.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation ImportData

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)postImportDataWithCompletionBlock {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    ASPImportDataImportOption *importDataImportOption = [[ASPImportDataImportOption alloc] init];
    importDataImportOption.destinationWorksheet = @"Sheet3";
    importDataImportOption.isInsert = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postImportDataWithCompletionBlock:fileName
                                        importOption:importDataImportOption
                                             storage:nil
                                              folder:nil
                                   completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                       NSLog(@"%@", output);
                                   }];
}

@end
