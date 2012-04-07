# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  COMPILE
    cstdint_include_test
    integer_traits_include_test
    integer_include_test
    integer_mask_include_test
    static_log2_include_test
    static_min_max_include_test
    integer_fwd_include_test
  RUN
    cstdint_test
    cstdint_test2
    integer_traits_test
    integer_test
    integer_mask_test
    static_log2_test
    static_min_max_test
  )
