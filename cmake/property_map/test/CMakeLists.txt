# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS any config test NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)

boost_add_test_suite(
  RUN
    dynamic_properties_test.cpp
  COMPILE
    property_map_cc.cpp
  NO_SINGLE_TARGET
  )
