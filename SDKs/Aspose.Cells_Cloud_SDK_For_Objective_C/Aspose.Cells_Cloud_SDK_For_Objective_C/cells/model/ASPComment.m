#import "ASPComment.h"

@implementation ASPComment

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"CellName": @"cellName", @"Author": @"author", @"HtmlNote": @"htmlNote", @"Note": @"note", @"AutoSize": @"autoSize", @"IsVisible": @"isVisible", @"Width": @"width", @"Height": @"height", @"TextHorizontalAlignment": @"textHorizontalAlignment", @"TextOrientationType": @"textOrientationType", @"TextVerticalAlignment": @"textVerticalAlignment", @"link": @"link" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"cellName", @"author", @"htmlNote", @"note", @"autoSize", @"isVisible", @"width", @"height", @"textHorizontalAlignment", @"textOrientationType", @"textVerticalAlignment", @"link"];

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
