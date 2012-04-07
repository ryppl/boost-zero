# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_test(cast_test         RUN ../cast_test)
boost_add_test(numeric_cast_test RUN ../numeric_cast_test)
#boost_add_test(lexical_cast_test RUN ../lexical_cast_test)

boost_add_multiple_tests(
  RUN
    implicit_cast
    lexical_cast_loopback_test
    lexical_cast_abstract_test
    lexical_cast_noncopyable_test
    lexical_cast_vc8_bug_test
    lexical_cast_wchars_test
    lexical_cast_float_types_test
    lexical_cast_inf_nan_test
  COMPILE_FAIL
    implicit_cast_fail
  LINK_BOOST_LIBRARIES
    unit_test_framework
  )
