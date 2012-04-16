# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS conversion test NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)

ryppl_test_suite(RUN ../cast_test.cpp NO_SINGLE_TARGET)
ryppl_test_suite(RUN ../numeric_cast_test.cpp NO_SINGLE_TARGET)
#ryppl_test_suite(RUN ../lexical_cast_test.cpp NO_SINGLE_TARGET)

ryppl_test_suite(
  RUN
    implicit_cast.cpp
    lexical_cast_loopback_test.cpp
    lexical_cast_abstract_test.cpp
    lexical_cast_noncopyable_test.cpp
    lexical_cast_vc8_bug_test.cpp
    lexical_cast_wchars_test.cpp
    lexical_cast_float_types_test.cpp
    lexical_cast_inf_nan_test.cpp
  COMPILE_FAIL
    implicit_cast_fail.cpp
  LINK_LIBRARIES
    boost_unit_test_framework
  NO_SINGLE_TARGET
  )
