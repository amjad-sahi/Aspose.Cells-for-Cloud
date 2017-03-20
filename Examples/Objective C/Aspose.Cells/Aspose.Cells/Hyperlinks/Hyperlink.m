//
//  Hyperlink.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Hyperlink.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation Hyperlink

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)deleteWorkSheetHyperlink {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorkSheetHyperlinkWithCompletionBlock:fileName
                                                     sheetName:@"Sheet2"
                                                hyperlinkIndex:[NSNumber numberWithInt:0]
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                 NSLog(@"%@", output);
                                             }];
}

- (void)deleteWorkSheetHyperlinks {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorkSheetHyperlinksWithCompletionBlock:fileName
                                                      sheetName:@"Sheet1"
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                  NSLog(@"%@", output);
                                              }];
}

- (void)getWorkSheetHyperlink {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetHyperlinkWithCompletionBlock:fileName
                                                  sheetName:@"Sheet2"
                                             hyperlinkIndex:[NSNumber numberWithInt:0]
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPHyperlinkResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}

- (void)getWorkSheetHyperlinks {
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorkSheetHyperlinksWithCompletionBlock:fileName
                                                   sheetName:@"Sheet2"
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPHyperlinksResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)postWorkSheetHyperlink {
    NSString *fileName = @"myWorkbook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPHyperlink *hyperlink = [[ASPHyperlink alloc] init];
    ASPCellArea *area = [[ASPCellArea alloc] init];
    area.startRow = [NSNumber numberWithInt:1];
    area.startColumn = [NSNumber numberWithInt:1];
    area.endRow = [NSNumber numberWithInt:3];
    area.endColumn = [NSNumber numberWithInt:3];
    
    hyperlink.area = area;
    hyperlink.address = @"http://www.aspose.com/";
    hyperlink.textToDisplay = @"Aspose";
    
    [self.cellsApi postWorkSheetHyperlinkWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                              hyperlinkIndex:[NSNumber numberWithInt:0]
                                                   hyperlink:hyperlink
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPHyperlinkResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)putWorkSheetHyperlink {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putWorkSheetHyperlinkWithCompletionBlock:fileName
                                                  sheetName:@"Sheet1"
                                                   firstRow:[NSNumber numberWithInt:1]
                                                firstColumn:[NSNumber numberWithInt:1]
                                                  totalRows:[NSNumber numberWithInt:2]
                                               totalColumns:[NSNumber numberWithInt:2]
                                                    address:@"http://www.aspose.com/"
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPHyperlinkResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}

@end
