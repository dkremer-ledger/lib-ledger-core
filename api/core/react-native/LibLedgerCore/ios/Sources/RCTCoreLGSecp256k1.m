// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from secp256k1.djinni

#import "RCTCoreLGSecp256k1.h"


@implementation RCTCoreLGSecp256k1
//Export module
RCT_EXPORT_MODULE(RCTCoreLGSecp256k1)

-(instancetype)init
{
    self = [super init];
    //Init Objc implementation
    if(self)
    {
        self.objcImpl = [[LGSecp256k1 alloc] init];
    }
    return self;
}

/**
 * Create an instance of Secp256k1
 * @return Secp256k1 instance
 */
RCT_REMAP_METHOD(createInstance,createInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[LGSecp256k1 createInstance]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGSecp256k1::createInstance", nil);
    }
}

/**
 * Generates public key from private key.
 * @param privKey 32 byte private key
 * @param compress get compressed (35 bytes) or uncompressed (65 bytes)
 * @return public key can be compressed (35 bytes starting with 02 or 03) or un compressed (65 bytes starting with 04)
 */
RCT_REMAP_METHOD(computePubKey,computePubKey:(nonnull NSData *)privKey
                                    compress:(BOOL)compress withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl computePubKey:privKey compress:compress]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGSecp256k1::computePubKey", nil);
    }
}

/**
 * Signs message using a given private key
 * @param privKey 32 bytes private key
 * @param data 32 bytes message to sign
 * @return 32 bytes signed message
 */
RCT_REMAP_METHOD(sign,sign:(nonnull NSData *)privKey
                      data:(nonnull NSData *)data withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl sign:privKey data:data]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGSecp256k1::sign", nil);
    }
}

/**
 * Check if message was signed with given signature and public key
 * @param data 32 bytes signed message
 * @param signature 32 bytes signature (generated from private key)
 * @param oubkey 32 bytes public key
 * @return true if message was signed with signature and public key (both issued from same private key)
 */
RCT_REMAP_METHOD(verify,verify:(nonnull NSData *)data
                     signature:(nonnull NSData *)signature
                        pubKey:(nonnull NSData *)pubKey withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :@([self.objcImpl verify:data signature:signature pubKey:pubKey])};if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGSecp256k1::verify", nil);
    }
}

RCT_REMAP_METHOD(newInstance,newInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[LGSecp256k1 newInstance]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGSecp256k1::newInstance", nil);
    }
}
@end
