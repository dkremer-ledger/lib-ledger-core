// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#include "BitcoinLikeP2PKHInput.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class LGBitcoinLikeP2PKHInput;

namespace djinni_generated {

class BitcoinLikeP2PKHInput
{
public:
    using CppType = std::shared_ptr<::ledger::core::api::BitcoinLikeP2PKHInput>;
    using CppOptType = std::shared_ptr<::ledger::core::api::BitcoinLikeP2PKHInput>;
    using ObjcType = LGBitcoinLikeP2PKHInput*;

    using Boxed = BitcoinLikeP2PKHInput;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

}  // namespace djinni_generated

