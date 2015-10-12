#import "ASPPivotPivotField.h"

@implementation ASPPivotPivotField

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"AutoShowCount": @"autoShowCount", @"AutoShowField": @"autoShowField", @"AutoSortField": @"autoSortField", @"BaseField": @"baseField", @"BaseIndex": @"baseIndex", @"BaseItem": @"baseItem", @"BaseItemPosition": @"baseItemPosition", @"CurrentPageItem": @"currentPageItem", @"DataDisplayFormat": @"dataDisplayFormat", @"DisplayName": @"displayName", @"DragToColumn": @"dragToColumn", @"DragToData": @"dragToData", @"DragToHide": @"dragToHide", @"DragToPage": @"dragToPage", @"DragToRow": @"dragToRow", @"Function": @"function", @"InsertBlankRow": @"insertBlankRow", @"IsAscendShow": @"isAscendShow", @"IsAscendSort": @"isAscendSort", @"IsAutoShow": @"isAutoShow", @"IsAutoSort": @"isAutoSort", @"IsAutoSubtotals": @"isAutoSubtotals", @"IsCalculatedField": @"isCalculatedField", @"IsIncludeNewItemsInFilter": @"isIncludeNewItemsInFilter", @"IsInsertPageBreaksBetweenItems": @"isInsertPageBreaksBetweenItems", @"IsMultipleItemSelectionAllowed": @"isMultipleItemSelectionAllowed", @"IsRepeatItemLabels": @"isRepeatItemLabels", @"ItemCount": @"itemCount", @"Items": @"items", @"Name": @"name", @"Number": @"number", @"NumberFormat": @"numberFormat", @"OriginalItems": @"originalItems", @"PivotItems": @"pivotItems", @"Position": @"position", @"ShowAllItems": @"showAllItems", @"ShowCompact": @"showCompact", @"ShowInOutlineForm": @"showInOutlineForm", @"ShowSubtotalAtTop": @"showSubtotalAtTop" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"autoShowCount", @"autoShowField", @"autoSortField", @"baseField", @"baseIndex", @"baseItem", @"baseItemPosition", @"currentPageItem", @"dataDisplayFormat", @"displayName", @"dragToColumn", @"dragToData", @"dragToHide", @"dragToPage", @"dragToRow", @"function", @"insertBlankRow", @"isAscendShow", @"isAscendSort", @"isAutoShow", @"isAutoSort", @"isAutoSubtotals", @"isCalculatedField", @"isIncludeNewItemsInFilter", @"isInsertPageBreaksBetweenItems", @"isMultipleItemSelectionAllowed", @"isRepeatItemLabels", @"itemCount", @"items", @"name", @"number", @"numberFormat", @"originalItems", @"pivotItems", @"position", @"showAllItems", @"showCompact", @"showInOutlineForm", @"showSubtotalAtTop"];

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
