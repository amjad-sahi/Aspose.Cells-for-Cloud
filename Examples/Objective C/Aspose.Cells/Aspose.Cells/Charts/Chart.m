//
//  Chart.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Chart.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation Chart

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)deleteWorksheetChartLegend {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetChartLegendWithCompletionBlock:fileName
                                                       sheetName:@"Sheet1"
                                                      chartIndex:[NSNumber numberWithInt:0]
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                   NSLog(@"%@", output);
                                               }];
}

- (void)deleteWorksheetChartTitle {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetChartTitleWithCompletionBlock:fileName
                                                      sheetName:@"Sheet5"
                                                     chartIndex:[NSNumber numberWithInt:0]
                                                        storage:nil
                                                         folder:nil
                                              completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                  NSLog(@"%@", output);
                                              }];
}

- (void)deleteWorksheetClearCharts {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetClearChartsWithCompletionBlock:fileName
                                                       sheetName:@"Sheet1"
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                   NSLog(@"%@", output);
                                               }];
}

- (void)deleteWorksheetDeleteChart {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetDeleteChartWithCompletionBlock:fileName
                                                       sheetName:@"Sheet5"
                                                      chartIndex:[NSNumber numberWithInt:0]
                                                         storage:nil
                                                          folder:nil
                                               completionHandler:^(ASPChartsResponse *output, NSError *error) {
                                                   NSLog(@"%@", output);
                                               }];
}

- (void)getChartArea {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getChartAreaWithCompletionBlock:fileName
                                         sheetName:@"Sheet5"
                                        chartIndex:[NSNumber numberWithInt:0]
                                           storage:nil
                                            folder:nil
                                 completionHandler:^(ASPChartAreaResponse *output, NSError *error) {
                                     NSLog(@"%@", output);
                                 }];
}

- (void)getChartAreaBorderWithCompletionBlock {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getChartAreaBorderWithCompletionBlock:fileName
                                               sheetName:@"Sheet5"
                                              chartIndex:[NSNumber numberWithInt:0]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPLineResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
}

- (void)getChartAreaFillFormat {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getChartAreaFillFormatWithCompletionBlock:fileName
                                                   sheetName:@"Sheet5"
                                                  chartIndex:[NSNumber numberWithInt:0]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPFillFormatResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

- (void)getWorksheetChart {
    
    NSString *fileName = @"test_cells.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetChartWithCompletionBlock:fileName
                                              sheetName:@"Sheet1"
                                            chartNumber:[NSNumber numberWithInt:0]
                                                storage:nil
                                                 folder:nil
                                      completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                        NSLog(@"%@", output);
                                    }];
}

- (void)getWorksheetChartLegend {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetChartLegendWithCompletionBlock:fileName
                                                    sheetName:@"Sheet5"
                                                   chartIndex:[NSNumber numberWithInt:0]
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPLegendResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
}

- (void)getWorksheetChartWithFormat {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    //Valid Image Formats "tiff", "jpeg", "png", "emf", "bmp" and "gif"
    [self.cellsApi getWorksheetChartWithFormatWithCompletionBlock:fileName
                                                        sheetName:@"Sheet5"
                                                      chartNumber:[NSNumber numberWithInt:0]
                                                           format:@"png"
                                                          storage:nil
                                                           folder:nil
                                                completionHandler:^(NSURL *output, NSError *error) {
                                                    NSLog(@"%@", output);
                                                }];
}

- (void)getWorksheetCharts {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetChartsWithCompletionBlock:fileName
                                               sheetName:@"Sheet1"
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPChartsResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
}

- (void)postWorksheetChartLegend {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    ASPChartsLegend *chartsLegend = [[ASPChartsLegend alloc] init];
    
    chartsLegend.position = @"Bottom";
    ASPFont *font = [[ASPFont alloc] init];
    ASPColor *color = [[ASPColor alloc] init];
    color.A = @"1";
    color.R = @"255";
    color.G = @"0";
    color.B = @"0";
    font.color = color;
    font.doubleSize = [NSNumber numberWithDouble:10.0];
    font.isBold = [NSNumber numberWithBool:YES];
    font.isItalic = [NSNumber numberWithBool:NO];
    font.isStrikeout = [NSNumber numberWithBool:NO];
    font.isSubscript = [NSNumber numberWithBool:NO];
    font.isSuperscript = [NSNumber numberWithBool:NO];
    font.name = @"Arial";
    font.size = [NSNumber numberWithInt:10];
    font.underline = @"None";
    chartsLegend.font = font;
    chartsLegend.shadow = [NSNumber numberWithBool:YES];
    
    [self.cellsApi postWorksheetChartLegendWithCompletionBlock:fileName
                                                     sheetName:@"Sheet5"
                                                    chartIndex:[NSNumber numberWithInt:0]
                                                        legend:chartsLegend
                                                       storage:nil
                                                        folder:nil
                                             completionHandler:^(ASPLegendResponse *output, NSError *error) {
                                                 NSLog(@"%@", output);
                                             }];
}

- (void)postWorksheetChartTitle {
    
    NSString *fileName = @"test_cells.xlsx";
    [Utils uploadFile:fileName];
    
    ASPChartsTitle *chartsTitle = [[ASPChartsTitle alloc] init];
    chartsTitle.text = @"Sales Report";
    
    [self.cellsApi postWorksheetChartTitleWithCompletionBlock:fileName
                                                    sheetName:@"Sheet1"
                                                   chartIndex:[NSNumber numberWithInt:0]
                                                        title:chartsTitle
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPTitleResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
}

- (void)putWorksheetAddChart {
    
    NSString *fileName = @"myWorkBook.xlsx";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putWorksheetAddChartWithCompletionBlock:fileName
                                                 sheetName:@"Sheet1"
                                                 chartType:@"Bar"
                                              upperLeftRow:[NSNumber numberWithInt:12]
                                           upperLeftColumn:[NSNumber numberWithInt:12]
                                             lowerRightRow:[NSNumber numberWithInt:20]
                                          lowerRightColumn:[NSNumber numberWithInt:20]
                                                      area:@"B1:F2"
                                                isVertical:[NSNumber numberWithBool:YES]
                                              categoryData:@"A1:A2"
                                       isAutoGetSerialName:[NSNumber numberWithBool:YES]
                                                     title:@"SalesState"
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPChartsResponse *output, NSError *error) {
                                             NSLog(@"%@", output);
                                         }];
}

- (void)putWorksheetChartLegend {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putWorksheetChartLegendWithCompletionBlock:fileName
                                                    sheetName:@"Sheet5"
                                                   chartIndex:[NSNumber numberWithInt:0]
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
}

- (void)putWorksheetChartTitle {
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    ASPChartsTitle *chartTitle = [[ASPChartsTitle alloc] init];
    chartTitle.text = @"Sales Chart";
    
    [self.cellsApi putWorksheetChartTitleWithCompletionBlock:fileName
                                                   sheetName:@"Sheet5"
                                                  chartIndex:[NSNumber numberWithInt:0]
                                                       title:chartTitle
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPTitleResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
}

@end
