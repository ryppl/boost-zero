# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt
find_package(Boost COMPONENTS core test NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)

boost_add_test_suite(
  RUN
    format_test1.cpp
    format_test2.cpp
    format_test3.cpp
    format_test_wstring.cpp
    format_test_enum.cpp
  LINK_LIBRARIES
    test_exec_monitor-static
	NO_SINGLE_TARGET
  )
