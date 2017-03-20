//
//  Image.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Image.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation Image

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)getWorksheetAutoshapeWithFormat {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    //Valid Image Formats For Worksheet "tiff", "jpeg", "png", "emf", "bmp", "gif"];
    [self.cellsApi getWorksheetAutoshapeWithFormatWithCompletionBlock:fileName
                                                            sheetName:@"Sheet4"
                                                      autoshapeNumber:[NSNumber numberWithInt:1]
                                                               format:@"png"
                                                              storage:nil
                                                               folder:nil
                                                    completionHandler:^(NSURL *output, NSError *error) {
                                                        NSLog(@"%@", output);
                                                    }];
}

@end
