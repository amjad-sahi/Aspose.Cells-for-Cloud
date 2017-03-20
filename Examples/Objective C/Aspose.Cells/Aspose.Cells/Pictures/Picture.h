//
//  Picture.h
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPCellsApi;

@interface Picture : NSObject

@property(nonatomic, strong) ASPCellsApi *cellsApi;

- (void)deleteWorkSheetPictures;
- (void)deleteWorksheetPicture;
- (void)getWorksheetPicture;
- (void)getWorksheetPictureWithFormat;
- (void)getWorksheetPictures;
- (void)postWorkSheetPicture;
- (void)putWorksheetAddPicture;

@end
