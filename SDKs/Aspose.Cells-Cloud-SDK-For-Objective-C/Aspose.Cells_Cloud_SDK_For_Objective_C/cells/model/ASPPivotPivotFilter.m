#import "ASPPivotPivotFilter.h"

@implementation ASPPivotPivotFilter

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"AutoFilter": @"autoFilter", @"EvaluationOrder": @"evaluationOrder", @"FieldIndex": @"fieldIndex", @"FilterType": @"filterType", @"MeasureFldIndex": @"measureFldIndex", @"MemberPropertyFieldIndex": @"memberPropertyFieldIndex", @"Name": @"name", @"Value1": @"value1", @"Value2": @"value2" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"autoFilter", @"evaluationOrder", @"fieldIndex", @"filterType", @"measureFldIndex", @"memberPropertyFieldIndex", @"name", @"value1", @"value2"];

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
