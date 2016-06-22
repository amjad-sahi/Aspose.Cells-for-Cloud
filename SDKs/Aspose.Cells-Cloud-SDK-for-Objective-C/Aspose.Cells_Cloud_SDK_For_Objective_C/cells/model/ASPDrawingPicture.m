#import "ASPDrawingPicture.h"

@implementation ASPDrawingPicture

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"BorderLineColor": @"borderLineColor", @"BorderWeight": @"borderWeight", @"OriginalHeight": @"originalHeight", @"OriginalWidth": @"originalWidth", @"ImageFormat": @"imageFormat", @"SourceFullName": @"sourceFullName", @"Name": @"name", @"MsoDrawingType": @"msoDrawingType", @"AutoShapeType": @"autoShapeType", @"Placement": @"placement", @"UpperLeftRow": @"upperLeftRow", @"Top": @"top", @"UpperLeftColumn": @"upperLeftColumn", @"Left": @"left", @"LowerRightRow": @"lowerRightRow", @"Bottom": @"bottom", @"LowerRightColumn": @"lowerRightColumn", @"Right": @"right", @"Width": @"width", @"Height": @"height", @"X": @"X", @"Y": @"Y", @"RotationAngle": @"rotationAngle", @"HtmlText": @"htmlText", @"Text": @"text", @"AlternativeText": @"alternativeText", @"TextHorizontalAlignment": @"textHorizontalAlignment", @"TextHorizontalOverflow": @"textHorizontalOverflow", @"TextOrientationType": @"textOrientationType", @"TextVerticalAlignment": @"textVerticalAlignment", @"TextVerticalOverflow": @"textVerticalOverflow", @"IsGroup": @"isGroup", @"IsHidden": @"isHidden", @"IsLockAspectRatio": @"isLockAspectRatio", @"IsLocked": @"isLocked", @"IsPrintable": @"isPrintable", @"IsTextWrapped": @"isTextWrapped", @"IsWordArt": @"isWordArt", @"LinkedCell": @"linkedCell", @"ZOrderPosition": @"zOrderPosition", @"link": @"link" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"borderLineColor", @"borderWeight", @"originalHeight", @"originalWidth", @"imageFormat", @"sourceFullName", @"name", @"msoDrawingType", @"autoShapeType", @"placement", @"upperLeftRow", @"top", @"upperLeftColumn", @"left", @"lowerRightRow", @"bottom", @"lowerRightColumn", @"right", @"width", @"height", @"X", @"Y", @"rotationAngle", @"htmlText", @"text", @"alternativeText", @"textHorizontalAlignment", @"textHorizontalOverflow", @"textOrientationType", @"textVerticalAlignment", @"textVerticalOverflow", @"isGroup", @"isHidden", @"isLockAspectRatio", @"isLocked", @"isPrintable", @"isTextWrapped", @"isWordArt", @"linkedCell", @"zOrderPosition", @"link"];

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
