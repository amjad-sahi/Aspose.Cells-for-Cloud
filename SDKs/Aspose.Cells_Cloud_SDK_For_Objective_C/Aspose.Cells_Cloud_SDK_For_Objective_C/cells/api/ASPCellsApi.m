#import "ASPCellsApi.h"
#import "ASPQueryParamCollection.h"
#import "ASPWorkbookResponse.h"
#import "ASPSaveResponse.h"
#import "ASPSavingSaveOptions.h"
#import "ASPBaseResponse.h"
#import "ASPAutoFitterOptions.h"
#import "ASPStyleResponse.h"
#import "ASPCellsDocumentPropertiesResponse.h"
#import "ASPCellsDocumentPropertyResponse.h"
#import "ASPCellsDocumentProperty.h"
#import "ASPWorkbookEncryptionRequest.h"
#import "ASPTextItemsResponse.h"
#import "ASPImportDataImportOption.h"
#import "ASPNamesResponse.h"
#import "ASPNameResponse.h"
#import "ASPWorkbookProtectionRequest.h"
#import "ASPWorkbookReplaceResponse.h"
#import "ASPWorkbookSettingsResponse.h"
#import "ASPWorkbookSettings.h"
#import "ASPSplitResultResponse.h"
#import "ASPWorksheetsResponse.h"
#import "ASPWorksheetResponse.h"
#import "ASPWorksheet.h"
#import "ASPAutoShapesResponse.h"
#import "ASPAutoShapeResponse.h"
#import "ASPCellsResponse.h"
#import "ASPColumnsResponse.h"
#import "ASPColumnResponse.h"
#import "ASPStyle.h"
#import "ASPRowsResponse.h"
#import "ASPRowResponse.h"
#import "ASPCellResponse.h"
#import "ASPChartsResponse.h"
#import "ASPChartAreaResponse.h"
#import "ASPLineResponse.h"
#import "ASPFillFormatResponse.h"
#import "ASPLegendResponse.h"
#import "ASPChartsLegend.h"
#import "ASPTitleResponse.h"
#import "ASPChartsTitle.h"
#import "ASPSystemObject.h"
#import "ASPCommentsResponse.h"
#import "ASPCommentResponse.h"
#import "ASPComment.h"
#import "ASPSingleValueResponse.h"
#import "ASPHyperlinksResponse.h"
#import "ASPHyperlinkResponse.h"
#import "ASPHyperlink.h"
#import "ASPMergedCellsResponse.h"
#import "ASPMergedCellResponse.h"
#import "ASPOleObjectsResponse.h"
#import "ASPDrawingOleObject.h"
#import "ASPOleObjectResponse.h"
#import "ASPPicturesResponse.h"
#import "ASPPictureResponse.h"
#import "ASPDrawingPicture.h"
#import "ASPBarcodeResponseList.h"
#import "ASPPivotTablesResponse.h"
#import "ASPPivotTableResponse.h"
#import "ASPCreatePivotTableRequest.h"
#import "ASPPivotTableFieldRequest.h"
#import "ASPPivotFieldResponse.h"
#import "ASPWorksheetMovingRequest.h"
#import "ASPProtectSheetParameter.h"
#import "ASPWorksheetReplaceResponse.h"
#import "ASPDataSorter.h"
#import "ASPValidationsResponse.h"
#import "ASPValidationResponse.h"
#import "ASPPasswordRequest.h"


@interface ASPCellsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation ASPCellsApi

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        ASPConfiguration *config = [ASPConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[ASPApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(ASPApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(ASPCellsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static ASPCellsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[ASPCellsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [ASPApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Convert workbook from request content to some format.
/// 
///  @param file 
///
///  @param format The format to convert.
///
///  @param password The workbook password.
///
///  @param outPath Path to save result
///
///  @returns NSURL*
///
-(NSNumber*) putConvertWorkBookWithCompletionBlock: (NSURL*) file
         format: (NSString*) format
         password: (NSString*) password
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `putConvertWorkBook`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/convert"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(password != nil) {
        
        queryParams[@"password"] = password;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"multipart/form-data"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}

///
/// Convert Excel Workbook to Different File Formats.
///
///  @param name The document name.
///
///  @param format Convert the document to this format.
///
///  @param outPath Save converted file with this name.
///
///  @param password The document password.
///
///  @param isAutoFit Set document rows to be autofit.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPWorkbookResponse*
///
-(NSNumber*) getWorkBookWithFormatWithCompletionBlock: (NSString*) name
                                               format: (NSString*) format
                                              outPath: (NSString*) outPath
                                             password: (NSString*) password
                                            isAutoFit: (NSNumber*) isAutoFit
                                              storage: (NSString*) storage
                                               folder: (NSString*) folder

                                    completionHandler: (void (^)(ASPWorkbookResponse* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkBookWithFormat`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getWorkBookWithFormat`"];
    }
    
    // verify the required parameter 'outPath' is set
    if (outPath == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `outPath` when calling `getWorkBookWithFormat`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(password != nil) {
        
        queryParams[@"password"] = password;
    }
    if(isAutoFit != nil) {
        
        queryParams[@"isAutoFit"] = isAutoFit;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorkbookResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((ASPWorkbookResponse*)data, error);
                                      }
            ];
}



///
/// Read workbook info or export.
/// 
///  @param name The document name.
///
///  @param password The document password.
///
///  @param isAutoFit Set document rows to be autofit.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPWorkbookResponse*
///
-(NSNumber*) getWorkBookWithCompletionBlock: (NSString*) name
         password: (NSString*) password
         isAutoFit: (NSNumber*) isAutoFit
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorkbookResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkBook`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(password != nil) {
        
        queryParams[@"password"] = password;
    }
    if(isAutoFit != nil) {
        
        queryParams[@"isAutoFit"] = isAutoFit;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorkbookResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorkbookResponse*)data, error);
              }
          ];
}

///
/// Create new workbook using different methods.
/// 
///  @param name The new document name.
///
///  @param templateFile The template file, if the data not provided default workbook is created.
///
///  @param dataFile Smart marker data file, if the data not provided the request content is checked for the data.
///
///  @param storage The document storage.
///
///  @param folder The new document folder.
///
///  @returns ASPWorkbookResponse*
///
-(NSNumber*) putWorkbookCreateWithCompletionBlock: (NSString*) name
         templateFile: (NSString*) templateFile
         dataFile: (NSString*) dataFile
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorkbookResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorkbookCreate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(templateFile != nil) {
        
        queryParams[@"templateFile"] = templateFile;
    }
    if(dataFile != nil) {
        
        queryParams[@"dataFile"] = dataFile;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorkbookResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorkbookResponse*)data, error);
              }
          ];
}

///
/// Convert document and save result to storage.
/// 
///  @param name The document name.
///
///  @param saveOptions Save options.
///
///  @param newfilename The new file name.
///
///  @param isAutoFitRows Autofit rows.
///
///  @param isAutoFitColumns Autofit columns.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPSaveResponse*
///
-(NSNumber*) postDocumentSaveAsWithCompletionBlock: (NSString*) name
         saveOptions: (ASPSavingSaveOptions*) saveOptions
         newfilename: (NSString*) newfilename
         isAutoFitRows: (NSNumber*) isAutoFitRows
         isAutoFitColumns: (NSNumber*) isAutoFitColumns
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPSaveResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postDocumentSaveAs`"];
    }
    
    // verify the required parameter 'saveOptions' is set
    if (saveOptions == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `saveOptions` when calling `postDocumentSaveAs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/SaveAs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(newfilename != nil) {
        
        queryParams[@"newfilename"] = newfilename;
    }
    if(isAutoFitRows != nil) {
        
        queryParams[@"isAutoFitRows"] = isAutoFitRows;
    }
    if(isAutoFitColumns != nil) {
        
        queryParams[@"isAutoFitColumns"] = isAutoFitColumns;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = saveOptions;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPSaveResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPSaveResponse*)data, error);
              }
          ];
}

///
/// Autofit workbook rows.
/// 
///  @param name Document name.
///
///  @param autoFitterOptions Auto Fitter Options.
///
///  @param startRow Start row.
///
///  @param endRow End row.
///
///  @param onlyAuto Only auto.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postAutofitWorkbookRowsWithCompletionBlock: (NSString*) name
         autoFitterOptions: (ASPAutoFitterOptions*) autoFitterOptions
         startRow: (NSNumber*) startRow
         endRow: (NSNumber*) endRow
         onlyAuto: (NSNumber*) onlyAuto
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postAutofitWorkbookRows`"];
    }
    
    // verify the required parameter 'autoFitterOptions' is set
    if (autoFitterOptions == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `autoFitterOptions` when calling `postAutofitWorkbookRows`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/autofitrows"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startRow != nil) {
        
        queryParams[@"startRow"] = startRow;
    }
    if(endRow != nil) {
        
        queryParams[@"endRow"] = endRow;
    }
    if(onlyAuto != nil) {
        
        queryParams[@"onlyAuto"] = onlyAuto;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = autoFitterOptions;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Calculate all formulas in workbook.
/// 
///  @param name Document name.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postWorkbookCalculateFormulaWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkbookCalculateFormula`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/calculateformula"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read workbook default style info.
/// 
///  @param name The workbook name.
///
///  @param storage The document storage.
///
///  @param folder The document's folder.
///
///  @returns ASPStyleResponse*
///
-(NSNumber*) getWorkBookDefaultStyleWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPStyleResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkBookDefaultStyle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/defaultstyle"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPStyleResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPStyleResponse*)data, error);
              }
          ];
}

///
/// Read document properties.
/// 
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCellsDocumentPropertiesResponse*
///
-(NSNumber*) getDocumentPropertiesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCellsDocumentPropertiesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentProperties`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/documentproperties"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCellsDocumentPropertiesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCellsDocumentPropertiesResponse*)data, error);
              }
          ];
}

///
/// Delete all custom document properties and clean built-in ones.
/// 
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCellsDocumentPropertiesResponse*
///
-(NSNumber*) deleteDocumentPropertiesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCellsDocumentPropertiesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteDocumentProperties`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/documentproperties"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCellsDocumentPropertiesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCellsDocumentPropertiesResponse*)data, error);
              }
          ];
}

///
/// Read document property by name.
/// 
///  @param name The document name.
///
///  @param propertyName The property name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCellsDocumentPropertyResponse*
///
-(NSNumber*) getDocumentPropertyWithCompletionBlock: (NSString*) name
         propertyName: (NSString*) propertyName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCellsDocumentPropertyResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getDocumentProperty`"];
    }
    
    // verify the required parameter 'propertyName' is set
    if (propertyName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `propertyName` when calling `getDocumentProperty`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/documentproperties/{propertyName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (propertyName != nil) {
        pathParams[@"propertyName"] = propertyName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCellsDocumentPropertyResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCellsDocumentPropertyResponse*)data, error);
              }
          ];
}

///
/// Set/create document property.
/// 
///  @param name The document name.
///
///  @param propertyName The property name.
///
///  @param _property {CellsDocumentProperty} with new property value.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCellsDocumentPropertyResponse*
///
-(NSNumber*) putDocumentPropertyWithCompletionBlock: (NSString*) name
         propertyName: (NSString*) propertyName
         _property: (ASPCellsDocumentProperty*) _property
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCellsDocumentPropertyResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putDocumentProperty`"];
    }
    
    // verify the required parameter 'propertyName' is set
    if (propertyName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `propertyName` when calling `putDocumentProperty`"];
    }
    
    // verify the required parameter '_property' is set
    if (_property == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_property` when calling `putDocumentProperty`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/documentproperties/{propertyName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (propertyName != nil) {
        pathParams[@"propertyName"] = propertyName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = _property;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCellsDocumentPropertyResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCellsDocumentPropertyResponse*)data, error);
              }
          ];
}

///
/// Delete document property.
/// 
///  @param name The document name.
///
///  @param propertyName The property name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCellsDocumentPropertiesResponse*
///
-(NSNumber*) deleteDocumentPropertyWithCompletionBlock: (NSString*) name
         propertyName: (NSString*) propertyName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCellsDocumentPropertiesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteDocumentProperty`"];
    }
    
    // verify the required parameter 'propertyName' is set
    if (propertyName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `propertyName` when calling `deleteDocumentProperty`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/documentproperties/{propertyName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (propertyName != nil) {
        pathParams[@"propertyName"] = propertyName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCellsDocumentPropertiesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCellsDocumentPropertiesResponse*)data, error);
              }
          ];
}

///
/// Encrypt document.
/// 
///  @param name The document name.
///
///  @param encryption Encryption parameters.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postEncryptDocumentWithCompletionBlock: (NSString*) name
         encryption: (ASPWorkbookEncryptionRequest*) encryption
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postEncryptDocument`"];
    }
    
    // verify the required parameter 'encryption' is set
    if (encryption == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `encryption` when calling `postEncryptDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/encryption"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = encryption;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Decrypt document.
/// 
///  @param name The document name.
///
///  @param encryption Encryption settings, only password can be specified.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteDecryptDocumentWithCompletionBlock: (NSString*) name
         encryption: (ASPWorkbookEncryptionRequest*) encryption
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteDecryptDocument`"];
    }
    
    // verify the required parameter 'encryption' is set
    if (encryption == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `encryption` when calling `deleteDecryptDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/encryption"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = encryption;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Search text.
