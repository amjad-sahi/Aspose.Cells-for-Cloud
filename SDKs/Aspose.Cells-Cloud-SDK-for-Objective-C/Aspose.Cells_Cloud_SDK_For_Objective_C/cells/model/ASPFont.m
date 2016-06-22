#import "ASPFont.h"

@implementation ASPFont

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Color": @"color", @"DoubleSize": @"doubleSize", @"IsBold": @"isBold", @"IsItalic": @"isItalic", @"IsStrikeout": @"isStrikeout", @"IsSubscript": @"isSubscript", @"IsSuperscript": @"isSuperscript", @"Name": @"name", @"Size": @"size", @"Underline": @"underline" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"color", @"doubleSize", @"isBold", @"isItalic", @"isStrikeout", @"isSubscript", @"isSuperscript", @"name", @"size", @"underline"];

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
