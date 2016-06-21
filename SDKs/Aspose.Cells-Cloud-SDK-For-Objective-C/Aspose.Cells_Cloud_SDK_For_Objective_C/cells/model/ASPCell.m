#import "ASPCell.h"

@implementation ASPCell

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Name": @"name", @"Row": @"row", @"Column": @"column", @"Value": @"value", @"Type": @"type", @"Formula": @"formula", @"IsFormula": @"isFormula", @"IsMerged": @"isMerged", @"IsArrayHeader": @"isArrayHeader", @"IsInArray": @"isInArray", @"IsErrorValue": @"isErrorValue", @"IsInTable": @"isInTable", @"IsStyleSet": @"isStyleSet", @"HtmlString": @"htmlString", @"Style": @"style", @"Worksheet": @"worksheet", @"link": @"link" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"name", @"row", @"column", @"value", @"type", @"formula", @"isFormula", @"isMerged", @"isArrayHeader", @"isInArray", @"isErrorValue", @"isInTable", @"isStyleSet", @"htmlString", @"style", @"worksheet", @"link"];

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
