# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostTest)

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
