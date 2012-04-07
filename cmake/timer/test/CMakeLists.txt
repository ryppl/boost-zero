# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  RUN
    ../example/auto_cpu_timer_example.cpp
    cpu_timer_info.cpp
    cpu_timer_test.cpp
  COMPILE
    original_timer_test
  LINK_BOOST_LIBRARIES
    timer
  )

boost_add_test(timex RUN
  SOURCES
    ../example/timex.cpp
  ARGS
    echo "Hello, world"
  LINK_BOOST_LIBRARIES
    timer
  )
