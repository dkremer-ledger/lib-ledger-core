// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#include "CosmosLikeUnbondingListCallback.hpp"  // my header
#include "CosmosLikeUnbonding.hpp"
#include "Error.hpp"
#include "Marshal.hpp"

namespace djinni_generated {

CosmosLikeUnbondingListCallback::CosmosLikeUnbondingListCallback() : ::djinni::JniInterface<::ledger::core::api::CosmosLikeUnbondingListCallback, CosmosLikeUnbondingListCallback>() {}

CosmosLikeUnbondingListCallback::~CosmosLikeUnbondingListCallback() = default;

CosmosLikeUnbondingListCallback::JavaProxy::JavaProxy(JniType j) : Handle(::djinni::jniGetThreadEnv(), j) { }

CosmosLikeUnbondingListCallback::JavaProxy::~JavaProxy() = default;

void CosmosLikeUnbondingListCallback::JavaProxy::onCallback(const std::experimental::optional<std::vector<std::shared_ptr<::ledger::core::api::CosmosLikeUnbonding>>> & c_result, const std::experimental::optional<::ledger::core::api::Error> & c_error) {
    auto jniEnv = ::djinni::jniGetThreadEnv();
    ::djinni::JniLocalScope jscope(jniEnv, 10);
    const auto& data = ::djinni::JniClass<::djinni_generated::CosmosLikeUnbondingListCallback>::get();
    jniEnv->CallVoidMethod(Handle::get().get(), data.method_onCallback,
                           ::djinni::get(::djinni::Optional<std::experimental::optional, ::djinni::List<::djinni_generated::CosmosLikeUnbonding>>::fromCpp(jniEnv, c_result)),
                           ::djinni::get(::djinni::Optional<std::experimental::optional, ::djinni_generated::Error>::fromCpp(jniEnv, c_error)));
    ::djinni::jniExceptionCheck(jniEnv);
}

}  // namespace djinni_generated
