// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#ifndef DJINNI_GENERATED_BITCOINLIKEINPUT_HPP
#define DJINNI_GENERATED_BITCOINLIKEINPUT_HPP

#include "../utils/optional.hpp"
#include <cstdint>
#include <memory>
#include <string>
#include <vector>

namespace ledger { namespace core { namespace api {

class Amount;
class BinaryCallback;
class BitcoinLikeOutput;
class BitcoinLikeScript;
class DerivationPath;

/**Class representing Bitcoin inputs */
class BitcoinLikeInput {
public:
    virtual ~BitcoinLikeInput() {}

    /** Returns the address of the input (if an address can be computed) */
    virtual std::experimental::optional<std::string> getAddress() = 0;

    /**
     * Returns the public associated with the address. This value can be NULL if you are building a transaction with an
     * address which does not belong to your wallet.
     */
    virtual std::vector<std::vector<uint8_t>> getPublicKeys() = 0;

    /** Returns the derivation path of this input if the address is owned by the wallet */
    virtual std::vector<std::shared_ptr<DerivationPath>> getDerivationPath() = 0;

    /**
     * Returns the value of the amount. Depending on the backend this value may not exist if the input is not owned by
     * the wallet.
     */
    virtual std::shared_ptr<Amount> getValue() = 0;

    /**
     * Get the transaction hash of the output spent by this input. The result can be NULL if the output is not owned by
     * the wallet
     */
    virtual std::experimental::optional<std::string> getPreviousTxHash() = 0;

    /**
     * Get the index at which the output is located in the transaction output spent by this input. The result can be
     * NULL if the input does not belong to the wallet
     *Check whether input
     *@return Boolean, true if input belongs to coinbase transaction (reward for mining a block)
     */
    virtual bool isCoinbase() = 0;

    /**
     *Stored data cointained in coinbase
     *@return Optional String
     */
    virtual std::experimental::optional<std::string> getCoinbase() = 0;

    /**
     *Get output index, it identifies which UTXO from tht transaction to spend
     *@return Optional 32 bits integer, index of previous transaction
     */
    virtual std::experimental::optional<int32_t> getPreviousOutputIndex() = 0;

    /**
     * Retrieve the output spent by this input. Depending on the implementation this method may
     * use a lock to fetch data from a database. Therefore it may have poor performance, use with
     * caution.
     * @return The output spent by this input.
     */
    virtual std::shared_ptr<BitcoinLikeOutput> getPreviousOuput() = 0;

    /** Get ScriptSig of this input. The scriptsig is the first half of a script necessary to spend a previous output. */
    virtual std::vector<uint8_t> getScriptSig() = 0;

    /** Parse the script sig to a [[BitcoinLikeScript]] */
    virtual std::shared_ptr<BitcoinLikeScript> parseScriptSig() = 0;

    /**
     * Set the ScriptS to the given value
     * @param scriptSig The ScriptSig to use for this input
     */
    virtual void setScriptSig(const std::vector<uint8_t> & scriptSig) = 0;

    /** Push data to the end of the current ScriptSig */
    virtual void pushToScriptSig(const std::vector<uint8_t> & data) = 0;

    /** Set the sequence number of this input */
    virtual void setSequence(int32_t sequence) = 0;

    /** Get the sequence number of this input */
    virtual int32_t getSequence() = 0;

    virtual void getPreviousTransaction(const std::shared_ptr<BinaryCallback> & callback) = 0;

    /** Easy way to set the P2PKH script signature. Shorthand for input.pushToScriptSig(input.getPublicKeys()[0], signature) */
    virtual void setP2PKHSigScript(const std::vector<uint8_t> & signature) = 0;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_BITCOINLIKEINPUT_HPP
