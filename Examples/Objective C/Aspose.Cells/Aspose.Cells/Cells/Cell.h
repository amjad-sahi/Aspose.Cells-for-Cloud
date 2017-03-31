//
//  Cell.h
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPCellsApi;

@interface Cell : NSObject

@property(nonatomic, strong) ASPCellsApi *cellsApi;

- (void)getWorkSheetMergedCell;
- (void)getWorkSheetMergedCells;
- (void)getWorksheetCell;
- (void)getWorksheetCellStyle;
- (void)getWorksheetCells;
- (void)postClearContents;
- (void)postClearFormats;
- (void)postCopyCellIntoCell;
- (void)postSetCellHtmlString;
- (void)postSetCellRangeValue;
- (void)postUpdateWorksheetCellStyle;
- (void)postWorksheetCellSetValue;
- (void)postWorksheetMerge;
- (void)postWorksheetUnmerge;
- (void)getWorksheetFirstCell;
- (void)getWorksheetLastCell;
- (void)getWorksheetMaxRow;
- (void)getWorksheetMaxDataRow;
- (void)getWorksheetMaxColumn;
- (void)getWorksheetMaxDataColumn;
- (void)getWorksheetMinRow;
- (void)getWorksheetMinDataRow;
- (void)getWorksheetMinColumn;
- (void)getWorksheetMinDataColumn;
    
@end
