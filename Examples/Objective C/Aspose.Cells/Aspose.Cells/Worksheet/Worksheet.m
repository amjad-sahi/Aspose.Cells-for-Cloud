//
//  Worksheet.m
//  Aspose.Cells
//
//  Created by Muhammad Sohail Ismail on 17/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "Worksheet.h"
#import "ASPCellsApi.h"
#import "Utils.h"

@implementation Worksheet

- (id)init {
    self = [super init];
    
    self.cellsApi = [[ASPCellsApi alloc] init];
    
    return self;
}

@end
