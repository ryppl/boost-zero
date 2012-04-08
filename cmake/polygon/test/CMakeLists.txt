# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS config test NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

boost_add_test_suite(
  RUN 
    gtl_boost_unit_test.cpp
  )