/// 
///  @param name Document name.
///
///  @param text Text sample.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPTextItemsResponse*
///
-(NSNumber*) postWorkbooksTextSearchWithCompletionBlock: (NSString*) name
         text: (NSString*) text
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkbooksTextSearch`"];
    }
    
    // verify the required parameter 'text' is set
    if (text == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `text` when calling `postWorkbooksTextSearch`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/findText"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(text != nil) {
        
        queryParams[@"text"] = text;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextItemsResponse*)data, error);
              }
          ];
}

///
/// Import data to workbook.
/// 
///  @param name The workbook name.
///
///  @param importOption The import option.
///
///  @param storage The workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postImportDataWithCompletionBlock: (NSString*) name
         importOption: (ASPImportDataImportOption*) importOption
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postImportData`"];
    }
    
    // verify the required parameter 'importOption' is set
    if (importOption == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `importOption` when calling `postImportData`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/importdata"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = importOption;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Merge workbooks.
/// 
///  @param name Workbook name.
///
///  @param mergeWith The workbook to merge with.
///
///  @param storage The document storage.
///
///  @param folder Source workbook folder.
///
///  @returns ASPWorkbookResponse*
///
-(NSNumber*) postWorkbooksMergeWithCompletionBlock: (NSString*) name
         mergeWith: (NSString*) mergeWith
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorkbookResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkbooksMerge`"];
    }
    
    // verify the required parameter 'mergeWith' is set
    if (mergeWith == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `mergeWith` when calling `postWorkbooksMerge`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/merge"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(mergeWith != nil) {
        
        queryParams[@"mergeWith"] = mergeWith;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorkbookResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorkbookResponse*)data, error);
              }
          ];
}

///
/// Read workbook's names.
/// 
///  @param name The workbook name.
///
///  @param storage The document storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPNamesResponse*
///
-(NSNumber*) getWorkBookNamesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPNamesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkBookNames`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/names"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPNamesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPNamesResponse*)data, error);
              }
          ];
}

///
/// Read workbook's name.
/// 
///  @param name The workbook name.
///
///  @param nameName The name.
///
///  @param storage The document storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPNameResponse*
///
-(NSNumber*) getWorkBookNameWithCompletionBlock: (NSString*) name
         nameName: (NSString*) nameName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPNameResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkBookName`"];
    }
    
    // verify the required parameter 'nameName' is set
    if (nameName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nameName` when calling `getWorkBookName`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/names/{nameName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (nameName != nil) {
        pathParams[@"nameName"] = nameName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPNameResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPNameResponse*)data, error);
              }
          ];
}

///
/// Protect document.
/// 
///  @param name The document name.
///
///  @param protection The protection settings.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postProtectDocumentWithCompletionBlock: (NSString*) name
         protection: (ASPWorkbookProtectionRequest*) protection
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postProtectDocument`"];
    }
    
    // verify the required parameter 'protection' is set
    if (protection == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `protection` when calling `postProtectDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/protection"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = protection;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Unprotect document.
/// 
///  @param name The document name.
///
///  @param protection Protection settings, only password can be specified.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteUnProtectDocumentWithCompletionBlock: (NSString*) name
         protection: (ASPWorkbookProtectionRequest*) protection
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteUnProtectDocument`"];
    }
    
    // verify the required parameter 'protection' is set
    if (protection == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `protection` when calling `deleteUnProtectDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/protection"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = protection;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Replace text.
/// 
///  @param name Document name.
///
///  @param oldValue The old value.
///
///  @param newValue The new value.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPWorkbookReplaceResponse*
///
-(NSNumber*) postWorkbooksTextReplaceWithCompletionBlock: (NSString*) name
         oldValue: (NSString*) oldValue
         newValue: (NSString*) newValue
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorkbookReplaceResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkbooksTextReplace`"];
    }
    
    // verify the required parameter 'oldValue' is set
    if (oldValue == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `oldValue` when calling `postWorkbooksTextReplace`"];
    }
    
    // verify the required parameter 'newValue' is set
    if (newValue == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newValue` when calling `postWorkbooksTextReplace`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/replaceText"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(oldValue != nil) {
        
        queryParams[@"oldValue"] = oldValue;
    }
    if(newValue != nil) {
        
        queryParams[@"newValue"] = newValue;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorkbookReplaceResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorkbookReplaceResponse*)data, error);
              }
          ];
}

///
/// 
/// 
///  @param name 
///
///  @param storage 
///
///  @param folder 
///
///  @returns ASPWorkbookSettingsResponse*
///
-(NSNumber*) getWorkbookSettingsWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorkbookSettingsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkbookSettings`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/settings"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorkbookSettingsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorkbookSettingsResponse*)data, error);
              }
          ];
}

///
/// 
/// 
///  @param name 
///
///  @param storage 
///
///  @param folder 
///
///  @param settings 
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postWorkbookSettingsWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
         settings: (ASPWorkbookSettings*) settings
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkbookSettings`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/settings"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = settings;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Smart marker processing result.
/// 
///  @param name The workbook name.
///
///  @param file 
///
///  @param xmlFile The xml file full path, if empty the data is read from request body.
///
///  @param storage The document storage.
///
///  @param folder The workbook folder full path.
///
///  @param outPath Path to save result
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postWorkbookGetSmartMarkerResultWithCompletionBlock: (NSString*) name
         file: (NSURL*) file
         xmlFile: (NSString*) xmlFile
         storage: (NSString*) storage
         folder: (NSString*) folder
         outPath: (NSString*) outPath
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkbookGetSmartMarkerResult`"];
    }
    
    // verify the required parameter 'file' is set
    if (file == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `file` when calling `postWorkbookGetSmartMarkerResult`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/smartmarker"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(xmlFile != nil) {
        
        queryParams[@"xmlFile"] = xmlFile;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(outPath != nil) {
        
        queryParams[@"outPath"] = outPath;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Split workbook.
/// 
///  @param name The workbook name.
///
///  @param format Split format.
///
///  @param from Start worksheet index.
///
///  @param to End worksheet index.
///
///  @param horizontalResolution Image horizontal resolution.
///
///  @param verticalResolution Image vertical resolution.
///
///  @param storage The workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPSplitResultResponse*
///
-(NSNumber*) postWorkbookSplitWithCompletionBlock: (NSString*) name
         format: (NSString*) format
         from: (NSNumber*) from
         to: (NSNumber*) to
         horizontalResolution: (NSNumber*) horizontalResolution
         verticalResolution: (NSNumber*) verticalResolution
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPSplitResultResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkbookSplit`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/split"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(from != nil) {
        
        queryParams[@"from"] = from;
    }
    if(to != nil) {
        
        queryParams[@"to"] = to;
    }
    if(horizontalResolution != nil) {
        
        queryParams[@"horizontalResolution"] = horizontalResolution;
    }
    if(verticalResolution != nil) {
        
        queryParams[@"verticalResolution"] = verticalResolution;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPSplitResultResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPSplitResultResponse*)data, error);
              }
          ];
}

///
/// Read workbook's text items.
/// 
///  @param name The workbook name.
///
///  @param storage The document storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPTextItemsResponse*
///
-(NSNumber*) getWorkBookTextItemsWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkBookTextItems`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/textItems"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextItemsResponse*)data, error);
              }
          ];
}

///
/// Read worksheets info.
/// 
///  @param name Document name.
///
///  @param storage The document storage.
///
///  @param folder Document folder.
///
///  @returns ASPWorksheetsResponse*
///
-(NSNumber*) getWorkSheetsWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorksheetsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheets`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorksheetsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorksheetsResponse*)data, error);
              }
          ];
}

///
/// Read worksheet info or export.
/// 
///  @param name The document name.
///
///  @param sheetName The worksheet name.
///
///  @param verticalResolution Image vertical resolution.
///
///  @param horizontalResolution Image horizontal resolution.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPWorksheetResponse*
///
-(NSNumber*) getWorkSheetWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         verticalResolution: (NSNumber*) verticalResolution
         horizontalResolution: (NSNumber*) horizontalResolution
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorksheetResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheet`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(verticalResolution != nil) {
        
        queryParams[@"verticalResolution"] = verticalResolution;
    }
    if(horizontalResolution != nil) {
        
        queryParams[@"horizontalResolution"] = horizontalResolution;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorksheetResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorksheetResponse*)data, error);
              }
          ];
}


///
/// Read worksheet in specified format
///
///  @param name The document name.
///
///  @param sheetName The worksheet name.
///
///  @param format Worksheet format
///
///  @param verticalResolution Image vertical resolution.
///
///  @param horizontalResolution Image horizontal resolution.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns NSURL*
///
-(NSNumber*) getWorkSheetWithFormatWithCompletionBlock: (NSString*) name
                                             sheetName: (NSString*) sheetName
                                                format: (NSString*) format
                                    verticalResolution: (NSNumber*) verticalResolution
                                  horizontalResolution: (NSNumber*) horizontalResolution
                                               storage: (NSString*) storage
                                                folder: (NSString*) folder

                                     completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetWithFormat`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetWithFormat`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getWorkSheetWithFormat`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(verticalResolution != nil) {
        
        queryParams[@"verticalResolution"] = verticalResolution;
    }
    if(horizontalResolution != nil) {
        
        queryParams[@"horizontalResolution"] = horizontalResolution;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((NSURL*)data, error);
                                      }
            ];
}


///
/// Add new worksheet.
/// 
///  @param name Document name.
///
///  @param sheetName The new sheet name.
///
///  @param storage The document storage.
///
///  @param folder Document folder.
///
///  @returns ASPWorksheetsResponse*
///
-(NSNumber*) putAddNewWorksheetWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorksheetsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putAddNewWorksheet`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putAddNewWorksheet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorksheetsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorksheetsResponse*)data, error);
              }
          ];
}

///
/// Update worksheet property
/// 
///  @param name 
///
///  @param sheetName 
///
///  @param sheet 
///
///  @param folder 
///
///  @param storage 
///
///  @returns ASPWorksheetResponse*
///
-(NSNumber*) postUpdateWorksheetPropertyWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         sheet: (ASPWorksheet*) sheet
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(ASPWorksheetResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postUpdateWorksheetProperty`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postUpdateWorksheetProperty`"];
    }
    
    // verify the required parameter 'sheet' is set
    if (sheet == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheet` when calling `postUpdateWorksheetProperty`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sheet;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorksheetResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorksheetResponse*)data, error);
              }
          ];
}

///
/// Delete worksheet.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPWorksheetsResponse*
///
-(NSNumber*) deleteWorksheetWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorksheetsResponse* output, NSError* error))completionBlock { 
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheet`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorksheetsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorksheetsResponse*)data, error);
              }
          ];
}

///
/// Autofit worksheet rows.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param autoFitterOptions Auto Fitter Options.
///
///  @param startRow Start row.
///
///  @param endRow End row.
///
///  @param onlyAuto Only auto.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postAutofitWorksheetRowsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         autoFitterOptions: (ASPAutoFitterOptions*) autoFitterOptions
         startRow: (NSNumber*) startRow
         endRow: (NSNumber*) endRow
         onlyAuto: (NSNumber*) onlyAuto
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postAutofitWorksheetRows`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postAutofitWorksheetRows`"];
    }
    
    // verify the required parameter 'autoFitterOptions' is set
    if (autoFitterOptions == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `autoFitterOptions` when calling `postAutofitWorksheetRows`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/autofitrows"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startRow != nil) {
        
        queryParams[@"startRow"] = startRow;
    }
    if(endRow != nil) {
        
        queryParams[@"endRow"] = endRow;
    }
    if(onlyAuto != nil) {
        
        queryParams[@"onlyAuto"] = onlyAuto;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = autoFitterOptions;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get worksheet autoshapes info.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPAutoShapesResponse*
///
-(NSNumber*) getWorksheetAutoshapesWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAutoShapesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetAutoshapes`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetAutoshapes`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/autoshapes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAutoShapesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAutoShapesResponse*)data, error);
              }
          ];
}

///
/// Get autoshape info.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param autoshapeNumber The autoshape number.
///
///  @param storage Workbook storage.
///
///  @param folder The document folder.
///
///  @returns ASPAutoShapeResponse*
///
-(NSNumber*) getWorksheetAutoshapeWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         autoshapeNumber: (NSNumber*) autoshapeNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPAutoShapeResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetAutoshape`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetAutoshape`"];
    }
    
    // verify the required parameter 'autoshapeNumber' is set
    if (autoshapeNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `autoshapeNumber` when calling `getWorksheetAutoshape`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (autoshapeNumber != nil) {
        pathParams[@"autoshapeNumber"] = autoshapeNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPAutoShapeResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPAutoShapeResponse*)data, error);
              }
          ];
}

///
/// Convert autoshape to Different File Formats.
///
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param autoshapeNumber The autoshape number.
///
///  @param format Convert autoshape to this format
///
///  @param storage Workbook storage.
///
///  @param folder The document folder.
///
///  @returns NSURL*
///
-(NSNumber*) getWorksheetAutoshapeWithFormatWithCompletionBlock: (NSString*) name
                                                      sheetName: (NSString*) sheetName
                                                autoshapeNumber: (NSNumber*) autoshapeNumber
                                                         format: (NSString*) format
                                                        storage: (NSString*) storage
                                                         folder: (NSString*) folder

                                              completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetAutoshapeWithFormat`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetAutoshapeWithFormat`"];
    }
    
    // verify the required parameter 'autoshapeNumber' is set
    if (autoshapeNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `autoshapeNumber` when calling `getWorksheetAutoshapeWithFormat`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getWorksheetAutoshapeWithFormat`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (autoshapeNumber != nil) {
        pathParams[@"autoshapeNumber"] = autoshapeNumber;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((NSURL*)data, error);
                                      }
            ];
}

