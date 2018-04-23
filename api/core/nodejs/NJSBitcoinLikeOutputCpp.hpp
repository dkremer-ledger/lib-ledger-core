// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#ifndef DJINNI_GENERATED_NJSBITCOINLIKEOUTPUT_HPP
#define DJINNI_GENERATED_NJSBITCOINLIKEOUTPUT_HPP


#include "../../../core/src/api/../utils/optional.hpp"
#include "NJSAmountCpp.hpp"
#include "NJSBitcoinLikeScriptCpp.hpp"
#include "NJSDerivationPathCpp.hpp"
#include <cstdint>
#include <memory>
#include <string>
#include <vector>

#include <nan.h>
#include <node.h>
#include "../../../core/src/api/BitcoinLikeOutput.hpp"

using namespace v8;
using namespace node;
using namespace std;
using namespace ledger::core::api;

class NJSBitcoinLikeOutput: public Nan::ObjectWrap {
public:

    static void Initialize(Local<Object> target);
    virtual ~NJSBitcoinLikeOutput() {};
    NJSBitcoinLikeOutput(const std::shared_ptr<ledger::core::api::BitcoinLikeOutput> &iBitcoinLikeOutput):_BitcoinLikeOutput(iBitcoinLikeOutput){};

    static Handle<Object> wrap(const std::shared_ptr<ledger::core::api::BitcoinLikeOutput> &object);
    static Nan::Persistent<ObjectTemplate> BitcoinLikeOutput_prototype;
    std::shared_ptr<ledger::core::api::BitcoinLikeOutput> getCppImpl(){return _BitcoinLikeOutput;};

private:
    /**
     *Get transaction hash in which output was 'created'
     *@return String, transaction hash containing output
     */
    static NAN_METHOD(getTransactionHash);

    /**
     *Get index of output in list of all outputs contained in same transaction
     *@return 32 bits integer, index of output
     */
    static NAN_METHOD(getOutputIndex);

    /**
     *Get amount of output
     *@return Amount object, amount of output
     */
    static NAN_METHOD(getValue);

    /**
     *Get script (witness script) cryptographic puzzle that determines the conditions to spend the output
     *@return in Bytes (variable size depending on type of script P2PKH, P2SH), locking script to spend UTXO
     */
    static NAN_METHOD(getScript);

    static NAN_METHOD(parseScript);

    /**
     *Get address that spent the output
     *@return Optional String, address that spent
     */
    static NAN_METHOD(getAddress);

    static NAN_METHOD(getDerivationPath);

    static NAN_METHOD(New);

    std::shared_ptr<ledger::core::api::BitcoinLikeOutput> _BitcoinLikeOutput;
};
#endif //DJINNI_GENERATED_NJSBITCOINLIKEOUTPUT_HPP
