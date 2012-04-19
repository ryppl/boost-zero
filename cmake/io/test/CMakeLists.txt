# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt
include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS core test NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)

ryppl_test_suite(    
  RUN
    ios_state_unit_test.cpp
  LINK_LIBRARIES
    boost_unit_test_framework
  )

ryppl_test_suite(    
  RUN
    ios_state_test.cpp
  LINK_LIBRARIES
    boost_test_exec_monitor
  )

ryppl_test_suite(  
  RUN
    quoted_manip_test.cpp
  )