///
/// Set worksheet background image.
/// 
///  @param name 
///
///  @param sheetName 
///
///  @param backgroundImage 
///
///  @param folder 
///
///  @param storage 
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) putWorkSheetBackgroundWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         backgroundImage: (NSURL*) backgroundImage
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorkSheetBackground`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorkSheetBackground`"];
    }
    
    // verify the required parameter 'backgroundImage' is set
    if (backgroundImage == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `backgroundImage` when calling `putWorkSheetBackground`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/background"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"backgroundImage"] = backgroundImage;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Set worksheet background image.
/// 
///  @param name 
///
///  @param sheetName 
///
///  @param folder 
///
///  @param storage 
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorkSheetBackgroundWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorkSheetBackground`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorkSheetBackground`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/background"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get cells info.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param offest Begginig offset.
///
///  @param count Maximum amount of cells in the response.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder name.
///
///  @returns ASPCellsResponse*
///
-(NSNumber*) getWorksheetCellsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         offest: (NSNumber*) offest
         count: (NSNumber*) count
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCellsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetCells`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetCells`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(offest != nil) {
        
        queryParams[@"offest"] = offest;
    }
    if(count != nil) {
        
        queryParams[@"count"] = count;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCellsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCellsResponse*)data, error);
              }
          ];
}

///
/// Set cell range value
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param cellarea Cell area (like \"A1:C2\")
///
///  @param value Range value
///
///  @param type Value data type (like \"int\")
///
///  @param storage Storage name
///
///  @param folder Folder name
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postSetCellRangeValueWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellarea: (NSString*) cellarea
         value: (NSString*) value
         type: (NSString*) type
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postSetCellRangeValue`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postSetCellRangeValue`"];
    }
    
    // verify the required parameter 'cellarea' is set
    if (cellarea == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellarea` when calling `postSetCellRangeValue`"];
    }
    
    // verify the required parameter 'value' is set
    if (value == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `value` when calling `postSetCellRangeValue`"];
    }
    
    // verify the required parameter 'type' is set
    if (type == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `type` when calling `postSetCellRangeValue`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(cellarea != nil) {
        
        queryParams[@"cellarea"] = cellarea;
    }
    if(value != nil) {
        
        queryParams[@"value"] = value;
    }
    if(type != nil) {
        
        queryParams[@"type"] = type;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Clear cells contents.
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param range The range.
///
///  @param startRow The start row.
///
///  @param startColumn The start column.
///
///  @param endRow The end row.
///
///  @param endColumn The end column.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postClearContentsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         range: (NSString*) range
         startRow: (NSNumber*) startRow
         startColumn: (NSNumber*) startColumn
         endRow: (NSNumber*) endRow
         endColumn: (NSNumber*) endColumn
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postClearContents`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postClearContents`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/clearcontents"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(range != nil) {
        
        queryParams[@"range"] = range;
    }
    if(startRow != nil) {
        
        queryParams[@"startRow"] = startRow;
    }
    if(startColumn != nil) {
        
        queryParams[@"startColumn"] = startColumn;
    }
    if(endRow != nil) {
        
        queryParams[@"endRow"] = endRow;
    }
    if(endColumn != nil) {
        
        queryParams[@"endColumn"] = endColumn;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Clear cells contents.
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param range The range.
///
///  @param startRow The start row.
///
///  @param startColumn The start column.
///
///  @param endRow The end row.
///
///  @param endColumn The end column.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postClearFormatsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         range: (NSString*) range
         startRow: (NSNumber*) startRow
         startColumn: (NSNumber*) startColumn
         endRow: (NSNumber*) endRow
         endColumn: (NSNumber*) endColumn
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postClearFormats`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postClearFormats`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/clearformats"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(range != nil) {
        
        queryParams[@"range"] = range;
    }
    if(startRow != nil) {
        
        queryParams[@"startRow"] = startRow;
    }
    if(startColumn != nil) {
        
        queryParams[@"startColumn"] = startColumn;
    }
    if(endRow != nil) {
        
        queryParams[@"endRow"] = endRow;
    }
    if(endColumn != nil) {
        
        queryParams[@"endColumn"] = endColumn;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read worksheet columns info.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param storage Workbook storage.
///
///  @param folder The workdook folder.
///
///  @returns ASPColumnsResponse*
///
-(NSNumber*) getWorksheetColumnsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPColumnsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetColumns`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetColumns`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPColumnsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPColumnsResponse*)data, error);
              }
          ];
}

///
/// Copy worksheet columns.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param sourceColumnIndex Source column index
///
///  @param destinationColumnIndex Destination column index
///
///  @param columnNumber The copied column number
///
///  @param worksheet The Worksheet
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postCopyWorksheetColumnsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         sourceColumnIndex: (NSNumber*) sourceColumnIndex
         destinationColumnIndex: (NSNumber*) destinationColumnIndex
         columnNumber: (NSNumber*) columnNumber
         worksheet: (NSString*) worksheet
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postCopyWorksheetColumns`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postCopyWorksheetColumns`"];
    }
    
    // verify the required parameter 'sourceColumnIndex' is set
    if (sourceColumnIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sourceColumnIndex` when calling `postCopyWorksheetColumns`"];
    }
    
    // verify the required parameter 'destinationColumnIndex' is set
    if (destinationColumnIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `destinationColumnIndex` when calling `postCopyWorksheetColumns`"];
    }
    
    // verify the required parameter 'columnNumber' is set
    if (columnNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `columnNumber` when calling `postCopyWorksheetColumns`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns/copy"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(sourceColumnIndex != nil) {
        
        queryParams[@"sourceColumnIndex"] = sourceColumnIndex;
    }
    if(destinationColumnIndex != nil) {
        
        queryParams[@"destinationColumnIndex"] = destinationColumnIndex;
    }
    if(columnNumber != nil) {
        
        queryParams[@"columnNumber"] = columnNumber;
    }
    if(worksheet != nil) {
        
        queryParams[@"worksheet"] = worksheet;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Group worksheet columns.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param firstIndex The first column index to be operated.
///
///  @param lastIndex The last column index to be operated.
///
///  @param hide columns visible state
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postGroupWorksheetColumnsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         firstIndex: (NSNumber*) firstIndex
         lastIndex: (NSNumber*) lastIndex
         hide: (NSNumber*) hide
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postGroupWorksheetColumns`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postGroupWorksheetColumns`"];
    }
    
    // verify the required parameter 'firstIndex' is set
    if (firstIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `firstIndex` when calling `postGroupWorksheetColumns`"];
    }
    
    // verify the required parameter 'lastIndex' is set
    if (lastIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `lastIndex` when calling `postGroupWorksheetColumns`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns/group"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(firstIndex != nil) {
        
        queryParams[@"firstIndex"] = firstIndex;
    }
    if(lastIndex != nil) {
        
        queryParams[@"lastIndex"] = lastIndex;
    }
    if(hide != nil) {
        
        queryParams[@"hide"] = hide;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Hide worksheet columns.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param startColumn The begin column index to be operated.
///
///  @param totalColumns Number of columns to be operated.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postHideWorksheetColumnsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         startColumn: (NSNumber*) startColumn
         totalColumns: (NSNumber*) totalColumns
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postHideWorksheetColumns`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postHideWorksheetColumns`"];
    }
    
    // verify the required parameter 'startColumn' is set
    if (startColumn == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startColumn` when calling `postHideWorksheetColumns`"];
    }
    
    // verify the required parameter 'totalColumns' is set
    if (totalColumns == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `totalColumns` when calling `postHideWorksheetColumns`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns/hide"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startColumn != nil) {
        
        queryParams[@"startColumn"] = startColumn;
    }
    if(totalColumns != nil) {
        
        queryParams[@"totalColumns"] = totalColumns;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Ungroup worksheet columns.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param firstIndex The first column index to be operated.
///
///  @param lastIndex The last column index to be operated.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postUngroupWorksheetColumnsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         firstIndex: (NSNumber*) firstIndex
         lastIndex: (NSNumber*) lastIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postUngroupWorksheetColumns`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postUngroupWorksheetColumns`"];
    }
    
    // verify the required parameter 'firstIndex' is set
    if (firstIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `firstIndex` when calling `postUngroupWorksheetColumns`"];
    }
    
    // verify the required parameter 'lastIndex' is set
    if (lastIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `lastIndex` when calling `postUngroupWorksheetColumns`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns/ungroup"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(firstIndex != nil) {
        
        queryParams[@"firstIndex"] = firstIndex;
    }
    if(lastIndex != nil) {
        
        queryParams[@"lastIndex"] = lastIndex;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Unhide worksheet columns.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param startcolumn The begin column index to be operated.
///
///  @param totalColumns Number of columns to be operated.
///
///  @param width The new column width.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postUnhideWorksheetColumnsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         startcolumn: (NSNumber*) startcolumn
         totalColumns: (NSNumber*) totalColumns
         width: (NSNumber*) width
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postUnhideWorksheetColumns`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postUnhideWorksheetColumns`"];
    }
    
    // verify the required parameter 'startcolumn' is set
    if (startcolumn == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startcolumn` when calling `postUnhideWorksheetColumns`"];
    }
    
    // verify the required parameter 'totalColumns' is set
    if (totalColumns == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `totalColumns` when calling `postUnhideWorksheetColumns`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns/unhide"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startcolumn != nil) {
        
        queryParams[@"startcolumn"] = startcolumn;
    }
    if(totalColumns != nil) {
        
        queryParams[@"totalColumns"] = totalColumns;
    }
    if(width != nil) {
        
        queryParams[@"width"] = width;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read worksheet column data by column's index.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param columnIndex The column index.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPColumnResponse*
///
-(NSNumber*) getWorksheetColumnWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         columnIndex: (NSNumber*) columnIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPColumnResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetColumn`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetColumn`"];
    }
    
    // verify the required parameter 'columnIndex' is set
    if (columnIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `columnIndex` when calling `getWorksheetColumn`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (columnIndex != nil) {
        pathParams[@"columnIndex"] = columnIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPColumnResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPColumnResponse*)data, error);
              }
          ];
}

///
/// Insert worksheet columns.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param columnIndex The column index.
///
///  @param columns The columns.
///
///  @param updateReference The update reference.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPColumnsResponse*
///
-(NSNumber*) putInsertWorksheetColumnsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         columnIndex: (NSNumber*) columnIndex
         columns: (NSNumber*) columns
         updateReference: (NSNumber*) updateReference
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPColumnsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putInsertWorksheetColumns`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putInsertWorksheetColumns`"];
    }
    
    // verify the required parameter 'columnIndex' is set
    if (columnIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `columnIndex` when calling `putInsertWorksheetColumns`"];
    }
    
    // verify the required parameter 'columns' is set
    if (columns == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `columns` when calling `putInsertWorksheetColumns`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (columnIndex != nil) {
        pathParams[@"columnIndex"] = columnIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(columns != nil) {
        
        queryParams[@"columns"] = columns;
    }
    if(updateReference != nil) {
        
        queryParams[@"updateReference"] = updateReference;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPColumnsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPColumnsResponse*)data, error);
              }
          ];
}

///
/// Set worksheet column width.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param columnIndex The column index.
///
///  @param width The width.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPColumnResponse*
///
-(NSNumber*) postSetWorksheetColumnWidthWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         columnIndex: (NSNumber*) columnIndex
         width: (NSNumber*) width
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPColumnResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postSetWorksheetColumnWidth`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postSetWorksheetColumnWidth`"];
    }
    
    // verify the required parameter 'columnIndex' is set
    if (columnIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `columnIndex` when calling `postSetWorksheetColumnWidth`"];
    }
    
    // verify the required parameter 'width' is set
    if (width == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `width` when calling `postSetWorksheetColumnWidth`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (columnIndex != nil) {
        pathParams[@"columnIndex"] = columnIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(width != nil) {
        
        queryParams[@"width"] = width;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPColumnResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPColumnResponse*)data, error);
              }
          ];
}

