#import "ASPPivotPivotTable.h"

@implementation ASPPivotPivotTable

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"AltTextDescription": @"altTextDescription", @"AltTextTitle": @"altTextTitle", @"AutoFormatType": @"autoFormatType", @"BaseFields": @"baseFields", @"ColumnFields": @"columnFields", @"ColumnGrand": @"columnGrand", @"ColumnHeaderCaption": @"columnHeaderCaption", @"ColumnRange": @"columnRange", @"CustomListSort": @"customListSort", @"DataBodyRange": @"dataBodyRange", @"DataField": @"dataField", @"DataFields": @"dataFields", @"DataSource": @"dataSource", @"DisplayErrorString": @"displayErrorString", @"DisplayImmediateItems": @"displayImmediateItems", @"DisplayNullString": @"displayNullString", @"EnableDataValueEditing": @"enableDataValueEditing", @"EnableDrilldown": @"enableDrilldown", @"EnableFieldDialog": @"enableFieldDialog", @"EnableFieldList": @"enableFieldList", @"EnableWizard": @"enableWizard", @"ErrorString": @"errorString", @"FieldListSortAscending": @"fieldListSortAscending", @"GrandTotalName": @"grandTotalName", @"HasBlankRows": @"hasBlankRows", @"Indent": @"indent", @"IsAutoFormat": @"isAutoFormat", @"IsGridDropZones": @"isGridDropZones", @"IsMultipleFieldFilters": @"isMultipleFieldFilters", @"IsSelected": @"isSelected", @"ItemPrintTitles": @"itemPrintTitles", @"ManualUpdate": @"manualUpdate", @"MergeLabels": @"mergeLabels", @"MissingItemsLimit": @"missingItemsLimit", @"Name": @"name", @"NullString": @"nullString", @"PageFieldOrder": @"pageFieldOrder", @"PageFields": @"pageFields", @"PageFieldWrapCount": @"pageFieldWrapCount", @"PivotFilters": @"pivotFilters", @"PivotTableStyleName": @"pivotTableStyleName", @"PivotTableStyleType": @"pivotTableStyleType", @"PreserveFormatting": @"preserveFormatting", @"PrintDrill": @"printDrill", @"PrintTitles": @"printTitles", @"RefreshDataFlag": @"refreshDataFlag", @"RefreshDataOnOpeningFile": @"refreshDataOnOpeningFile", @"RowFields": @"rowFields", @"RowGrand": @"rowGrand", @"RowHeaderCaption": @"rowHeaderCaption", @"RowRange": @"rowRange", @"SaveData": @"saveData", @"ShowDataTips": @"showDataTips", @"ShowDrill": @"showDrill", @"ShowEmptyCol": @"showEmptyCol", @"ShowEmptyRow": @"showEmptyRow", @"ShowMemberPropertyTips": @"showMemberPropertyTips", @"ShowPivotStyleColumnHeader": @"showPivotStyleColumnHeader", @"ShowPivotStyleColumnStripes": @"showPivotStyleColumnStripes", @"ShowPivotStyleLastColumn": @"showPivotStyleLastColumn", @"ShowPivotStyleRowHeader": @"showPivotStyleRowHeader", @"ShowPivotStyleRowStripes": @"showPivotStyleRowStripes", @"ShowRowHeaderCaption": @"showRowHeaderCaption", @"ShowValuesRow": @"showValuesRow", @"SubtotalHiddenPageItems": @"subtotalHiddenPageItems", @"TableRange1": @"tableRange1", @"TableRange2": @"tableRange2", @"Tag": @"tag", @"link": @"link" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"altTextDescription", @"altTextTitle", @"autoFormatType", @"baseFields", @"columnFields", @"columnGrand", @"columnHeaderCaption", @"columnRange", @"customListSort", @"dataBodyRange", @"dataField", @"dataFields", @"dataSource", @"displayErrorString", @"displayImmediateItems", @"displayNullString", @"enableDataValueEditing", @"enableDrilldown", @"enableFieldDialog", @"enableFieldList", @"enableWizard", @"errorString", @"fieldListSortAscending", @"grandTotalName", @"hasBlankRows", @"indent", @"isAutoFormat", @"isGridDropZones", @"isMultipleFieldFilters", @"isSelected", @"itemPrintTitles", @"manualUpdate", @"mergeLabels", @"missingItemsLimit", @"name", @"nullString", @"pageFieldOrder", @"pageFields", @"pageFieldWrapCount", @"pivotFilters", @"pivotTableStyleName", @"pivotTableStyleType", @"preserveFormatting", @"printDrill", @"printTitles", @"refreshDataFlag", @"refreshDataOnOpeningFile", @"rowFields", @"rowGrand", @"rowHeaderCaption", @"rowRange", @"saveData", @"showDataTips", @"showDrill", @"showEmptyCol", @"showEmptyRow", @"showMemberPropertyTips", @"showPivotStyleColumnHeader", @"showPivotStyleColumnStripes", @"showPivotStyleLastColumn", @"showPivotStyleRowHeader", @"showPivotStyleRowStripes", @"showRowHeaderCaption", @"showValuesRow", @"subtotalHiddenPageItems", @"tableRange1", @"tableRange2", @"tag", @"link"];

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
