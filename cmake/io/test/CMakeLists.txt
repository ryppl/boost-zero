# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt
find_package(Boost COMPONENTS core test NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)

boost_add_test_suite(    
  RUN
    ios_state_unit_test.cpp
  LINK_LIBRARIES
    unit_test_framework-static
  )

boost_add_test_suite(    
  RUN
    ios_state_test.cpp
  LINK_LIBRARIES
    test_exec_monitor-static
  )

boost_add_test_suite(  
  RUN
    quoted_manip_test.cpp
  )
