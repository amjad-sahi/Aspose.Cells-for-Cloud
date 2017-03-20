#import "ASPChartsTitle.h"

@implementation ASPChartsTitle

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"IsVisible": @"isVisible", @"LinkedSource": @"linkedSource", @"RotationAngle": @"rotationAngle", @"Text": @"text", @"TextDirection": @"textDirection", @"TextHorizontalAlignment": @"textHorizontalAlignment", @"TextVerticalAlignment": @"textVerticalAlignment", @"Area": @"area", @"AutoScaleFont": @"autoScaleFont", @"BackgroundMode": @"backgroundMode", @"Border": @"border", @"Font": @"font", @"IsAutomaticSize": @"isAutomaticSize", @"IsInnerMode": @"isInnerMode", @"Shadow": @"shadow", @"ShapeProperties": @"shapeProperties", @"Width": @"width", @"Height": @"height", @"X": @"X", @"Y": @"Y", @"link": @"link" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"isVisible", @"linkedSource", @"rotationAngle", @"text", @"textDirection", @"textHorizontalAlignment", @"textVerticalAlignment", @"area", @"autoScaleFont", @"backgroundMode", @"border", @"font", @"isAutomaticSize", @"isInnerMode", @"shadow", @"shapeProperties", @"width", @"height", @"X", @"Y", @"link"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
