//
//  Picture.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Picture.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation Picture

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

- (void)deleteWorkSheetPictures {
//ExStart:DeleteWorkSheetPictures
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorkSheetPicturesWithCompletionBlock:fileName
                                                    sheetName:@"Sheet6"
                                                      storage:nil
                                                       folder:nil
                                            completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                                NSLog(@"%@", output);
                                            }];
//ExEnd:DeleteWorkSheetPictures
}

- (void)deleteWorksheetPicture {
//ExStart:DeleteWorksheetPicture
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi deleteWorksheetPictureWithCompletionBlock:fileName
                                                   sheetName:@"Sheet6"
                                                pictureIndex:[NSNumber numberWithInt:0]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                                               NSLog(@"%@", output);
                                           }];
//ExEnd:DeleteWorksheetPicture
}

- (void)getWorksheetPicture {
//ExStart:GetWorksheetPicture
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetPictureWithCompletionBlock:fileName
                                                sheetName:@"Sheet6"
                                            pictureNumber:[NSNumber numberWithInt:0]
                                                  storage:nil
                                                   folder:nil
                                        completionHandler:^(ASPPictureResponse* output, NSError *error) {
                                            NSLog(@"%@", output);
                                        }];
//ExEnd:GetWorksheetPicture
}

- (void)getWorksheetPictureWithFormat {
//ExStart:GetWorksheetPictureWithFormat
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    //Valid image formats "tiff", @"jpeg", "png", "emf", "bmp" and "gif"
    [self.cellsApi getWorksheetPictureWithFormatWithCompletionBlock:fileName
                                                          sheetName:@"Sheet6"
                                                      pictureNumber:[NSNumber numberWithInt:0]
                                                             format:@"png"
                                                            storage:nil
                                                             folder:nil
                                                  completionHandler:^(NSURL *output, NSError *error) {
                                                      NSLog(@"%@", output);
                                                  }];
//ExEnd:GetWorksheetPictureWithFormat
}

- (void)getWorksheetPictures {
//ExStart:GetWorksheetPictures
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    [self.cellsApi getWorksheetPicturesWithCompletionBlock:fileName
                                                 sheetName:@"Sheet6"
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPPicturesResponse *output, NSError *error) {
                                             NSLog(@"%@", output);
                                         }];
//ExEnd:GetWorksheetPictures
}

- (void)postWorkSheetPicture {
//ExStart:PostWorkSheetPicture
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    NSString *imageName = @"aspose-cloud.png";
    [Utils uploadFile:fileName];
    
    ASPDrawingPicture *picture = [[ASPDrawingPicture alloc] init];
    picture.name = imageName;
    picture.autoShapeType = @"Picture";
    picture.placement = @"MoveAndSize";
    picture.upperLeftRow = [NSNumber numberWithInt:5];
    picture.top = [NSNumber numberWithInt:100];
    picture.upperLeftColumn = [NSNumber numberWithInt:5];
    picture.left = [NSNumber numberWithInt:100];
    picture.lowerRightRow = [NSNumber numberWithInt:9];
    picture.bottom = [NSNumber numberWithInt:0];
    picture.lowerRightColumn = [NSNumber numberWithInt:11];
    picture.right = [NSNumber numberWithInt:0];
    picture.width = [NSNumber numberWithInt:100];
    picture.height = [NSNumber numberWithInt:100];
    picture.X = [NSNumber numberWithInt:687];
    picture.Y = [NSNumber numberWithInt:100];
    picture.rotationAngle = [NSNumber numberWithFloat:0];
    picture.text = @"Profile";
    picture.textHorizontalAlignment = @"Left";
    picture.textHorizontalOverflow = @"Clip";
    picture.textOrientationType = @"NoRotation";
    picture.textVerticalOverflow = @"Clip";
    picture.textVerticalAlignment = @"Top";
    picture.isGroup = [NSNumber numberWithBool:NO];
    picture.isHidden = [NSNumber numberWithBool:NO];
    picture.isLockAspectRatio = [NSNumber numberWithBool:NO];
    picture.isLocked = [NSNumber numberWithBool:YES];
    picture.isPrintable = [NSNumber numberWithBool:YES];
    picture.isTextWrapped = [NSNumber numberWithBool:YES];
    picture.zOrderPosition = [NSNumber numberWithInt:2];
    
    [self.cellsApi postWorkSheetPictureWithCompletionBlock:fileName
                                                 sheetName:@"Sheet6"
                                              pictureIndex:[NSNumber numberWithInt:0]
                                                   picture:picture
                                                   storage:nil
                                                    folder:nil
                                         completionHandler:^(ASPPictureResponse *output, NSError *error) {
                                             NSLog(@"%@", output);
                                         }];
//ExEnd:PostWorkSheetPicture
}

- (void)putWorksheetAddPicture {
//ExStart:PutWorksheetAddPicture
    
    NSString *fileName = @"Sample_Test_Book.xls";
    [Utils uploadFile:fileName];
    
    NSString *imageName = @"aspose-cloud.png";
    [Utils uploadFile:fileName];
    
    [self.cellsApi putWorksheetAddPictureWithCompletionBlock:fileName
                                                   sheetName:@"Sheet6"
                                                 picturePath:imageName
                                                upperLeftRow:[NSNumber numberWithInt:5]
                                             upperLeftColumn:[NSNumber numberWithInt:5]
                                               lowerRightRow:[NSNumber numberWithInt:10]
                                            lowerRightColumn:[NSNumber numberWithInt:10]
                                                     storage:nil
                                                      folder:nil
                                           completionHandler:^(ASPPicturesResponse *output, NSError *error) {
                                                    NSLog(@"%@", output);
                                                }];
//ExEnd:PutWorksheetAddPicture
}

@end
