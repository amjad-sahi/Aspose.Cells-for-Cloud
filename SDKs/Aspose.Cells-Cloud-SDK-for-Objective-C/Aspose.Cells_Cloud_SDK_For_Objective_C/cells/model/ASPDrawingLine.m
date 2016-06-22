#import "ASPDrawingLine.h"

@implementation ASPDrawingLine

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"BeginArrowLength": @"beginArrowLength", @"BeginArrowWidth": @"beginArrowWidth", @"BeginType": @"beginType", @"CapType": @"capType", @"Color": @"color", @"CompoundType": @"compoundType", @"DashType": @"dashType", @"EndArrowLength": @"endArrowLength", @"EndArrowWidth": @"endArrowWidth", @"EndType": @"endType", @"GradientFill": @"gradientFill", @"IsAuto": @"isAuto", @"IsAutomaticColor": @"isAutomaticColor", @"IsVisible": @"isVisible", @"JoinType": @"joinType", @"Style": @"style", @"Transparency": @"transparency", @"Weight": @"weight", @"WeightPt": @"weightPt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"beginArrowLength", @"beginArrowWidth", @"beginType", @"capType", @"color", @"compoundType", @"dashType", @"endArrowLength", @"endArrowWidth", @"endType", @"gradientFill", @"isAuto", @"isAutomaticColor", @"isVisible", @"joinType", @"style", @"transparency", @"weight", @"weightPt"];

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