///
/// Delete worksheet columns.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param columnIndex The column index.
///
///  @param columns The columns.
///
///  @param updateReference The update reference.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPColumnsResponse*
///
-(NSNumber*) deleteWorksheetColumnsWithCompletionBlock: (NSString*) name
                                             sheetName: (NSString*) sheetName
                                           columnIndex: (NSNumber*) columnIndex
                                               columns: (NSNumber*) columns
                                       updateReference: (NSNumber*) updateReference
                                               storage: (NSString*) storage
                                                folder: (NSString*) folder

                                     completionHandler: (void (^)(ASPColumnsResponse* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetColumns`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetColumns`"];
    }
    
    // verify the required parameter 'columnIndex' is set
    if (columnIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `columnIndex` when calling `deleteWorksheetColumns`"];
    }
    
    // verify the required parameter 'columns' is set
    if (columns == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `columns` when calling `deleteWorksheetColumns`"];
    }
    
    // verify the required parameter 'updateReference' is set
    if (updateReference == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `updateReference` when calling `deleteWorksheetColumns`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (columnIndex != nil) {
        pathParams[@"columnIndex"] = columnIndex;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(columns != nil) {
        
        queryParams[@"columns"] = columns;
    }
    if(updateReference != nil) {
        
        queryParams[@"updateReference"] = updateReference;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPColumnsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((ASPColumnsResponse*)data, error);
                                      }
            ];
}

///
/// Set column style
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param columnIndex The column index.
///
///  @param style Style dto
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postColumnStyleWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         columnIndex: (NSNumber*) columnIndex
         style: (ASPStyle*) style
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postColumnStyle`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postColumnStyle`"];
    }
    
    // verify the required parameter 'columnIndex' is set
    if (columnIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `columnIndex` when calling `postColumnStyle`"];
    }
    
    // verify the required parameter 'style' is set
    if (style == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `style` when calling `postColumnStyle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/style"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (columnIndex != nil) {
        pathParams[@"columnIndex"] = columnIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = style;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Merge cells.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param startRow The start row.
///
///  @param startColumn The start column.
///
///  @param totalRows The total rows
///
///  @param totalColumns The total columns.
///
///  @param storage The document storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postWorksheetMergeWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         startRow: (NSNumber*) startRow
         startColumn: (NSNumber*) startColumn
         totalRows: (NSNumber*) totalRows
         totalColumns: (NSNumber*) totalColumns
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorksheetMerge`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorksheetMerge`"];
    }
    
    // verify the required parameter 'startRow' is set
    if (startRow == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startRow` when calling `postWorksheetMerge`"];
    }
    
    // verify the required parameter 'startColumn' is set
    if (startColumn == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startColumn` when calling `postWorksheetMerge`"];
    }
    
    // verify the required parameter 'totalRows' is set
    if (totalRows == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `totalRows` when calling `postWorksheetMerge`"];
    }
    
    // verify the required parameter 'totalColumns' is set
    if (totalColumns == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `totalColumns` when calling `postWorksheetMerge`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/merge"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startRow != nil) {
        
        queryParams[@"startRow"] = startRow;
    }
    if(startColumn != nil) {
        
        queryParams[@"startColumn"] = startColumn;
    }
    if(totalRows != nil) {
        
        queryParams[@"totalRows"] = totalRows;
    }
    if(totalColumns != nil) {
        
        queryParams[@"totalColumns"] = totalColumns;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read worksheet rows info.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param storage Workbook storage.
///
///  @param folder The workdook folder.
///
///  @returns ASPRowsResponse*
///
-(NSNumber*) getWorksheetRowsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPRowsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetRows`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetRows`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPRowsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPRowsResponse*)data, error);
              }
          ];
}

///
/// Insert several new worksheet rows.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param startrow The begin row index to be operated.
///
///  @param totalRows Number of rows to be operated.
///
///  @param updateReference Indicates if update references in other worksheets.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) putInsertWorksheetRowsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         startrow: (NSNumber*) startrow
         totalRows: (NSNumber*) totalRows
         updateReference: (NSNumber*) updateReference
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putInsertWorksheetRows`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putInsertWorksheetRows`"];
    }
    
    // verify the required parameter 'startrow' is set
    if (startrow == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startrow` when calling `putInsertWorksheetRows`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startrow != nil) {
        
        queryParams[@"startrow"] = startrow;
    }
    if(totalRows != nil) {
        
        queryParams[@"totalRows"] = totalRows;
    }
    if(updateReference != nil) {
        
        queryParams[@"updateReference"] = updateReference;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Delete several worksheet rows.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet bame.
///
///  @param startrow The begin row index to be operated.
///
///  @param totalRows Number of rows to be operated.
///
///  @param updateReference Indicates if update references in other worksheets.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetRowsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         startrow: (NSNumber*) startrow
         totalRows: (NSNumber*) totalRows
         updateReference: (NSNumber*) updateReference
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetRows`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetRows`"];
    }
    
    // verify the required parameter 'startrow' is set
    if (startrow == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startrow` when calling `deleteWorksheetRows`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startrow != nil) {
        
        queryParams[@"startrow"] = startrow;
    }
    if(totalRows != nil) {
        
        queryParams[@"totalRows"] = totalRows;
    }
    if(updateReference != nil) {
        
        queryParams[@"updateReference"] = updateReference;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Copy worksheet rows.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param sourceRowIndex Source row index
///
///  @param destinationRowIndex Destination row index
///
///  @param rowNumber The copied row number
///
///  @param worksheet worksheet
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postCopyWorksheetRowsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         sourceRowIndex: (NSNumber*) sourceRowIndex
         destinationRowIndex: (NSNumber*) destinationRowIndex
         rowNumber: (NSNumber*) rowNumber
         worksheet: (NSString*) worksheet
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postCopyWorksheetRows`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postCopyWorksheetRows`"];
    }
    
    // verify the required parameter 'sourceRowIndex' is set
    if (sourceRowIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sourceRowIndex` when calling `postCopyWorksheetRows`"];
    }
    
    // verify the required parameter 'destinationRowIndex' is set
    if (destinationRowIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `destinationRowIndex` when calling `postCopyWorksheetRows`"];
    }
    
    // verify the required parameter 'rowNumber' is set
    if (rowNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rowNumber` when calling `postCopyWorksheetRows`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows/copy"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(sourceRowIndex != nil) {
        
        queryParams[@"sourceRowIndex"] = sourceRowIndex;
    }
    if(destinationRowIndex != nil) {
        
        queryParams[@"destinationRowIndex"] = destinationRowIndex;
    }
    if(rowNumber != nil) {
        
        queryParams[@"rowNumber"] = rowNumber;
    }
    if(worksheet != nil) {
        
        queryParams[@"worksheet"] = worksheet;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Group worksheet rows.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param firstIndex The first row index to be operated.
///
///  @param lastIndex The last row index to be operated.
///
///  @param hide rows visible state
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postGroupWorksheetRowsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         firstIndex: (NSNumber*) firstIndex
         lastIndex: (NSNumber*) lastIndex
         hide: (NSNumber*) hide
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postGroupWorksheetRows`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postGroupWorksheetRows`"];
    }
    
    // verify the required parameter 'firstIndex' is set
    if (firstIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `firstIndex` when calling `postGroupWorksheetRows`"];
    }
    
    // verify the required parameter 'lastIndex' is set
    if (lastIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `lastIndex` when calling `postGroupWorksheetRows`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows/group"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(firstIndex != nil) {
        
        queryParams[@"firstIndex"] = firstIndex;
    }
    if(lastIndex != nil) {
        
        queryParams[@"lastIndex"] = lastIndex;
    }
    if(hide != nil) {
        
        queryParams[@"hide"] = hide;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Hide worksheet rows.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param startrow The begin row index to be operated.
///
///  @param totalRows Number of rows to be operated.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postHideWorksheetRowsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         startrow: (NSNumber*) startrow
         totalRows: (NSNumber*) totalRows
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postHideWorksheetRows`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postHideWorksheetRows`"];
    }
    
    // verify the required parameter 'startrow' is set
    if (startrow == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startrow` when calling `postHideWorksheetRows`"];
    }
    
    // verify the required parameter 'totalRows' is set
    if (totalRows == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `totalRows` when calling `postHideWorksheetRows`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows/hide"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startrow != nil) {
        
        queryParams[@"startrow"] = startrow;
    }
    if(totalRows != nil) {
        
        queryParams[@"totalRows"] = totalRows;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Ungroup worksheet rows.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param firstIndex The first row index to be operated.
///
///  @param lastIndex The last row index to be operated.
///
///  @param isAll Is all row to be operated
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postUngroupWorksheetRowsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         firstIndex: (NSNumber*) firstIndex
         lastIndex: (NSNumber*) lastIndex
         isAll: (NSNumber*) isAll
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postUngroupWorksheetRows`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postUngroupWorksheetRows`"];
    }
    
    // verify the required parameter 'firstIndex' is set
    if (firstIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `firstIndex` when calling `postUngroupWorksheetRows`"];
    }
    
    // verify the required parameter 'lastIndex' is set
    if (lastIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `lastIndex` when calling `postUngroupWorksheetRows`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows/ungroup"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(firstIndex != nil) {
        
        queryParams[@"firstIndex"] = firstIndex;
    }
    if(lastIndex != nil) {
        
        queryParams[@"lastIndex"] = lastIndex;
    }
    if(isAll != nil) {
        
        queryParams[@"isAll"] = isAll;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Unhide worksheet rows.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param startrow The begin row index to be operated.
///
///  @param totalRows Number of rows to be operated.
///
///  @param height The new row height.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postUnhideWorksheetRowsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         startrow: (NSNumber*) startrow
         totalRows: (NSNumber*) totalRows
         height: (NSNumber*) height
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postUnhideWorksheetRows`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postUnhideWorksheetRows`"];
    }
    
    // verify the required parameter 'startrow' is set
    if (startrow == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startrow` when calling `postUnhideWorksheetRows`"];
    }
    
    // verify the required parameter 'totalRows' is set
    if (totalRows == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `totalRows` when calling `postUnhideWorksheetRows`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows/unhide"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startrow != nil) {
        
        queryParams[@"startrow"] = startrow;
    }
    if(totalRows != nil) {
        
        queryParams[@"totalRows"] = totalRows;
    }
    if(height != nil) {
        
        queryParams[@"height"] = height;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read worksheet row data by row's index.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param rowIndex The row index.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPRowResponse*
///
-(NSNumber*) getWorksheetRowWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         rowIndex: (NSNumber*) rowIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPRowResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetRow`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetRow`"];
    }
    
    // verify the required parameter 'rowIndex' is set
    if (rowIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rowIndex` when calling `getWorksheetRow`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (rowIndex != nil) {
        pathParams[@"rowIndex"] = rowIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPRowResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPRowResponse*)data, error);
              }
          ];
}

///
/// Insert new worksheet row.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param rowIndex The new row index.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPRowResponse*
///
-(NSNumber*) putInsertWorksheetRowWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         rowIndex: (NSNumber*) rowIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPRowResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putInsertWorksheetRow`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putInsertWorksheetRow`"];
    }
    
    // verify the required parameter 'rowIndex' is set
    if (rowIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rowIndex` when calling `putInsertWorksheetRow`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (rowIndex != nil) {
        pathParams[@"rowIndex"] = rowIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPRowResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPRowResponse*)data, error);
              }
          ];
}

///
/// Update worksheet row.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param rowIndex The row index.
///
///  @param height The new row height.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPRowResponse*
///
-(NSNumber*) postUpdateWorksheetRowWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         rowIndex: (NSNumber*) rowIndex
         height: (NSNumber*) height
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPRowResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postUpdateWorksheetRow`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postUpdateWorksheetRow`"];
    }
    
    // verify the required parameter 'rowIndex' is set
    if (rowIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rowIndex` when calling `postUpdateWorksheetRow`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (rowIndex != nil) {
        pathParams[@"rowIndex"] = rowIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(height != nil) {
        
        queryParams[@"height"] = height;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPRowResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPRowResponse*)data, error);
              }
          ];
}

///
/// Delete worksheet row.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet bame.
///
///  @param rowIndex The row index.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetRowWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         rowIndex: (NSNumber*) rowIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetRow`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetRow`"];
    }
    
    // verify the required parameter 'rowIndex' is set
    if (rowIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rowIndex` when calling `deleteWorksheetRow`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (rowIndex != nil) {
        pathParams[@"rowIndex"] = rowIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Set row style.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param rowIndex The row index.
///
///  @param style Style dto
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postRowStyleWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         rowIndex: (NSNumber*) rowIndex
         style: (ASPStyle*) style
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postRowStyle`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postRowStyle`"];
    }
    
    // verify the required parameter 'rowIndex' is set
    if (rowIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `rowIndex` when calling `postRowStyle`"];
    }
    
    // verify the required parameter 'style' is set
    if (style == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `style` when calling `postRowStyle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/style"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (rowIndex != nil) {
        pathParams[@"rowIndex"] = rowIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = style;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Update cell's range style.
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param range The range.
///
///  @param style {Style} with update style settings.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postUpdateWorksheetRangeStyleWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         range: (NSString*) range
         style: (ASPStyle*) style
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postUpdateWorksheetRangeStyle`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postUpdateWorksheetRangeStyle`"];
    }
    
    // verify the required parameter 'range' is set
    if (range == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `range` when calling `postUpdateWorksheetRangeStyle`"];
    }
    
    // verify the required parameter 'style' is set
    if (style == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `style` when calling `postUpdateWorksheetRangeStyle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/style"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(range != nil) {
        
        queryParams[@"range"] = range;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = style;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Unmerge cells.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param startRow The start row.
///
///  @param startColumn The start column.
///
///  @param totalRows The total rows
///
///  @param totalColumns The total columns.
///
///  @param storage The document storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postWorksheetUnmergeWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         startRow: (NSNumber*) startRow
         startColumn: (NSNumber*) startColumn
         totalRows: (NSNumber*) totalRows
         totalColumns: (NSNumber*) totalColumns
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorksheetUnmerge`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorksheetUnmerge`"];
    }
    
    // verify the required parameter 'startRow' is set
    if (startRow == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startRow` when calling `postWorksheetUnmerge`"];
    }
    
    // verify the required parameter 'startColumn' is set
    if (startColumn == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `startColumn` when calling `postWorksheetUnmerge`"];
    }
    
    // verify the required parameter 'totalRows' is set
    if (totalRows == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `totalRows` when calling `postWorksheetUnmerge`"];
    }
    
    // verify the required parameter 'totalColumns' is set
    if (totalColumns == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `totalColumns` when calling `postWorksheetUnmerge`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/unmerge"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(startRow != nil) {
        
        queryParams[@"startRow"] = startRow;
    }
    if(startColumn != nil) {
        
        queryParams[@"startColumn"] = startColumn;
    }
    if(totalRows != nil) {
        
        queryParams[@"totalRows"] = totalRows;
    }
    if(totalColumns != nil) {
        
        queryParams[@"totalColumns"] = totalColumns;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Set cell value.
/// 
///  @param name The document name.
///
///  @param sheetName The worksheet name.
///
///  @param cellName The cell name.
///
///  @param value The cell value.
///
///  @param type The value type.
///
///  @param formula Formula for cell
///
///  @param storage Workbook storage.
///
///  @param folder The document folder.
///
///  @returns ASPCellResponse*
///
-(NSNumber*) postWorksheetCellSetValueWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellName: (NSString*) cellName
         value: (NSString*) value
         type: (NSString*) type
         formula: (NSString*) formula
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCellResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorksheetCellSetValue`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorksheetCellSetValue`"];
    }
    
    // verify the required parameter 'cellName' is set
    if (cellName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellName` when calling `postWorksheetCellSetValue`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/{cellName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (cellName != nil) {
        pathParams[@"cellName"] = cellName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(value != nil) {
        
        queryParams[@"value"] = value;
    }
    if(type != nil) {
        
        queryParams[@"type"] = type;
    }
    if(formula != nil) {
        
        queryParams[@"formula"] = formula;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCellResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCellResponse*)data, error);
              }
          ];
}

///
/// Set htmlstring value into cell
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param cellName The cell name.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPCellResponse*
///
-(NSNumber*) postSetCellHtmlStringWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellName: (NSString*) cellName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCellResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postSetCellHtmlString`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postSetCellHtmlString`"];
    }
    
    // verify the required parameter 'cellName' is set
    if (cellName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellName` when calling `postSetCellHtmlString`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (cellName != nil) {
        pathParams[@"cellName"] = cellName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCellResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCellResponse*)data, error);
              }
          ];
}

