#import <Foundation/Foundation.h>
#import "ASPObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "ASPDrawingSolidFill.h"
#import "ASPDrawingTextureFill.h"
#import "ASPDrawingPatternFill.h"
#import "ASPDrawingGradientFill.h"


@protocol ASPDrawingFillFormat
@end

@interface ASPDrawingFillFormat : ASPObject


@property(nonatomic) NSString* type;

@property(nonatomic) ASPDrawingSolidFill* solidFill;

@property(nonatomic) ASPDrawingPatternFill* patternFill;

@property(nonatomic) ASPDrawingTextureFill* textureFill;

@property(nonatomic) ASPDrawingGradientFill* gradientFill;

@property(nonatomic) NSString* imageData;

@end
