//
//  DocumentProperty.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "DocumentProperty.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation DocumentProperty

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)deleteDocumentProperties {
//ExStart:DeleteDocumentProperties
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteDocumentPropertiesWithCompletionBlock:fileName
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPCellsDocumentPropertiesResponse *output, NSError *error) {
                                                 NSLog(@"%@", output);
                                             }];
//ExEnd:DeleteDocumentProperties
}

- (void)deleteDocumentProperty {
//ExStart:DeleteDocumentProperty
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteDocumentPropertyWithCompletionBlock:fileName
                                                propertyName:@"author"
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPCellsDocumentPropertiesResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
//ExEnd:DeleteDocumentProperty
}

- (void)getDocumentProperties {
//ExStart:GetDocumentProperties
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getDocumentPropertiesWithCompletionBlock:fileName
                                                    storage:nil
                                                     folder:nil
                                          completionHandler:^(ASPCellsDocumentPropertiesResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
//ExEnd:GetDocumentProperties
}

- (void)getDocumentProperty {
//ExStart:GetDocumentProperty
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getDocumentPropertyWithCompletionBlock:fileName
                                             propertyName:@"Title"
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPCellsDocumentPropertyResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
//ExEnd:GetDocumentProperty
}

- (void)putDocumentProperty {
//ExStart:PutDocumentProperty
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    ASPCellsDocumentProperty *cellsDocumentProperty = [[ASPCellsDocumentProperty alloc] init];
    cellsDocumentProperty.name = @"Title";
    cellsDocumentProperty.value = @"Tax Reforms";
    
    [self.cellsApi putDocumentPropertyWithCompletionBlock:fileName
                                             propertyName:@"Title"
                                                _property:cellsDocumentProperty
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPCellsDocumentPropertyResponse *output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
//ExEnd:PutDocumentProperty
}

@end
