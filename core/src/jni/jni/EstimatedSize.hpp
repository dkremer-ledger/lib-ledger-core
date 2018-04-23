// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tuples.djinni

#ifndef DJINNI_GENERATED_ESTIMATEDSIZE_HPP_JNI_
#define DJINNI_GENERATED_ESTIMATEDSIZE_HPP_JNI_

#include "../../api/EstimatedSize.hpp"
#include "djinni_support.hpp"

namespace djinni_generated {

class EstimatedSize final {
public:
    using CppType = ::ledger::core::api::EstimatedSize;
    using JniType = jobject;

    using Boxed = EstimatedSize;

    ~EstimatedSize();

    static CppType toCpp(JNIEnv* jniEnv, JniType j);
    static ::djinni::LocalRef<JniType> fromCpp(JNIEnv* jniEnv, const CppType& c);

private:
    EstimatedSize();
    friend ::djinni::JniClass<EstimatedSize>;

    const ::djinni::GlobalRef<jclass> clazz { ::djinni::jniFindClass("co/ledger/core/EstimatedSize") };
    const jmethodID jconstructor { ::djinni::jniGetMethodID(clazz.get(), "<init>", "(II)V") };
    const jfieldID field_min { ::djinni::jniGetFieldID(clazz.get(), "min", "I") };
    const jfieldID field_max { ::djinni::jniGetFieldID(clazz.get(), "max", "I") };
};

}  // namespace djinni_generated
#endif //DJINNI_GENERATED_ESTIMATEDSIZE_HPP_JNI_
