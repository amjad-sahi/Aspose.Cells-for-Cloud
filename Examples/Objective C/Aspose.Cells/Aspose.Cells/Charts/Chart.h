//
//  Chart.h
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPCellsApi;

@interface Chart : NSObject

@property(nonatomic, strong) ASPCellsApi *cellsApi;

- (void)deleteWorksheetChartLegend;
- (void)deleteWorksheetChartTitle;
- (void)deleteWorksheetClearCharts;
- (void)deleteWorksheetDeleteChart;
- (void)getChartArea;
- (void)getChartAreaBorderWithCompletionBlock;
- (void)getChartAreaFillFormat;
- (void)getWorksheetChart;
- (void)getWorksheetChartLegend;
- (void)getWorksheetChartWithFormat;
- (void)getWorksheetCharts;
- (void)postWorksheetChartLegend;
- (void)postWorksheetChartTitle;
- (void)putWorksheetAddChart;
- (void)putWorksheetChartLegend;
- (void)putWorksheetChartTitle;

@end
