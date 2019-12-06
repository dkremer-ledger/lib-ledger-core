// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from configuration.djinni

#ifndef DJINNI_GENERATED_POOLCONFIGURATION_HPP
#define DJINNI_GENERATED_POOLCONFIGURATION_HPP

#include <string>
#ifndef LIBCORE_EXPORT
    #if defined(_MSC_VER)
       #include <libcore_export.h>
    #else
       #define LIBCORE_EXPORT
    #endif
#endif

namespace ledger { namespace core { namespace api {

/** Configuration of wallet pools. */
class LIBCORE_EXPORT PoolConfiguration {
public:
    virtual ~PoolConfiguration() {}

    /** Name to use for the database. */
    static std::string const DATABASE_NAME;

    /**
     * Enable internal logging.
     *
     * Set to true by default.
     */
    static std::string const ENABLE_INTERNAL_LOGGING;

    /**
     * Enable internal logging.
     *
     * Set to true by default.
     */
    static std::string const USE_PG_DATABASE;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_POOLCONFIGURATION_HPP
