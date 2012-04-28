# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_package(BoostCore)
ryppl_find_package(BoostTest)

add_definitions(
  ${BoostCore_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostCore_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

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
