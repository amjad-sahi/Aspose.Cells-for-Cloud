#import <Foundation/Foundation.h>
#import "ASPObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol ASPWorkbookEncryptionRequest
@end

@interface ASPWorkbookEncryptionRequest : ASPObject


@property(nonatomic) NSString* encryptionType;

@property(nonatomic) NSNumber* keyLength;

@property(nonatomic) NSString* password;

@end