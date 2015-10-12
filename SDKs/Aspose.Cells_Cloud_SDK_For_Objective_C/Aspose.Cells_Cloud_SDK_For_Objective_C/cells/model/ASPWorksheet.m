#import "ASPWorksheet.h"

@implementation ASPWorksheet

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"Links": @"links", @"DisplayRightToLeft": @"displayRightToLeft", @"DisplayZeros": @"displayZeros", @"FirstVisibleColumn": @"firstVisibleColumn", @"FirstVisibleRow": @"firstVisibleRow", @"Name": @"name", @"Index": @"index", @"IsGridlinesVisible": @"isGridlinesVisible", @"IsOutlineShown": @"isOutlineShown", @"IsPageBreakPreview": @"isPageBreakPreview", @"IsVisible": @"isVisible", @"IsProtected": @"isProtected", @"IsRowColumnHeadersVisible": @"isRowColumnHeadersVisible", @"IsRulerVisible": @"isRulerVisible", @"IsSelected": @"isSelected", @"TabColor": @"tabColor", @"TransitionEntry": @"transitionEntry", @"TransitionEvaluation": @"transitionEvaluation", @"Type": @"type", @"ViewType": @"viewType", @"VisibilityType": @"visibilityType", @"Zoom": @"zoom", @"Cells": @"cells", @"Charts": @"charts", @"AutoShapes": @"autoShapes", @"OleObjects": @"oleObjects", @"Comments": @"comments", @"Pictures": @"pictures", @"MergedCells": @"mergedCells", @"Validations": @"validations", @"ConditionalFormattings": @"conditionalFormattings", @"Hyperlinks": @"hyperlinks" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"links", @"displayRightToLeft", @"displayZeros", @"firstVisibleColumn", @"firstVisibleRow", @"name", @"index", @"isGridlinesVisible", @"isOutlineShown", @"isPageBreakPreview", @"isVisible", @"isProtected", @"isRowColumnHeadersVisible", @"isRulerVisible", @"isSelected", @"tabColor", @"transitionEntry", @"transitionEvaluation", @"type", @"viewType", @"visibilityType", @"zoom", @"cells", @"charts", @"autoShapes", @"oleObjects", @"comments", @"pictures", @"mergedCells", @"validations", @"conditionalFormattings", @"hyperlinks"];

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
