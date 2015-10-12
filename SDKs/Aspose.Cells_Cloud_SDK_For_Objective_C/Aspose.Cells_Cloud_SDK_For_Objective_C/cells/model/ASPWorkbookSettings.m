#import "ASPWorkbookSettings.h"

@implementation ASPWorkbookSettings

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"AutoCompressPictures": @"autoCompressPictures", @"AutoRecover": @"autoRecover", @"BuildVersion": @"buildVersion", @"CalcMode": @"calcMode", @"CalcStackSize": @"calcStackSize", @"CalculationId": @"calculationId", @"CheckComptiliblity": @"checkComptiliblity", @"CheckExcelRestriction": @"checkExcelRestriction", @"CrashSave": @"crashSave", @"CreateCalcChain": @"createCalcChain", @"DataExtractLoad": @"dataExtractLoad", @"Date1904": @"date1904", @"DisplayDrawingObjects": @"displayDrawingObjects", @"EnableMacros": @"enableMacros", @"FirstVisibleTab": @"firstVisibleTab", @"HidePivotFieldList": @"hidePivotFieldList", @"IsDefaultEncrypted": @"isDefaultEncrypted", @"IsHidden": @"isHidden", @"IsHScrollBarVisible": @"isHScrollBarVisible", @"IsMinimized": @"isMinimized", @"IsVScrollBarVisible": @"isVScrollBarVisible", @"Iteration": @"iteration", @"LanguageCode": @"languageCode", @"MaxChange": @"maxChange", @"MaxIteration": @"maxIteration", @"MemorySetting": @"memorySetting", @"NumberDecimalSeparator": @"numberDecimalSeparator", @"NumberGroupSeparator": @"numberGroupSeparator", @"ParsingFormulaOnOpen": @"parsingFormulaOnOpen", @"PrecisionAsDisplayed": @"precisionAsDisplayed", @"RecalculateBeforeSave": @"recalculateBeforeSave", @"ReCalculateOnOpen": @"reCalculateOnOpen", @"RecommendReadOnly": @"recommendReadOnly", @"Region": @"region", @"RemovePersonalInformation": @"removePersonalInformation", @"RepairLoad": @"repairLoad", @"Shared": @"shared", @"SheetTabBarWidth": @"sheetTabBarWidth", @"ShowTabs": @"showTabs", @"UpdateAdjacentCellsBorder": @"updateAdjacentCellsBorder", @"UpdateLinksType": @"updateLinksType", @"WindowHeight": @"windowHeight", @"WindowLeft": @"windowLeft", @"WindowTop": @"windowTop", @"WindowWidth": @"windowWidth" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"autoCompressPictures", @"autoRecover", @"buildVersion", @"calcMode", @"calcStackSize", @"calculationId", @"checkComptiliblity", @"checkExcelRestriction", @"crashSave", @"createCalcChain", @"dataExtractLoad", @"date1904", @"displayDrawingObjects", @"enableMacros", @"firstVisibleTab", @"hidePivotFieldList", @"isDefaultEncrypted", @"isHidden", @"isHScrollBarVisible", @"isMinimized", @"isVScrollBarVisible", @"iteration", @"languageCode", @"maxChange", @"maxIteration", @"memorySetting", @"numberDecimalSeparator", @"numberGroupSeparator", @"parsingFormulaOnOpen", @"precisionAsDisplayed", @"recalculateBeforeSave", @"reCalculateOnOpen", @"recommendReadOnly", @"region", @"removePersonalInformation", @"repairLoad", @"shared", @"sheetTabBarWidth", @"showTabs", @"updateAdjacentCellsBorder", @"updateLinksType", @"windowHeight", @"windowLeft", @"windowTop", @"windowWidth"];

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
