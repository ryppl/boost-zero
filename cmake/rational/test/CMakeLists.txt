# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  RUN
    rational_example
    rational_test
  LINK_BOOST_LIBRARIES
    unit_test_framework
  )
