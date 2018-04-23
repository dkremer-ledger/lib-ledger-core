// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#import "RCTCoreLGBitcoinLikeInput.h"


@implementation RCTCoreLGBitcoinLikeInput
//Export module
RCT_EXPORT_MODULE(RCTCoreLGBitcoinLikeInput)

-(instancetype)init
{
    self = [super init];
    //Init Objc implementation
    if(self)
    {
        self.objcImpl = [[LGBitcoinLikeInput alloc] init];
    }
    return self;
}

/** Returns the address of the input (if an address can be computed) */
RCT_REMAP_METHOD(getAddress,getAddressWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl getAddress]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getAddress", nil);
    }
}

/**
 * Returns the public associated with the address. This value can be NULL if you are building a transaction with an
 * address which does not belong to your wallet.
 */
RCT_REMAP_METHOD(getPublicKeys,getPublicKeysWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl getPublicKeys]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getPublicKeys", nil);
    }
}

/** Returns the derivation path of this input if the address is owned by the wallet */
RCT_REMAP_METHOD(getDerivationPath,getDerivationPathWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl getDerivationPath]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getDerivationPath", nil);
    }
}

/**
 * Returns the value of the amount. Depending on the backend this value may not exist if the input is not owned by
 * the wallet.
 */
RCT_REMAP_METHOD(getValue,getValueWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl getValue]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getValue", nil);
    }
}

/**
 * Get the transaction hash of the output spent by this input. The result can be NULL if the output is not owned by
 * the wallet
 */
RCT_REMAP_METHOD(getPreviousTxHash,getPreviousTxHashWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl getPreviousTxHash]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getPreviousTxHash", nil);
    }
}

/**
 * Get the index at which the output is located in the transaction output spent by this input. The result can be
 * NULL if the input does not belong to the wallet
 *Check whether input
 *@return Boolean, true if input belongs to coinbase transaction (reward for mining a block)
 */
RCT_REMAP_METHOD(isCoinbase,isCoinbaseWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :@([self.objcImpl isCoinbase])};if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::isCoinbase", nil);
    }
}

/**
 *Stored data cointained in coinbase
 *@return Optional String
 */
RCT_REMAP_METHOD(getCoinbase,getCoinbaseWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl getCoinbase]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getCoinbase", nil);
    }
}

/**
 *Get output index, it identifies which UTXO from tht transaction to spend
 *@return Optional 32 bits integer, index of previous transaction
 */
RCT_REMAP_METHOD(getPreviousOutputIndex,getPreviousOutputIndexWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl getPreviousOutputIndex]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getPreviousOutputIndex", nil);
    }
}

/**
 * Retrieve the output spent by this input. Depending on the implementation this method may
 * use a lock to fetch data from a database. Therefore it may have poor performance, use with
 * caution.
 * @return The output spent by this input.
 */
RCT_REMAP_METHOD(getPreviousOuput,getPreviousOuputWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl getPreviousOuput]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getPreviousOuput", nil);
    }
}

/** Get ScriptSig of this input. The scriptsig is the first half of a script necessary to spend a previous output. */
RCT_REMAP_METHOD(getScriptSig,getScriptSigWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl getScriptSig]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getScriptSig", nil);
    }
}

/** Parse the script sig to a [[BitcoinLikeScript]] */
RCT_REMAP_METHOD(parseScriptSig,parseScriptSigWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :[self.objcImpl parseScriptSig]};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::parseScriptSig", nil);
    }
}

/**
 * Set the ScriptS to the given value
 * @param scriptSig The ScriptSig to use for this input
 */
RCT_REMAP_METHOD(setScriptSig,setScriptSig:(nonnull NSData *)scriptSig) {

    [self.objcImpl setScriptSig:scriptSig];
}

/** Push data to the end of the current ScriptSig */
RCT_REMAP_METHOD(pushToScriptSig,pushToScriptSig:(nonnull NSData *)data) {

    [self.objcImpl pushToScriptSig:data];
}

/** Set the sequence number of this input */
RCT_REMAP_METHOD(setSequence,setSequence:(int32_t)sequence) {

    [self.objcImpl setSequence:sequence];
}

/** Get the sequence number of this input */
RCT_REMAP_METHOD(getSequence,getSequenceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

    id result = @{@"result" :@([self.objcImpl getSequence])};if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getSequence", nil);
    }
}

RCT_REMAP_METHOD(getPreviousTransaction,getPreviousTransaction:(nullable id<LGBinaryCallback>)callback) {

    [self.objcImpl getPreviousTransaction:callback];
}

/** Easy way to set the P2PKH script signature. Shorthand for input.pushToScriptSig(input.getPublicKeys()[0], signature) */
RCT_REMAP_METHOD(setP2PKHSigScript,setP2PKHSigScript:(nonnull NSData *)signature) {

    [self.objcImpl setP2PKHSigScript:signature];
}
@end
