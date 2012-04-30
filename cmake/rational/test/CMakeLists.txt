# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_package(BoostConfig)
ryppl_find_package(BoostTest)

add_definitions(
  ${BoostConfig_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )
  
ryppl_test_suite(
  RUN
    rational_example.cpp
    rational_test.cpp
  LINK_LIBRARIES
    boost_unit_test_framework
  NO_SINGLE_TARGET
  )
