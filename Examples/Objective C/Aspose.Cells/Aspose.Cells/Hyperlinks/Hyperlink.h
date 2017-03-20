//
//  Hyperlink.h
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPCellsApi;

@interface Hyperlink : NSObject

@property(nonatomic, strong) ASPCellsApi *cellsApi;

- (void)deleteWorkSheetHyperlink;
- (void)deleteWorkSheetHyperlinks;
- (void)getWorkSheetHyperlink;
- (void)getWorkSheetHyperlinks;
- (void)postWorkSheetHyperlink;
- (void)putWorkSheetHyperlink;

@end
