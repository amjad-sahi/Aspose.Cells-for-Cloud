#import "ASPName.h"

@implementation ASPName

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Comment": @"comment", @"WorksheetIndex": @"worksheetIndex", @"IsReferred": @"isReferred", @"IsVisible": @"isVisible", @"R1C1RefersTo": @"r1C1RefersTo", @"RefersTo": @"refersTo", @"Text": @"text", @"link": @"link" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"comment", @"worksheetIndex", @"isReferred", @"isVisible", @"r1C1RefersTo", @"refersTo", @"text", @"link"];

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
