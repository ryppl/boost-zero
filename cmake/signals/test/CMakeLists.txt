# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  RUN
    dead_slot_test
    deletion_test
    ordering_test
    signal_n_test
    signal_test
    trackable_test
  LINK_BOOST_LIBRARIES
    test_exec_monitor
    signals
  )
