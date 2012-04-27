# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
include(RypplTestSuite)

ryppl_find_package(BoostAny REQUIRED)
ryppl_find_package(BoostConfig REQUIRED)
ryppl_find_package(BoostTest REQUIRED)

add_definitions(
  ${BoostAny_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostAny_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

ryppl_test_suite(
  RUN
    dynamic_properties_test.cpp
  COMPILE
    property_map_cc.cpp
  NO_SINGLE_TARGET
  )
