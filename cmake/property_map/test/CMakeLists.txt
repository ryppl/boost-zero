# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostPropertyMap)
ryppl_find_and_use_package(BoostTest)

ryppl_test_suite(
  RUN
    dynamic_properties_test.cpp
  COMPILE
    property_map_cc.cpp
  NO_SINGLE_TARGET
  )
