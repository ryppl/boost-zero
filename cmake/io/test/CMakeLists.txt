# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_test(
    ios_state_unit_test
  RUN
  LINK_BOOST_LIBRARIES
    unit_test_framework
  )

boost_add_test(
    ios_state_test
  RUN
  LINK_BOOST_LIBRARIES
    test_exec_monitor
  )

boost_add_test( quoted_manip_test RUN )
