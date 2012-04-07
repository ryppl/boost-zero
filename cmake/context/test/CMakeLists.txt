# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS test context NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)

boost_add_test_suite(
  RUN
    test_context.cpp
  LINK_LIBRARIES
    unit_test_framework-static
		context-static
  )
