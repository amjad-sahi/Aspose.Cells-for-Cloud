//
//  OLEObject.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "OLEObject.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation OLEObject

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)deleteWorksheetOleObject {
    
    NSString *fileName = @"Embeded_OleObject_Sample_Book1.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetOleObjectWithCompletionBlock:fileName
                                                     sheetName:@"Sheet1"
                                                oleObjectIndex:[NSNumber numberWithInt:0]
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                 NSLog(@"%@", output);
                                             }];
}

- (void)deleteWorksheetOleObjects {
    
    NSString *fileName = @"Embeded_OleObject_Sample_Book1.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetOleObjectsWithCompletionBlock:fileName
                                                      sheetName:@"Sheet1"
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                  NSLog(@"%@", output);
                                              }];
}

- (void)getWorksheetOleObject {
    
    NSString *fileName = @"Embeded_OleObject_Sample_Book1.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetOleObjectWithCompletionBlock:fileName
                                                  sheetName:@"Sheet1"
                                               objectNumber:[NSNumber numberWithInt:0]
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}

- (void)getWorksheetOleObjectWithFormat {
    
    NSString *fileName = @"Embeded_OleObject_Sample_Book1.xlsx";
    [Utils uploadFile:fileName];
    
    //Valid Ole Object Formats "tiff", "jpeg", "png", "emf", "bmp", and "gif"
    [self.cellsApi getWorksheetOleObjectWithFormatWithCompletionBlock:fileName
                                                            sheetName:@"Sheet1"
                                                         objectNumber:[NSNumber numberWithInt:0]
                                                               format:@"png"
                                                              storage:nil
                                                               folder:nil
                                                    completionHandler:^(NSURL *output, NSError *error) {
                                                        NSLog(@"%@", output);
                                                    }];
}

- (void)getWorksheetOleObjects {
    
    NSString *fileName = @"Embeded_OleObject_Sample_Book1.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetOleObjectsWithCompletionBlock:fileName
                                                   sheetName:@"Sheet1"
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPOleObjectsResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)postUpdateWorksheetOleObject {
    
    NSString *fileName = @"Embeded_OleObject_Sample_Book1.xlsx";
    [Utils uploadFile:fileName];
    NSString *sourceFullName = @"OLEDoc2.docx";
    [Utils uploadFile:sourceFullName];
    NSString *imageSourceFullName = @"portrait.jpg";
    [Utils uploadFile:imageSourceFullName];
    
    ASPDrawingOleObject *oleObject = [[ASPDrawingOleObject alloc] init];
    oleObject.sourceFullName = sourceFullName;
    oleObject.imageSourceFullName = imageSourceFullName;
    oleObject.upperLeftRow = [NSNumber numberWithInt:10];
    oleObject.upperLeftColumn = [NSNumber numberWithInt:10];
    oleObject.top = [NSNumber numberWithInt:20];
    oleObject.left = [NSNumber numberWithInt:20];
    oleObject.height = [NSNumber numberWithInt:20];
    oleObject.width = [NSNumber numberWithInt:20];
    
    [self.cellsApi postUpdateWorksheetOleObjectWithCompletionBlock:fileName
                                                         sheetName:@"Sheet1"
                                                    oleObjectIndex:[NSNumber numberWithInt:0]
                                                               ole:oleObject
                                                           storage:nil
                                                            folder:nil
                                                 completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                     NSLog(@"%@", output);
                                                 }];
}

- (void)putWorksheetOleObject {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    NSString *sourceFullName = @"OLEDoc2.docx";
    [Utils uploadFile:sourceFullName];
    NSString *imageSourceFullName = @"sample.jpg";
    [Utils uploadFile:imageSourceFullName];
    
    ASPDrawingOleObject *oleObject = [[ASPDrawingOleObject alloc] init];
    oleObject.sourceFullName = sourceFullName;
    oleObject.imageSourceFullName = imageSourceFullName;
    oleObject.upperLeftRow = [NSNumber numberWithInt:10];
    oleObject.upperLeftColumn = [NSNumber numberWithInt:10];
    oleObject.top = [NSNumber numberWithInt:20];
    oleObject.left = [NSNumber numberWithInt:20];
    oleObject.height = [NSNumber numberWithInt:20];
    oleObject.width = [NSNumber numberWithInt:20];
    
    [self.cellsApi putWorksheetOleObjectWithCompletionBlock:fileName
                                                  sheetName:@"Sheet1"
                                                  oleObject:oleObject
                                               upperLeftRow:[NSNumber numberWithInt:1]
                                            upperLeftColumn:[NSNumber numberWithInt:1]
                                                     height:[NSNumber numberWithInt:30]
                                                      width:[NSNumber numberWithInt:40]
                                                    oleFile:sourceFullName
                                                  imageFile:imageSourceFullName
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPOleObjectResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                          }];
}

@end
