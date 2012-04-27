# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
include(RypplTestSuite)

ryppl_find_package(BoostConfig REQUIRED)
ryppl_find_package(BoostTest REQUIRED)

add_definitions(
  ${BoostConfig_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

ryppl_test_suite(
  COMPILE
    cstdint_include_test.cpp
    integer_traits_include_test.cpp
    integer_include_test.cpp
    integer_mask_include_test.cpp
    static_log2_include_test.cpp
    static_min_max_include_test.cpp
    integer_fwd_include_test.cpp
  RUN
    cstdint_test.cpp
    cstdint_test2.cpp
    integer_traits_test.cpp
    integer_test.cpp
    integer_mask_test.cpp
    static_log2_test.cpp
    static_min_max_test.cpp
  NO_SINGLE_TARGET
  )
