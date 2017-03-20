//
//  Row.h
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPCellsApi;

@interface Row : NSObject

@property(nonatomic, strong) ASPCellsApi *cellsApi;

- (void)deleteWorksheetRow;
- (void)deleteWorksheetRows;
- (void)getWorksheetRow;
- (void)postAutofitWorkbookRows;
- (void)postCopyWorksheetRows;
- (void)postGroupWorksheetRows;
- (void)postHideWorksheetRows;
- (void)postRowStyle;
- (void)postUngroupWorksheetRows;
- (void)postUnhideWorksheetRows;
- (void)postUpdateWorksheetRow;
- (void)putInsertWorksheetRow;
- (void)putInsertWorksheetRows;

@end
