//
//  DocumentProperty.h
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPCellsApi;

@interface DocumentProperty : NSObject

@property(nonatomic, strong) ASPCellsApi *cellsApi;

- (void)deleteDocumentProperties;
- (void)deleteDocumentProperty;
- (void)getDocumentProperties;
- (void)getDocumentProperty;
- (void)putDocumentProperty;

@end