///
/// Read cell's style info.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param cellName Cell's name.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPStyleResponse*
///
-(NSNumber*) getWorksheetCellStyleWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellName: (NSString*) cellName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPStyleResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetCellStyle`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetCellStyle`"];
    }
    
    // verify the required parameter 'cellName' is set
    if (cellName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellName` when calling `getWorksheetCellStyle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (cellName != nil) {
        pathParams[@"cellName"] = cellName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPStyleResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPStyleResponse*)data, error);
              }
          ];
}

///
/// Update cell's style.
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param cellName The cell name.
///
///  @param style {Style} with update style settings.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPStyleResponse*
///
-(NSNumber*) postUpdateWorksheetCellStyleWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellName: (NSString*) cellName
         style: (ASPStyle*) style
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPStyleResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postUpdateWorksheetCellStyle`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postUpdateWorksheetCellStyle`"];
    }
    
    // verify the required parameter 'cellName' is set
    if (cellName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellName` when calling `postUpdateWorksheetCellStyle`"];
    }
    
    // verify the required parameter 'style' is set
    if (style == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `style` when calling `postUpdateWorksheetCellStyle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (cellName != nil) {
        pathParams[@"cellName"] = cellName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = style;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPStyleResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPStyleResponse*)data, error);
              }
          ];
}

///
/// Read cell data by cell's name.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param cellOrMethodName The cell's or method name. (Method name like firstcell, endcell etc.)
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPCellResponse*
///
-(NSNumber*) getWorksheetCellWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellOrMethodName: (NSString*) cellOrMethodName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCellResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetCell`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetCell`"];
    }
    
    // verify the required parameter 'cellOrMethodName' is set
    if (cellOrMethodName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellOrMethodName` when calling `getWorksheetCell`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/{cellOrMethodName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (cellOrMethodName != nil) {
        pathParams[@"cellOrMethodName"] = cellOrMethodName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCellResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCellResponse*)data, error);
              }
          ];
}

///
/// Copy cell into cell
/// 
///  @param name Workbook name.
///
///  @param destCellName Destination cell name
///
///  @param sheetName Destination worksheet name.
///
///  @param worksheet Source worksheet name.
///
///  @param cellname Source cell name
///
///  @param row Source row
///
///  @param column Source column
///
///  @param storage Storage name
///
///  @param folder Folder name
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postCopyCellIntoCellWithCompletionBlock: (NSString*) name
         destCellName: (NSString*) destCellName
         sheetName: (NSString*) sheetName
         worksheet: (NSString*) worksheet
         cellname: (NSString*) cellname
         row: (NSNumber*) row
         column: (NSNumber*) column
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postCopyCellIntoCell`"];
    }
    
    // verify the required parameter 'destCellName' is set
    if (destCellName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `destCellName` when calling `postCopyCellIntoCell`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postCopyCellIntoCell`"];
    }
    
    // verify the required parameter 'worksheet' is set
    if (worksheet == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `worksheet` when calling `postCopyCellIntoCell`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/cells/{destCellName}/copy"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (destCellName != nil) {
        pathParams[@"destCellName"] = destCellName;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(worksheet != nil) {
        
        queryParams[@"worksheet"] = worksheet;
    }
    if(cellname != nil) {
        
        queryParams[@"cellname"] = cellname;
    }
    if(row != nil) {
        
        queryParams[@"row"] = row;
    }
    if(column != nil) {
        
        queryParams[@"column"] = column;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get worksheet charts info.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPChartsResponse*
///
-(NSNumber*) getWorksheetChartsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPChartsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetCharts`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetCharts`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPChartsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPChartsResponse*)data, error);
              }
          ];
}

///
/// Add new chart to worksheet.
/// 
///  @param name Workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param chartType Chart type, please refer property Type in chart resource.
///
///  @param upperLeftRow New chart upper left row.
///
///  @param upperLeftColumn New chart upperleft column.
///
///  @param lowerRightRow New chart lower right row.
///
///  @param lowerRightColumn New chart lower right column.
///
///  @param area Specifies values from which to plot the data series.
///
///  @param isVertical Specifies whether to plot the series from a range of cell values by row or by column.
///
///  @param categoryData Gets or sets the range of category Axis values. It can be a range of cells (such as, \"d1:e10\").
///
///  @param isAutoGetSerialName Specifies whether auto update serial name.
///
///  @param title Specifies chart title name.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPChartsResponse*
///
-(NSNumber*) putWorksheetAddChartWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartType: (NSString*) chartType
         upperLeftRow: (NSNumber*) upperLeftRow
         upperLeftColumn: (NSNumber*) upperLeftColumn
         lowerRightRow: (NSNumber*) lowerRightRow
         lowerRightColumn: (NSNumber*) lowerRightColumn
         area: (NSString*) area
         isVertical: (NSNumber*) isVertical
         categoryData: (NSString*) categoryData
         isAutoGetSerialName: (NSNumber*) isAutoGetSerialName
         title: (NSString*) title
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPChartsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorksheetAddChart`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorksheetAddChart`"];
    }
    
    // verify the required parameter 'chartType' is set
    if (chartType == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartType` when calling `putWorksheetAddChart`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(chartType != nil) {
        
        queryParams[@"chartType"] = chartType;
    }
    if(upperLeftRow != nil) {
        
        queryParams[@"upperLeftRow"] = upperLeftRow;
    }
    if(upperLeftColumn != nil) {
        
        queryParams[@"upperLeftColumn"] = upperLeftColumn;
    }
    if(lowerRightRow != nil) {
        
        queryParams[@"lowerRightRow"] = lowerRightRow;
    }
    if(lowerRightColumn != nil) {
        
        queryParams[@"lowerRightColumn"] = lowerRightColumn;
    }
    if(area != nil) {
        
        queryParams[@"area"] = area;
    }
    if(isVertical != nil) {
        
        queryParams[@"isVertical"] = isVertical;
    }
    if(categoryData != nil) {
        
        queryParams[@"categoryData"] = categoryData;
    }
    if(isAutoGetSerialName != nil) {
        
        queryParams[@"isAutoGetSerialName"] = isAutoGetSerialName;
    }
    if(title != nil) {
        
        queryParams[@"title"] = title;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPChartsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPChartsResponse*)data, error);
              }
          ];
}

///
/// Clear the charts.
/// 
///  @param name Workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetClearChartsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetClearCharts`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetClearCharts`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Delete worksheet chart by index.
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPChartsResponse*
///
-(NSNumber*) deleteWorksheetDeleteChartWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPChartsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetDeleteChart`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetDeleteChart`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `deleteWorksheetDeleteChart`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPChartsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPChartsResponse*)data, error);
              }
          ];
}

///
/// Get chart area info.
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param storage Workbook storage.
///
///  @param folder Workbook folder.
///
///  @returns ASPChartAreaResponse*
///
-(NSNumber*) getChartAreaWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPChartAreaResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getChartArea`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getChartArea`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `getChartArea`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPChartAreaResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPChartAreaResponse*)data, error);
              }
          ];
}

///
/// Get chart area border info.
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param storage Workbook storage.
///
///  @param folder Workbook folder.
///
///  @returns ASPLineResponse*
///
-(NSNumber*) getChartAreaBorderWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPLineResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getChartAreaBorder`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getChartAreaBorder`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `getChartAreaBorder`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/border"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPLineResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPLineResponse*)data, error);
              }
          ];
}

///
/// Get chart area fill format info.
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param storage Workbook storage.
///
///  @param folder Workbook folder.
///
///  @returns ASPFillFormatResponse*
///
-(NSNumber*) getChartAreaFillFormatWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPFillFormatResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getChartAreaFillFormat`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getChartAreaFillFormat`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `getChartAreaFillFormat`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/fillFormat"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPFillFormatResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPFillFormatResponse*)data, error);
              }
          ];
}

///
/// Get chart legend
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPLegendResponse*
///
-(NSNumber*) getWorksheetChartLegendWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPLegendResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetChartLegend`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetChartLegend`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `getWorksheetChartLegend`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPLegendResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPLegendResponse*)data, error);
              }
          ];
}

///
/// Show legend in chart
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) putWorksheetChartLegendWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorksheetChartLegend`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorksheetChartLegend`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `putWorksheetChartLegend`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Update chart legend
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param legend 
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPLegendResponse*
///
-(NSNumber*) postWorksheetChartLegendWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         legend: (ASPChartsLegend*) legend
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPLegendResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorksheetChartLegend`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorksheetChartLegend`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `postWorksheetChartLegend`"];
    }
    
    // verify the required parameter 'legend' is set
    if (legend == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `legend` when calling `postWorksheetChartLegend`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = legend;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPLegendResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPLegendResponse*)data, error);
              }
          ];
}

///
/// Hide legend in chart
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetChartLegendWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetChartLegend`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetChartLegend`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `deleteWorksheetChartLegend`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Add chart title / Set chart title visible
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param title Chart title.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPTitleResponse*
///
-(NSNumber*) putWorksheetChartTitleWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         title: (ASPChartsTitle*) title
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTitleResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorksheetChartTitle`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorksheetChartTitle`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `putWorksheetChartTitle`"];
    }
    
    // verify the required parameter 'title' is set
    if (title == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `title` when calling `putWorksheetChartTitle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = title;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTitleResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTitleResponse*)data, error);
              }
          ];
}

///
/// Update chart title
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param title Chart title
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPTitleResponse*
///
-(NSNumber*) postWorksheetChartTitleWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         title: (ASPChartsTitle*) title
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTitleResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorksheetChartTitle`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorksheetChartTitle`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `postWorksheetChartTitle`"];
    }
    
    // verify the required parameter 'title' is set
    if (title == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `title` when calling `postWorksheetChartTitle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = title;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTitleResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTitleResponse*)data, error);
              }
          ];
}

///
/// Hide title in chart
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param chartIndex The chart index.
///
///  @param storage Workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetChartTitleWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartIndex: (NSNumber*) chartIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetChartTitle`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetChartTitle`"];
    }
    
    // verify the required parameter 'chartIndex' is set
    if (chartIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartIndex` when calling `deleteWorksheetChartTitle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartIndex != nil) {
        pathParams[@"chartIndex"] = chartIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}



///
/// Get chart in specified format.
///
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param chartNumber The chart number.
///
///  @param format Chart format
///
///  @param storage Workbook storage.
///
///  @param folder The document folder.
///
///  @returns NSURL*
///
-(NSNumber*) getWorksheetChartWithFormatWithCompletionBlock: (NSString*) name
                                                  sheetName: (NSString*) sheetName
                                                chartNumber: (NSNumber*) chartNumber
                                                     format: (NSString*) format
                                                    storage: (NSString*) storage
                                                     folder: (NSString*) folder

                                          completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetChartWithFormat`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetChartWithFormat`"];
    }
    
    // verify the required parameter 'chartNumber' is set
    if (chartNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartNumber` when calling `getWorksheetChartWithFormat`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getWorksheetChartWithFormat`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartNumber != nil) {
        pathParams[@"chartNumber"] = chartNumber;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((NSURL*)data, error);
                                      }
            ];
}



///
/// Get chart info.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param chartNumber The chart number.
///
///  @param storage Workbook storage.
///
///  @param folder The document folder.
///
///  @returns ASPSystemObject*
///
-(NSNumber*) getWorksheetChartWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         chartNumber: (NSNumber*) chartNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetChart`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetChart`"];
    }
    
    // verify the required parameter 'chartNumber' is set
    if (chartNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `chartNumber` when calling `getWorksheetChart`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (chartNumber != nil) {
        pathParams[@"chartNumber"] = chartNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPSystemObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get worksheet comments.
/// 
///  @param name Workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCommentsResponse*
///
-(NSNumber*) getWorkSheetCommentsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCommentsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetComments`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetComments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/comments"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCommentsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCommentsResponse*)data, error);
              }
          ];
}

///
/// Get worksheet comment by cell name.
/// 
///  @param name The document name.
///
///  @param sheetName The worksheet name.
///
///  @param cellName The cell name
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCommentResponse*
///
-(NSNumber*) getWorkSheetCommentWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellName: (NSString*) cellName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCommentResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetComment`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetComment`"];
    }
    
    // verify the required parameter 'cellName' is set
    if (cellName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellName` when calling `getWorkSheetComment`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/comments/{cellName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (cellName != nil) {
        pathParams[@"cellName"] = cellName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCommentResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCommentResponse*)data, error);
              }
          ];
}

