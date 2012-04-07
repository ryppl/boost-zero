# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  RUN
    format_test1
    format_test2
    format_test3
    format_test_wstring
    format_test_enum
  LINK_BOOST_LIBRARIES
    test_exec_monitor
  )
