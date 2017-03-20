//
//  OLEObject.h
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPCellsApi;

@interface OLEObject : NSObject

@property(nonatomic, strong) ASPCellsApi *cellsApi;

- (void)deleteWorksheetOleObject;
- (void)deleteWorksheetOleObjects;
- (void)getWorksheetOleObject;
- (void)getWorksheetOleObjectWithFormat;
- (void)getWorksheetOleObjects;
- (void)postUpdateWorksheetOleObject;
- (void)putWorksheetOleObject;

@end