///
/// Add worksheet's cell comment.
/// 
///  @param name The document name.
///
///  @param sheetName The worksheet name.
///
///  @param cellName The cell name
///
///  @param comment Comment object
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPCommentResponse*
///
-(NSNumber*) putWorkSheetCommentWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellName: (NSString*) cellName
         comment: (ASPComment*) comment
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPCommentResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorkSheetComment`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorkSheetComment`"];
    }
    
    // verify the required parameter 'cellName' is set
    if (cellName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellName` when calling `putWorkSheetComment`"];
    }
    
    // verify the required parameter 'comment' is set
    if (comment == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `comment` when calling `putWorkSheetComment`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/comments/{cellName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (cellName != nil) {
        pathParams[@"cellName"] = cellName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = comment;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPCommentResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPCommentResponse*)data, error);
              }
          ];
}

///
/// Update worksheet's cell comment.
/// 
///  @param name The document name.
///
///  @param sheetName The worksheet name.
///
///  @param cellName The cell name
///
///  @param comment Comment object
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postWorkSheetCommentWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellName: (NSString*) cellName
         comment: (ASPComment*) comment
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkSheetComment`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorkSheetComment`"];
    }
    
    // verify the required parameter 'cellName' is set
    if (cellName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellName` when calling `postWorkSheetComment`"];
    }
    
    // verify the required parameter 'comment' is set
    if (comment == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `comment` when calling `postWorkSheetComment`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/comments/{cellName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (cellName != nil) {
        pathParams[@"cellName"] = cellName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = comment;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Delete worksheet's cell comment.
/// 
///  @param name The document name.
///
///  @param sheetName The worksheet name.
///
///  @param cellName The cell name
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorkSheetCommentWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellName: (NSString*) cellName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorkSheetComment`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorkSheetComment`"];
    }
    
    // verify the required parameter 'cellName' is set
    if (cellName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellName` when calling `deleteWorkSheetComment`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/comments/{cellName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (cellName != nil) {
        pathParams[@"cellName"] = cellName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Copy worksheet
/// 
///  @param name 
///
///  @param sheetName 
///
///  @param sourceSheet 
///
///  @param folder 
///
///  @param storage 
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postCopyWorksheetWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         sourceSheet: (NSString*) sourceSheet
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postCopyWorksheet`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postCopyWorksheet`"];
    }
    
    // verify the required parameter 'sourceSheet' is set
    if (sourceSheet == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sourceSheet` when calling `postCopyWorksheet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/copy"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(sourceSheet != nil) {
        
        queryParams[@"sourceSheet"] = sourceSheet;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Search text.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param text Text to search.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPTextItemsResponse*
///
-(NSNumber*) postWorkSheetTextSearchWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         text: (NSString*) text
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkSheetTextSearch`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorkSheetTextSearch`"];
    }
    
    // verify the required parameter 'text' is set
    if (text == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `text` when calling `postWorkSheetTextSearch`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/findText"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(text != nil) {
        
        queryParams[@"text"] = text;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextItemsResponse*)data, error);
              }
          ];
}

///
/// Calculate formula value.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param formula The formula.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPSingleValueResponse*
///
-(NSNumber*) getWorkSheetCalculateFormulaWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         formula: (NSString*) formula
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPSingleValueResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetCalculateFormula`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetCalculateFormula`"];
    }
    
    // verify the required parameter 'formula' is set
    if (formula == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `formula` when calling `getWorkSheetCalculateFormula`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/formulaResult"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(formula != nil) {
        
        queryParams[@"formula"] = formula;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPSingleValueResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPSingleValueResponse*)data, error);
              }
          ];
}

///
/// Set freeze panes
/// 
///  @param name 
///
///  @param sheetName 
///
///  @param row 
///
///  @param column 
///
///  @param freezedRows 
///
///  @param freezedColumns 
///
///  @param folder 
///
///  @param storage 
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) putWorksheetFreezePanesWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         row: (NSNumber*) row
         column: (NSNumber*) column
         freezedRows: (NSNumber*) freezedRows
         freezedColumns: (NSNumber*) freezedColumns
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorksheetFreezePanes`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorksheetFreezePanes`"];
    }
    
    // verify the required parameter 'row' is set
    if (row == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `row` when calling `putWorksheetFreezePanes`"];
    }
    
    // verify the required parameter 'column' is set
    if (column == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `column` when calling `putWorksheetFreezePanes`"];
    }
    
    // verify the required parameter 'freezedRows' is set
    if (freezedRows == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `freezedRows` when calling `putWorksheetFreezePanes`"];
    }
    
    // verify the required parameter 'freezedColumns' is set
    if (freezedColumns == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `freezedColumns` when calling `putWorksheetFreezePanes`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/freezepanes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(row != nil) {
        
        queryParams[@"row"] = row;
    }
    if(column != nil) {
        
        queryParams[@"column"] = column;
    }
    if(freezedRows != nil) {
        
        queryParams[@"freezedRows"] = freezedRows;
    }
    if(freezedColumns != nil) {
        
        queryParams[@"freezedColumns"] = freezedColumns;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Unfreeze panes
/// 
///  @param name 
///
///  @param sheetName 
///
///  @param row 
///
///  @param column 
///
///  @param freezedRows 
///
///  @param freezedColumns 
///
///  @param folder 
///
///  @param storage 
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetFreezePanesWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         row: (NSNumber*) row
         column: (NSNumber*) column
         freezedRows: (NSNumber*) freezedRows
         freezedColumns: (NSNumber*) freezedColumns
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetFreezePanes`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetFreezePanes`"];
    }
    
    // verify the required parameter 'row' is set
    if (row == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `row` when calling `deleteWorksheetFreezePanes`"];
    }
    
    // verify the required parameter 'column' is set
    if (column == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `column` when calling `deleteWorksheetFreezePanes`"];
    }
    
    // verify the required parameter 'freezedRows' is set
    if (freezedRows == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `freezedRows` when calling `deleteWorksheetFreezePanes`"];
    }
    
    // verify the required parameter 'freezedColumns' is set
    if (freezedColumns == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `freezedColumns` when calling `deleteWorksheetFreezePanes`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/freezepanes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(row != nil) {
        
        queryParams[@"row"] = row;
    }
    if(column != nil) {
        
        queryParams[@"column"] = column;
    }
    if(freezedRows != nil) {
        
        queryParams[@"freezedRows"] = freezedRows;
    }
    if(freezedColumns != nil) {
        
        queryParams[@"freezedColumns"] = freezedColumns;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get worksheet hyperlinks.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPHyperlinksResponse*
///
-(NSNumber*) getWorkSheetHyperlinksWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPHyperlinksResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetHyperlinks`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetHyperlinks`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/hyperlinks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPHyperlinksResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPHyperlinksResponse*)data, error);
              }
          ];
}

///
/// Add worksheet hyperlink.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param firstRow 
///
///  @param firstColumn 
///
///  @param totalRows 
///
///  @param totalColumns 
///
///  @param address 
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPHyperlinkResponse*
///
-(NSNumber*) putWorkSheetHyperlinkWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         firstRow: (NSNumber*) firstRow
         firstColumn: (NSNumber*) firstColumn
         totalRows: (NSNumber*) totalRows
         totalColumns: (NSNumber*) totalColumns
         address: (NSString*) address
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPHyperlinkResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'firstRow' is set
    if (firstRow == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `firstRow` when calling `putWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'firstColumn' is set
    if (firstColumn == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `firstColumn` when calling `putWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'totalRows' is set
    if (totalRows == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `totalRows` when calling `putWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'totalColumns' is set
    if (totalColumns == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `totalColumns` when calling `putWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'address' is set
    if (address == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `address` when calling `putWorkSheetHyperlink`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/hyperlinks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(firstRow != nil) {
        
        queryParams[@"firstRow"] = firstRow;
    }
    if(firstColumn != nil) {
        
        queryParams[@"firstColumn"] = firstColumn;
    }
    if(totalRows != nil) {
        
        queryParams[@"totalRows"] = totalRows;
    }
    if(totalColumns != nil) {
        
        queryParams[@"totalColumns"] = totalColumns;
    }
    if(address != nil) {
        
        queryParams[@"address"] = address;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPHyperlinkResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPHyperlinkResponse*)data, error);
              }
          ];
}

///
/// Delete all hyperlinks in worksheet.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorkSheetHyperlinksWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorkSheetHyperlinks`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorkSheetHyperlinks`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/hyperlinks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get worksheet hyperlink by index.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param hyperlinkIndex The hyperlink's index.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPHyperlinkResponse*
///
-(NSNumber*) getWorkSheetHyperlinkWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         hyperlinkIndex: (NSNumber*) hyperlinkIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPHyperlinkResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'hyperlinkIndex' is set
    if (hyperlinkIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `hyperlinkIndex` when calling `getWorkSheetHyperlink`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (hyperlinkIndex != nil) {
        pathParams[@"hyperlinkIndex"] = hyperlinkIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPHyperlinkResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPHyperlinkResponse*)data, error);
              }
          ];
}

///
/// Update worksheet hyperlink by index.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param hyperlinkIndex The hyperlink's index.
///
///  @param hyperlink Hyperlink object
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPHyperlinkResponse*
///
-(NSNumber*) postWorkSheetHyperlinkWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         hyperlinkIndex: (NSNumber*) hyperlinkIndex
         hyperlink: (ASPHyperlink*) hyperlink
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPHyperlinkResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'hyperlinkIndex' is set
    if (hyperlinkIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `hyperlinkIndex` when calling `postWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'hyperlink' is set
    if (hyperlink == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `hyperlink` when calling `postWorkSheetHyperlink`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (hyperlinkIndex != nil) {
        pathParams[@"hyperlinkIndex"] = hyperlinkIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = hyperlink;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPHyperlinkResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPHyperlinkResponse*)data, error);
              }
          ];
}

///
/// Delete worksheet hyperlink by index.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param hyperlinkIndex The hyperlink's index.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorkSheetHyperlinkWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         hyperlinkIndex: (NSNumber*) hyperlinkIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorkSheetHyperlink`"];
    }
    
    // verify the required parameter 'hyperlinkIndex' is set
    if (hyperlinkIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `hyperlinkIndex` when calling `deleteWorkSheetHyperlink`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (hyperlinkIndex != nil) {
        pathParams[@"hyperlinkIndex"] = hyperlinkIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get worksheet merged cells.
/// 
///  @param name Document name.
///
///  @param sheetName The workseet name.
///
///  @param storage The document storage.
///
///  @param folder Document folder.
///
///  @returns ASPMergedCellsResponse*
///
-(NSNumber*) getWorkSheetMergedCellsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPMergedCellsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetMergedCells`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetMergedCells`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/mergedCells"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPMergedCellsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPMergedCellsResponse*)data, error);
              }
          ];
}

///
/// Get worksheet merged cell by its index.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param mergedCellIndex Merged cell index.
///
///  @param storage The document storage.
///
///  @param folder Document folder.
///
///  @returns ASPMergedCellResponse*
///
-(NSNumber*) getWorkSheetMergedCellWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         mergedCellIndex: (NSNumber*) mergedCellIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPMergedCellResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetMergedCell`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetMergedCell`"];
    }
    
    // verify the required parameter 'mergedCellIndex' is set
    if (mergedCellIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `mergedCellIndex` when calling `getWorkSheetMergedCell`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/mergedCells/{mergedCellIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (mergedCellIndex != nil) {
        pathParams[@"mergedCellIndex"] = mergedCellIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPMergedCellResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPMergedCellResponse*)data, error);
              }
          ];
}

///
/// Get worksheet OLE objects info.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPOleObjectsResponse*
///
-(NSNumber*) getWorksheetOleObjectsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPOleObjectsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetOleObjects`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetOleObjects`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/oleobjects"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPOleObjectsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPOleObjectsResponse*)data, error);
              }
          ];
}

///
/// Add OLE object
/// 
///  @param name The workbook name.
///
///  @param sheetName The worsheet name.
///
///  @param oleObject Ole Object
///
///  @param upperLeftRow Upper left row index
///
///  @param upperLeftColumn Upper left column index
///
///  @param height Height of oleObject, in unit of pixel
///
///  @param width Width of oleObject, in unit of pixel
///
///  @param oleFile OLE filename
///
///  @param imageFile Image filename
///
///  @param storage The workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPOleObjectResponse*
///
-(NSNumber*) putWorksheetOleObjectWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         oleObject: (ASPDrawingOleObject*) oleObject
         upperLeftRow: (NSNumber*) upperLeftRow
         upperLeftColumn: (NSNumber*) upperLeftColumn
         height: (NSNumber*) height
         width: (NSNumber*) width
         oleFile: (NSString*) oleFile
         imageFile: (NSString*) imageFile
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPOleObjectResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorksheetOleObject`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorksheetOleObject`"];
    }
    
    // verify the required parameter 'oleObject' is set
    if (oleObject == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `oleObject` when calling `putWorksheetOleObject`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/oleobjects"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(upperLeftRow != nil) {
        
        queryParams[@"upperLeftRow"] = upperLeftRow;
    }
    if(upperLeftColumn != nil) {
        
        queryParams[@"upperLeftColumn"] = upperLeftColumn;
    }
    if(height != nil) {
        
        queryParams[@"height"] = height;
    }
    if(width != nil) {
        
        queryParams[@"width"] = width;
    }
    if(oleFile != nil) {
        
        queryParams[@"oleFile"] = oleFile;
    }
    if(imageFile != nil) {
        
        queryParams[@"imageFile"] = imageFile;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = oleObject;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPOleObjectResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPOleObjectResponse*)data, error);
              }
          ];
}

