# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)


add_definitions(-DBOOST_LOCALE_DYN_LINK=1)

ryppl_test_suite(
  RUN
    # Configuration Information
    test_config.cpp
    # Shared
    test_utf.cpp
    test_date_time.cpp
    test_ios_prop.cpp
    test_codepage_converter.cpp
    test_codepage.cpp
    test_message.cpp #: $(BOOST_ROOT)/libs/locale/test
    test_generator.cpp
    # icu
    test_collate.cpp
    test_convert.cpp
    test_boundary.cpp
    test_formatting.cpp #: : : <optimization>off
    test_icu_vs_os_timezone.cpp
    # winapi
    test_winapi_collate.cpp
    test_winapi_convert.cpp
    test_winapi_formatting.cpp
    # posix
    test_posix_collate.cpp
    test_posix_convert.cpp
    test_posix_formatting.cpp
    # std
    test_std_collate.cpp
    test_std_convert.cpp
    test_std_formatting.cpp
  LINK_LIBRARIES
    boost_locale
    boost_system
  NO_SINGLE_TARGET
  )
