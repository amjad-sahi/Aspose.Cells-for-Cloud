#import "ASPFilterColumn.h"

@implementation ASPFilterColumn

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"FieldIndex": @"fieldIndex", @"FilterType": @"filterType", @"MultipleFilters": @"multipleFilters", @"ColorFilter": @"colorFilter", @"CustomFilters": @"customFilters", @"DynamicFilter": @"dynamicFilter", @"IconFilter": @"iconFilter", @"Top10Filter": @"top10Filter", @"Visibledropdown": @"visibledropdown" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"fieldIndex", @"filterType", @"multipleFilters", @"colorFilter", @"customFilters", @"dynamicFilter", @"iconFilter", @"top10Filter", @"visibledropdown"];

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
