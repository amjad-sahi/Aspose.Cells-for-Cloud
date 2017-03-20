#import "ASPProtectSheetParameter.h"

@implementation ASPProtectSheetParameter

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"ProtectionType": @"protectionType", @"Password": @"password", @"AllowEditArea": @"allowEditArea", @"AllowDeletingColumn": @"allowDeletingColumn", @"AllowDeletingRow": @"allowDeletingRow", @"AllowFiltering": @"allowFiltering", @"AllowFormattingCell": @"allowFormattingCell", @"AllowFormattingColumn": @"allowFormattingColumn", @"AllowFormattingRow": @"allowFormattingRow", @"AllowInsertingColumn": @"allowInsertingColumn", @"AllowInsertingHyperlink": @"allowInsertingHyperlink", @"AllowInsertingRow": @"allowInsertingRow", @"AllowSelectingLockedCell": @"allowSelectingLockedCell", @"AllowSelectingUnlockedCell": @"allowSelectingUnlockedCell", @"AllowSorting": @"allowSorting", @"AllowUsingPivotTable": @"allowUsingPivotTable" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"protectionType", @"password", @"allowEditArea", @"allowDeletingColumn", @"allowDeletingRow", @"allowFiltering", @"allowFormattingCell", @"allowFormattingColumn", @"allowFormattingRow", @"allowInsertingColumn", @"allowInsertingHyperlink", @"allowInsertingRow", @"allowSelectingLockedCell", @"allowSelectingUnlockedCell", @"allowSorting", @"allowUsingPivotTable"];

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
