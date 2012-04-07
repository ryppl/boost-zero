# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  RUN
    optional_test
    optional_test_tie
    optional_test_ref
    optional_test_inplace
    optional_test_io
  COMPILE_FAIL
    optional_test_fail1
    optional_test_fail3a
    optional_test_fail3b
    optional_test_ref_fail1
    optional_test_ref_fail3
    optional_test_ref_fail4
    optional_test_inplace_fail
    optional_test_inplace_fail2
  )
