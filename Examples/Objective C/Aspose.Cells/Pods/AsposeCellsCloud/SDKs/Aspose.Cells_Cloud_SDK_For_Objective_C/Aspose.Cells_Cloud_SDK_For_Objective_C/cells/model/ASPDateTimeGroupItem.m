#import "ASPDateTimeGroupItem.h"

@implementation ASPDateTimeGroupItem

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"DateTimeGroupingType": @"dateTimeGroupingType", @"Day": @"day", @"Hour": @"hour", @"Minute": @"minute", @"Month": @"month", @"Second": @"second", @"Year": @"year" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"dateTimeGroupingType", @"day", @"hour", @"minute", @"month", @"second", @"year"];

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