///
/// Delete all OLE objects.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worsheet name.
///
///  @param storage The workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetOleObjectsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetOleObjects`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetOleObjects`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/oleobjects"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get OLE object in specified format
///
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param objectNumber The object number.
///
///  @param format Ole object format
///
///  @param storage Workbook storage.
///
///  @param folder The document folder.
///
///  @returns NSURL*
///
-(NSNumber*) getWorksheetOleObjectWithFormatWithCompletionBlock: (NSString*) name
                                                      sheetName: (NSString*) sheetName
                                                   objectNumber: (NSNumber*) objectNumber
                                                         format: (NSString*) format
                                                        storage: (NSString*) storage
                                                         folder: (NSString*) folder

                                              completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetOleObjectWithFormat`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetOleObjectWithFormat`"];
    }
    
    // verify the required parameter 'objectNumber' is set
    if (objectNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `objectNumber` when calling `getWorksheetOleObjectWithFormat`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getWorksheetOleObjectWithFormat`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (objectNumber != nil) {
        pathParams[@"objectNumber"] = objectNumber;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((NSURL*)data, error);
                                      }
            ];
}

///
/// Get OLE object info.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param objectNumber The object number.
///
///  @param storage Workbook storage.
///
///  @param folder The document folder.
///
///  @returns ASPSystemObject*
///
-(NSNumber*) getWorksheetOleObjectWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         objectNumber: (NSNumber*) objectNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetOleObject`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetOleObject`"];
    }
    
    // verify the required parameter 'objectNumber' is set
    if (objectNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `objectNumber` when calling `getWorksheetOleObject`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (objectNumber != nil) {
        pathParams[@"objectNumber"] = objectNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPSystemObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Update OLE object.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worsheet name.
///
///  @param oleObjectIndex Ole object index
///
///  @param ole Ole Object
///
///  @param storage The workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postUpdateWorksheetOleObjectWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         oleObjectIndex: (NSNumber*) oleObjectIndex
         ole: (ASPDrawingOleObject*) ole
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postUpdateWorksheetOleObject`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postUpdateWorksheetOleObject`"];
    }
    
    // verify the required parameter 'oleObjectIndex' is set
    if (oleObjectIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `oleObjectIndex` when calling `postUpdateWorksheetOleObject`"];
    }
    
    // verify the required parameter 'ole' is set
    if (ole == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `ole` when calling `postUpdateWorksheetOleObject`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (oleObjectIndex != nil) {
        pathParams[@"oleObjectIndex"] = oleObjectIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = ole;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Delete OLE object.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worsheet name.
///
///  @param oleObjectIndex Ole object index
///
///  @param storage The workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetOleObjectWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         oleObjectIndex: (NSNumber*) oleObjectIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetOleObject`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetOleObject`"];
    }
    
    // verify the required parameter 'oleObjectIndex' is set
    if (oleObjectIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `oleObjectIndex` when calling `deleteWorksheetOleObject`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (oleObjectIndex != nil) {
        pathParams[@"oleObjectIndex"] = oleObjectIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Read worksheet pictures.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPPicturesResponse*
///
-(NSNumber*) getWorksheetPicturesWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPPicturesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetPictures`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetPictures`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pictures"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPPicturesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPPicturesResponse*)data, error);
              }
          ];
}

///
/// Add a new worksheet picture.
///
///  @param name The workbook name.
///
///  @param sheetName The worsheet name.
///
///  @param picturePath The picture path
///
///  @param upperLeftRow The image upper left row.
///
///  @param upperLeftColumn The image upper left column.
///
///  @param lowerRightRow The image low right row.
///
///  @param lowerRightColumn The image low right column.
///
///  @param storage The workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPPicturesResponse*
///
-(NSNumber*) putWorksheetAddPictureWithCompletionBlock: (NSString*) name
                                             sheetName: (NSString*) sheetName
                                           picturePath: (NSString*) picturePath
                                          upperLeftRow: (NSNumber*) upperLeftRow
                                       upperLeftColumn: (NSNumber*) upperLeftColumn
                                         lowerRightRow: (NSNumber*) lowerRightRow
                                      lowerRightColumn: (NSNumber*) lowerRightColumn
                                               storage: (NSString*) storage
                                                folder: (NSString*) folder

                                     completionHandler: (void (^)(ASPPicturesResponse* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorksheetAddPicture`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorksheetAddPicture`"];
    }
    
    // verify the required parameter 'picturePath' is set
    if (picturePath == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `picturePath` when calling `putWorksheetAddPicture`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pictures"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(picturePath != nil) {
        
        queryParams[@"picturePath"] = picturePath;
    }
    if(upperLeftRow != nil) {
        
        queryParams[@"upperLeftRow"] = upperLeftRow;
    }
    if(upperLeftColumn != nil) {
        
        queryParams[@"upperLeftColumn"] = upperLeftColumn;
    }
    if(lowerRightRow != nil) {
        
        queryParams[@"lowerRightRow"] = lowerRightRow;
    }
    if(lowerRightColumn != nil) {
        
        queryParams[@"lowerRightColumn"] = lowerRightColumn;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPPicturesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((ASPPicturesResponse*)data, error);
                                      }
            ];
}

///
/// Delete all pictures in worksheet.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorkSheetPicturesWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorkSheetPictures`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorkSheetPictures`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pictures"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Update worksheet picture by index.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param pictureIndex The picture's index.
///
///  @param picture Picture object
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPPictureResponse*
///
-(NSNumber*) postWorkSheetPictureWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pictureIndex: (NSNumber*) pictureIndex
         picture: (ASPDrawingPicture*) picture
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPPictureResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkSheetPicture`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorkSheetPicture`"];
    }
    
    // verify the required parameter 'pictureIndex' is set
    if (pictureIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pictureIndex` when calling `postWorkSheetPicture`"];
    }
    
    // verify the required parameter 'picture' is set
    if (picture == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `picture` when calling `postWorkSheetPicture`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pictureIndex != nil) {
        pathParams[@"pictureIndex"] = pictureIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = picture;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPPictureResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPPictureResponse*)data, error);
              }
          ];
}

///
/// Delete a picture object in worksheet
/// 
///  @param name The workbook name.
///
///  @param sheetName The worsheet name.
///
///  @param pictureIndex Picture index
///
///  @param storage The workbook storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetPictureWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pictureIndex: (NSNumber*) pictureIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetPicture`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetPicture`"];
    }
    
    // verify the required parameter 'pictureIndex' is set
    if (pictureIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pictureIndex` when calling `deleteWorksheetPicture`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pictureIndex != nil) {
        pathParams[@"pictureIndex"] = pictureIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// GRead worksheet picture by number.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param pictureNumber The picture number.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPPictureResponse*
///
-(NSNumber*) getWorksheetPictureWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pictureNumber: (NSNumber*) pictureNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPPictureResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetPicture`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetPicture`"];
    }
    
    // verify the required parameter 'pictureNumber' is set
    if (pictureNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pictureNumber` when calling `getWorksheetPicture`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pictureNumber != nil) {
        pathParams[@"pictureNumber"] = pictureNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPPictureResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPPictureResponse*)data, error);
              }
          ];
}

///
/// Read worksheet picture in specified format
///
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param pictureNumber The picture number.
///
///  @param format Picture format.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns NSURL*
///
-(NSNumber*) getWorksheetPictureWithFormatWithCompletionBlock: (NSString*) name
                                                    sheetName: (NSString*) sheetName
                                                pictureNumber: (NSNumber*) pictureNumber
                                                       format: (NSString*) format
                                                      storage: (NSString*) storage
                                                       folder: (NSString*) folder

                                            completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock {
    
    
    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetPictureWithFormat`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetPictureWithFormat`"];
    }
    
    // verify the required parameter 'pictureNumber' is set
    if (pictureNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pictureNumber` when calling `getWorksheetPictureWithFormat`"];
    }
    
    // verify the required parameter 'format' is set
    if (format == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `format` when calling `getWorksheetPictureWithFormat`"];
    }
    
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}"];
    
    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pictureNumber != nil) {
        pathParams[@"pictureNumber"] = pictureNumber;
    }
    
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(format != nil) {
        
        queryParams[@"format"] = format;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];
    
    
    
    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }
    
    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }
    
    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];
    
    // Authentication setting
    NSArray *authSettings = @[];
    
    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    
    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                                          
                                          completionBlock((NSURL*)data, error);
                                      }
            ];
}

///
/// Extract barcodes from worksheet picture.
/// 
///  @param name Workbook name.
///
///  @param sheetName Worksheet name.
///
///  @param pictureNumber Picture index.
///
///  @param storage Workbook storage.
///
///  @param folder Workbook folder.
///
///  @returns ASPBarcodeResponseList*
///
-(NSNumber*) getExtractBarcodesWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pictureNumber: (NSNumber*) pictureNumber
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBarcodeResponseList* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getExtractBarcodes`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getExtractBarcodes`"];
    }
    
    // verify the required parameter 'pictureNumber' is set
    if (pictureNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pictureNumber` when calling `getExtractBarcodes`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pictures/{pictureNumber}/recognize"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pictureNumber != nil) {
        pathParams[@"pictureNumber"] = pictureNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBarcodeResponseList*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBarcodeResponseList*)data, error);
              }
          ];
}

///
/// Get worksheet pivottables info.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPPivotTablesResponse*
///
-(NSNumber*) getWorksheetPivotTablesWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPPivotTablesResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetPivotTables`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetPivotTables`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPPivotTablesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPPivotTablesResponse*)data, error);
              }
          ];
}

///
/// Add a pivot table into worksheet.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param request CreatePivotTableRequest dto in request body.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @param sourceData The data for the new PivotTable cache.
///
///  @param destCellName The cell in the upper-left corner of the PivotTable report's destination range.
///
///  @param tableName The name of the new PivotTable report.
///
///  @param useSameSource Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory.
///
///  @returns ASPPivotTableResponse*
///
-(NSNumber*) putWorksheetPivotTableWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         request: (ASPCreatePivotTableRequest*) request
         storage: (NSString*) storage
         folder: (NSString*) folder
         sourceData: (NSString*) sourceData
         destCellName: (NSString*) destCellName
         tableName: (NSString*) tableName
         useSameSource: (NSNumber*) useSameSource
        
        completionHandler: (void (^)(ASPPivotTableResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorksheetPivotTable`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorksheetPivotTable`"];
    }
    
    // verify the required parameter 'request' is set
    if (request == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `request` when calling `putWorksheetPivotTable`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(sourceData != nil) {
        
        queryParams[@"sourceData"] = sourceData;
    }
    if(destCellName != nil) {
        
        queryParams[@"destCellName"] = destCellName;
    }
    if(tableName != nil) {
        
        queryParams[@"tableName"] = tableName;
    }
    if(useSameSource != nil) {
        
        queryParams[@"useSameSource"] = useSameSource;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = request;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPPivotTableResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPPivotTableResponse*)data, error);
              }
          ];
}

