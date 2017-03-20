//
//  Workbook.h
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPCellsApi;

@interface Workbook : NSObject

@property(nonatomic, strong) ASPCellsApi *cellsApi;

- (void)deleteDecryptDocument;
- (void)deleteDocumentUnProtectFromChanges;
- (void)deleteUnProtectDocument;
- (void)getExtractBarcodes;
- (void)getWorkBook;
- (void)getWorkBookDefaultStyle;
- (void)getWorkBookName;
- (void)getWorkBookNames;
- (void)getWorkBookWithFormat;
- (void)postColumnStyle;
- (void)postCopyWorksheetColumns;
- (void)postDocumentSaveAs;
- (void)postEncryptDocument;
- (void)postGroupWorksheetColumns;
- (void)postProtectDocument;
- (void)postWorkbookCalculateFormula;
- (void)postWorkbookGetSmartMarkerResult;
- (void)postWorkbookSplit;
- (void)postWorkbooksMerge;
- (void)putConvertWorkBook;
- (void)putDocumentProtectFromChanges;
- (void)putWorkbookCreate;

@end
