# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostPolygon)
ryppl_find_and_use_package(BoostTest)

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

ryppl_test_suite(
  RUN 
    gtl_boost_unit_test.cpp
  )