///
/// Delete worksheet pivot tables
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetPivotTablesWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetPivotTables`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetPivotTables`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Delete worksheet pivot table by index
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param pivotTableIndex Pivot table index
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteWorksheetPivotTableWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pivotTableIndex: (NSNumber*) pivotTableIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorksheetPivotTable`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorksheetPivotTable`"];
    }
    
    // verify the required parameter 'pivotTableIndex' is set
    if (pivotTableIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotTableIndex` when calling `deleteWorksheetPivotTable`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pivotTableIndex != nil) {
        pathParams[@"pivotTableIndex"] = pivotTableIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Calculates pivottable's data to cells.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param pivotTableIndex Pivot table index
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postWorksheetPivotTableCalculateWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pivotTableIndex: (NSNumber*) pivotTableIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorksheetPivotTableCalculate`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorksheetPivotTableCalculate`"];
    }
    
    // verify the required parameter 'pivotTableIndex' is set
    if (pivotTableIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotTableIndex` when calling `postWorksheetPivotTableCalculate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Calculate"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pivotTableIndex != nil) {
        pathParams[@"pivotTableIndex"] = pivotTableIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Update cell style for pivot table
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param pivotTableIndex Pivot table index
///
///  @param column 
///
///  @param row 
///
///  @param style Style dto in request body.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postPivotTableCellStyleWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pivotTableIndex: (NSNumber*) pivotTableIndex
         column: (NSNumber*) column
         row: (NSNumber*) row
         style: (ASPStyle*) style
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postPivotTableCellStyle`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postPivotTableCellStyle`"];
    }
    
    // verify the required parameter 'pivotTableIndex' is set
    if (pivotTableIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotTableIndex` when calling `postPivotTableCellStyle`"];
    }
    
    // verify the required parameter 'column' is set
    if (column == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `column` when calling `postPivotTableCellStyle`"];
    }
    
    // verify the required parameter 'row' is set
    if (row == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `row` when calling `postPivotTableCellStyle`"];
    }
    
    // verify the required parameter 'style' is set
    if (style == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `style` when calling `postPivotTableCellStyle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Format"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pivotTableIndex != nil) {
        pathParams[@"pivotTableIndex"] = pivotTableIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(column != nil) {
        
        queryParams[@"column"] = column;
    }
    if(row != nil) {
        
        queryParams[@"row"] = row;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = style;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Update style for pivot table
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param pivotTableIndex Pivot table index
///
///  @param style Style dto in request body.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postPivotTableStyleWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pivotTableIndex: (NSNumber*) pivotTableIndex
         style: (ASPStyle*) style
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postPivotTableStyle`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postPivotTableStyle`"];
    }
    
    // verify the required parameter 'pivotTableIndex' is set
    if (pivotTableIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotTableIndex` when calling `postPivotTableStyle`"];
    }
    
    // verify the required parameter 'style' is set
    if (style == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `style` when calling `postPivotTableStyle`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/FormatAll"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pivotTableIndex != nil) {
        pathParams[@"pivotTableIndex"] = pivotTableIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = style;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Add pivot field into into pivot table
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param pivotTableIndex Pivot table index
///
///  @param pivotFieldType The fields area type.
///
///  @param request Dto that conrains field indexes
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) putPivotTableFieldWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pivotTableIndex: (NSNumber*) pivotTableIndex
         pivotFieldType: (NSString*) pivotFieldType
         request: (ASPPivotTableFieldRequest*) request
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putPivotTableField`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putPivotTableField`"];
    }
    
    // verify the required parameter 'pivotTableIndex' is set
    if (pivotTableIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotTableIndex` when calling `putPivotTableField`"];
    }
    
    // verify the required parameter 'pivotFieldType' is set
    if (pivotFieldType == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotFieldType` when calling `putPivotTableField`"];
    }
    
    // verify the required parameter 'request' is set
    if (request == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `request` when calling `putPivotTableField`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pivotTableIndex != nil) {
        pathParams[@"pivotTableIndex"] = pivotTableIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(pivotFieldType != nil) {
        
        queryParams[@"pivotFieldType"] = pivotFieldType;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = request;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Delete pivot field into into pivot table
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param pivotTableIndex Pivot table index
///
///  @param pivotFieldType The fields area type.
///
///  @param request Dto that conrains field indexes
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deletePivotTableFieldWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pivotTableIndex: (NSNumber*) pivotTableIndex
         pivotFieldType: (NSString*) pivotFieldType
         request: (ASPPivotTableFieldRequest*) request
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deletePivotTableField`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deletePivotTableField`"];
    }
    
    // verify the required parameter 'pivotTableIndex' is set
    if (pivotTableIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotTableIndex` when calling `deletePivotTableField`"];
    }
    
    // verify the required parameter 'pivotFieldType' is set
    if (pivotFieldType == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotFieldType` when calling `deletePivotTableField`"];
    }
    
    // verify the required parameter 'request' is set
    if (request == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `request` when calling `deletePivotTableField`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pivotTableIndex != nil) {
        pathParams[@"pivotTableIndex"] = pivotTableIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(pivotFieldType != nil) {
        
        queryParams[@"pivotFieldType"] = pivotFieldType;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = request;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get pivot field into into pivot table
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param pivotTableIndex Pivot table index
///
///  @param pivotFieldIndex The field index in the base fields.
///
///  @param pivotFieldType The fields area type.
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPPivotFieldResponse*
///
-(NSNumber*) getPivotTableFieldWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pivotTableIndex: (NSNumber*) pivotTableIndex
         pivotFieldIndex: (NSNumber*) pivotFieldIndex
         pivotFieldType: (NSString*) pivotFieldType
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPPivotFieldResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getPivotTableField`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getPivotTableField`"];
    }
    
    // verify the required parameter 'pivotTableIndex' is set
    if (pivotTableIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotTableIndex` when calling `getPivotTableField`"];
    }
    
    // verify the required parameter 'pivotFieldIndex' is set
    if (pivotFieldIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotFieldIndex` when calling `getPivotTableField`"];
    }
    
    // verify the required parameter 'pivotFieldType' is set
    if (pivotFieldType == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivotFieldType` when calling `getPivotTableField`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/{pivotFieldIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pivotTableIndex != nil) {
        pathParams[@"pivotTableIndex"] = pivotTableIndex;
    }
    if (pivotFieldIndex != nil) {
        pathParams[@"pivotFieldIndex"] = pivotFieldIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(pivotFieldType != nil) {
        
        queryParams[@"pivotFieldType"] = pivotFieldType;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPPivotFieldResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPPivotFieldResponse*)data, error);
              }
          ];
}

///
/// Get worksheet pivottable info by index.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param pivottableIndex 
///
///  @param storage Workbook storage.
///
///  @param folder Document's folder.
///
///  @returns ASPPivotTableResponse*
///
-(NSNumber*) getWorksheetPivotTableWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         pivottableIndex: (NSNumber*) pivottableIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPPivotTableResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorksheetPivotTable`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorksheetPivotTable`"];
    }
    
    // verify the required parameter 'pivottableIndex' is set
    if (pivottableIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pivottableIndex` when calling `getWorksheetPivotTable`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/pivottables/{pivottableIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (pivottableIndex != nil) {
        pathParams[@"pivottableIndex"] = pivottableIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPPivotTableResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPPivotTableResponse*)data, error);
              }
          ];
}

///
/// Move worksheet.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param moving {WorksheetMovingRequest} with moving parameters.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPWorksheetsResponse*
///
-(NSNumber*) postMoveWorksheetWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         moving: (ASPWorksheetMovingRequest*) moving
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorksheetsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postMoveWorksheet`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postMoveWorksheet`"];
    }
    
    // verify the required parameter 'moving' is set
    if (moving == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `moving` when calling `postMoveWorksheet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/position"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = moving;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorksheetsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorksheetsResponse*)data, error);
              }
          ];
}

///
/// Protect worksheet.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param protectParameter {ProtectSheetParameter} with protection settings.
///
///  @param storage The document storage.
///
///  @param folder Document folder.
///
///  @returns ASPWorksheetResponse*
///
-(NSNumber*) putProtectWorksheetWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         protectParameter: (ASPProtectSheetParameter*) protectParameter
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorksheetResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putProtectWorksheet`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putProtectWorksheet`"];
    }
    
    // verify the required parameter 'protectParameter' is set
    if (protectParameter == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `protectParameter` when calling `putProtectWorksheet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/protection"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = protectParameter;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorksheetResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorksheetResponse*)data, error);
              }
          ];
}

///
/// Unprotect worksheet.
/// 
///  @param name Document name.
///
///  @param sheetName The worksheet name.
///
///  @param protectParameter {WorksheetResponse} with protection settings. Only password is used here.
///
///  @param storage The document storage.
///
///  @param folder Document folder.
///
///  @returns ASPWorksheetResponse*
///
-(NSNumber*) deleteUnprotectWorksheetWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         protectParameter: (ASPProtectSheetParameter*) protectParameter
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorksheetResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteUnprotectWorksheet`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteUnprotectWorksheet`"];
    }
    
    // verify the required parameter 'protectParameter' is set
    if (protectParameter == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `protectParameter` when calling `deleteUnprotectWorksheet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/protection"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = protectParameter;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorksheetResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorksheetResponse*)data, error);
              }
          ];
}

///
/// Rename worksheet
/// 
///  @param name 
///
///  @param sheetName 
///
///  @param newname 
///
///  @param folder 
///
///  @param storage 
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postRenameWorksheetWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         newname: (NSString*) newname
         folder: (NSString*) folder
         storage: (NSString*) storage
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postRenameWorksheet`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postRenameWorksheet`"];
    }
    
    // verify the required parameter 'newname' is set
    if (newname == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newname` when calling `postRenameWorksheet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/rename"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(newname != nil) {
        
        queryParams[@"newname"] = newname;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Replace text.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param oldValue The old text to replace.
///
///  @param newValue The new text to replace by.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPWorksheetReplaceResponse*
///
-(NSNumber*) postWorsheetTextReplaceWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         oldValue: (NSString*) oldValue
         newValue: (NSString*) newValue
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorksheetReplaceResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorsheetTextReplace`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorsheetTextReplace`"];
    }
    
    // verify the required parameter 'oldValue' is set
    if (oldValue == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `oldValue` when calling `postWorsheetTextReplace`"];
    }
    
    // verify the required parameter 'newValue' is set
    if (newValue == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `newValue` when calling `postWorsheetTextReplace`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/replaceText"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(oldValue != nil) {
        
        queryParams[@"oldValue"] = oldValue;
    }
    if(newValue != nil) {
        
        queryParams[@"newValue"] = newValue;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorksheetReplaceResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorksheetReplaceResponse*)data, error);
              }
          ];
}

///
/// Sort worksheet range.
/// 
///  @param name The workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param cellArea The range to sort.
///
///  @param dataSorter {DataSorter} with sorting settings.
///
///  @param storage The document storage.
///
///  @param folder The workbook folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) postWorksheetRangeSortWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         cellArea: (NSString*) cellArea
         dataSorter: (ASPDataSorter*) dataSorter
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorksheetRangeSort`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorksheetRangeSort`"];
    }
    
    // verify the required parameter 'cellArea' is set
    if (cellArea == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cellArea` when calling `postWorksheetRangeSort`"];
    }
    
    // verify the required parameter 'dataSorter' is set
    if (dataSorter == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataSorter` when calling `postWorksheetRangeSort`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/sort"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(cellArea != nil) {
        
        queryParams[@"cellArea"] = cellArea;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = dataSorter;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Get worksheet text items.
/// 
///  @param name Workbook name.
///
///  @param sheetName The worksheet name.
///
///  @param storage The document storage.
///
///  @param folder The workbook's folder.
///
///  @returns ASPTextItemsResponse*
///
-(NSNumber*) getWorkSheetTextItemsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPTextItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetTextItems`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetTextItems`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/textItems"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPTextItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPTextItemsResponse*)data, error);
              }
          ];
}

///
/// Get worksheet validations.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param storage The document storage.
///
///  @param folder Document folder.
///
///  @returns ASPValidationsResponse*
///
-(NSNumber*) getWorkSheetValidationsWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPValidationsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetValidations`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetValidations`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/validations"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPValidationsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPValidationsResponse*)data, error);
              }
          ];
}

///
/// Add worksheet validation at index.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param range Specified cells area
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPValidationResponse*
///
-(NSNumber*) putWorkSheetValidationWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         range: (NSString*) range
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPValidationResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putWorkSheetValidation`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putWorkSheetValidation`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/validations"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(range != nil) {
        
        queryParams[@"range"] = range;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPValidationResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPValidationResponse*)data, error);
              }
          ];
}

///
/// Get worksheet validation by index.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param validationIndex The validation index.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPValidationResponse*
///
-(NSNumber*) getWorkSheetValidationWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         validationIndex: (NSNumber*) validationIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPValidationResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getWorkSheetValidation`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `getWorkSheetValidation`"];
    }
    
    // verify the required parameter 'validationIndex' is set
    if (validationIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `validationIndex` when calling `getWorkSheetValidation`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (validationIndex != nil) {
        pathParams[@"validationIndex"] = validationIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPValidationResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPValidationResponse*)data, error);
              }
          ];
}

///
/// Update worksheet validation by index.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param validationIndex The validation index.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPValidationResponse*
///
-(NSNumber*) postWorkSheetValidationWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         validationIndex: (NSNumber*) validationIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPValidationResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `postWorkSheetValidation`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `postWorkSheetValidation`"];
    }
    
    // verify the required parameter 'validationIndex' is set
    if (validationIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `validationIndex` when calling `postWorkSheetValidation`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (validationIndex != nil) {
        pathParams[@"validationIndex"] = validationIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPValidationResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPValidationResponse*)data, error);
              }
          ];
}

///
/// Delete worksheet validation by index.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param validationIndex The validation index.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPValidationResponse*
///
-(NSNumber*) deleteWorkSheetValidationWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         validationIndex: (NSNumber*) validationIndex
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPValidationResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteWorkSheetValidation`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `deleteWorkSheetValidation`"];
    }
    
    // verify the required parameter 'validationIndex' is set
    if (validationIndex == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `validationIndex` when calling `deleteWorkSheetValidation`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    if (validationIndex != nil) {
        pathParams[@"validationIndex"] = validationIndex;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPValidationResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPValidationResponse*)data, error);
              }
          ];
}

///
/// Change worksheet visibility.
/// 
///  @param name Document name.
///
///  @param sheetName Worksheet name.
///
///  @param isVisible New worksheet visibility value.
///
///  @param storage The document storage.
///
///  @param folder The document folder.
///
///  @returns ASPWorksheetResponse*
///
-(NSNumber*) putChangeVisibilityWorksheetWithCompletionBlock: (NSString*) name
         sheetName: (NSString*) sheetName
         isVisible: (NSNumber*) isVisible
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPWorksheetResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putChangeVisibilityWorksheet`"];
    }
    
    // verify the required parameter 'sheetName' is set
    if (sheetName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sheetName` when calling `putChangeVisibilityWorksheet`"];
    }
    
    // verify the required parameter 'isVisible' is set
    if (isVisible == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `isVisible` when calling `putChangeVisibilityWorksheet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/worksheets/{sheetName}/visible"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    if (sheetName != nil) {
        pathParams[@"sheetName"] = sheetName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(isVisible != nil) {
        
        queryParams[@"isVisible"] = isVisible;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPWorksheetResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPWorksheetResponse*)data, error);
              }
          ];
}

///
/// Protect document from changes.
/// 
///  @param name Document name.
///
///  @param password Modification password.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) putDocumentProtectFromChangesWithCompletionBlock: (NSString*) name
         password: (ASPPasswordRequest*) password
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `putDocumentProtectFromChanges`"];
    }
    
    // verify the required parameter 'password' is set
    if (password == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `password` when calling `putDocumentProtectFromChanges`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/writeProtection"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = password;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}

///
/// Unprotect document from changes.
/// 
///  @param name The document name.
///
///  @param storage The document storage.
///
///  @param folder Document's folder.
///
///  @returns ASPBaseResponse*
///
-(NSNumber*) deleteDocumentUnProtectFromChangesWithCompletionBlock: (NSString*) name
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPBaseResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `deleteDocumentUnProtectFromChanges`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cells/{name}/writeProtection"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPBaseResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPBaseResponse*)data, error);
              }
          ];
}



@end
