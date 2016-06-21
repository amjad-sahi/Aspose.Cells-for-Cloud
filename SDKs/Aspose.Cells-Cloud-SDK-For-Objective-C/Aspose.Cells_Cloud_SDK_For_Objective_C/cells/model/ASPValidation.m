#import "ASPValidation.h"

@implementation ASPValidation

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"AlertStyle": @"alertStyle", @"AreaList": @"areaList", @"ErrorMessage": @"errorMessage", @"ErrorTitle": @"errorTitle", @"Formula1": @"formula1", @"Formula2": @"formula2", @"IgnoreBlank": @"ignoreBlank", @"InCellDropDown": @"inCellDropDown", @"InputMessage": @"inputMessage", @"InputTitle": @"inputTitle", @"Operator": @"operator", @"ShowError": @"showError", @"ShowInput": @"showInput", @"Type": @"type", @"Value1": @"value1", @"Value2": @"value2", @"link": @"link" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"alertStyle", @"areaList", @"errorMessage", @"errorTitle", @"formula1", @"formula2", @"ignoreBlank", @"inCellDropDown", @"inputMessage", @"inputTitle", @"operator", @"showError", @"showInput", @"type", @"value1", @"value2", @"link"];

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
