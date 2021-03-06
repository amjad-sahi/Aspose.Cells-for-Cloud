//
//  PivotTable.h
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPCellsApi;

@interface PivotTable : NSObject

@property(nonatomic, strong) ASPCellsApi *cellsApi;

- (void)deleteWorksheetPivotTable;
- (void)deleteWorksheetPivotTablesWithCompletionBlock;
- (void)getWorksheetPivotTable;
- (void)getWorksheetPivotTables;
- (void)postPivotTableCellStyle;
- (void)postPivotTableStyle;
- (void)putWorksheetPivotTable;

@end
