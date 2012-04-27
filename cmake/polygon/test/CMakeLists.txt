# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
include(RypplTestSuite)

ryppl_find_package(BoostConfig REQUIRED)
ryppl_find_package(BoostTest REQUIRED)

add_definitions(
  ${BoostConfig_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

ryppl_test_suite(
  RUN 
    gtl_boost_unit_test.cpp
  )
