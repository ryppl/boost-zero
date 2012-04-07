# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  RUN
    examples
    simple_example_1
    simple_example_2
    simple_example_3
    simple_example_4
    simple_example_5
  LINK_BOOST_LIBRARIES
    test_exec_monitor
  )
