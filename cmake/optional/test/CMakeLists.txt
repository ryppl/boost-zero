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
  RUN
    optional_test.cpp
    optional_test_tie.cpp
    optional_test_ref.cpp
    optional_test_inplace.cpp
    optional_test_io.cpp
  COMPILE_FAIL
    optional_test_fail1.cpp
    optional_test_fail3a.cpp
    optional_test_fail3b.cpp
    optional_test_ref_fail1.cpp
    optional_test_ref_fail3.cpp
    optional_test_ref_fail4.cpp
    optional_test_inplace_fail.cpp
    optional_test_inplace_fail2.cpp
  NO_SINGLE_TARGET
  )
