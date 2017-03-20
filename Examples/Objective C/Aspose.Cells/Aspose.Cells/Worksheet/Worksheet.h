//
//  Worksheet.h
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPCellsApi;

@interface Worksheet : NSObject

@property(nonatomic, strong) ASPCellsApi *cellsApi;

- (void)deleteUnprotectWorksheet;
- (void)deleteWorkSheetBackground;
- (void)deleteWorkSheetComment;
- (void)deleteWorkSheetValidation;
- (void)deleteWorksheet;
- (void)deleteWorksheetColumns;
- (void)deleteWorksheetFreezePanes;
- (void)getWorkSheet;
- (void)getWorkSheetCalculateFormula;
- (void)getWorkSheetComment;
- (void)getWorkSheetComments;
- (void)getWorkSheetValidation;
- (void)getWorkSheetValidations;
- (void)getWorkSheetWithFormat;
- (void)getWorkSheets;
- (void)getWorksheetAutoshape;
- (void)getWorksheetAutoshapes;
- (void)getWorksheetColumn;
- (void)getWorksheetColumns;
- (void)getWorksheetRows;
- (void)postAutofitWorksheetRows;
- (void)postCopyWorksheet;
- (void)postHideWorksheetColumns;
- (void)postMoveWorksheet;
- (void)postRenameWorksheet;
- (void)postSetWorksheetColumnWidth;
- (void)postUngroupWorksheetColumns;
- (void)postUnhideWorksheetColumns;
- (void)postUpdateWorksheetProperty;
- (void)postUpdateWorksheetRangeStyle;
- (void)postWorkSheetComment;
- (void)postWorkSheetValidation;
- (void)postWorksheetRangeSort;
- (void)putAddNewWorksheet;
- (void)putChangeVisibilityWorksheet;
- (void)putInsertWorksheetColumns;
- (void)putWorkSheetBackground;
- (void)putWorkSheetComment;
- (void)putWorkSheetValidation;
- (void)putWorksheetFreezePanes;

@end
