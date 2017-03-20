#import "ASPStyle.h"

@implementation ASPStyle

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Font": @"font", @"Name": @"name", @"CultureCustom": @"cultureCustom", @"Custom": @"custom", @"BackgroundColor": @"backgroundColor", @"ForegroundColor": @"foregroundColor", @"IsFormulaHidden": @"isFormulaHidden", @"IsDateTime": @"isDateTime", @"IsTextWrapped": @"isTextWrapped", @"IsGradient": @"isGradient", @"IsLocked": @"isLocked", @"IsPercent": @"isPercent", @"ShrinkToFit": @"shrinkToFit", @"IndentLevel": @"indentLevel", @"Number": @"number", @"RotationAngle": @"rotationAngle", @"Pattern": @"pattern", @"TextDirection": @"textDirection", @"VerticalAlignment": @"verticalAlignment", @"HorizontalAlignment": @"horizontalAlignment", @"BorderCollection": @"borderCollection", @"link": @"link" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"font", @"name", @"cultureCustom", @"custom", @"backgroundColor", @"foregroundColor", @"isFormulaHidden", @"isDateTime", @"isTextWrapped", @"isGradient", @"isLocked", @"isPercent", @"shrinkToFit", @"indentLevel", @"number", @"rotationAngle", @"pattern", @"textDirection", @"verticalAlignment", @"horizontalAlignment", @"borderCollection", @"link"];

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
