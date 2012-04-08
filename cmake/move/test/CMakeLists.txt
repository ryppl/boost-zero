# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt
find_package(Boost COMPONENTS config test NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)

boost_add_test_suite(
  RUN
    back_move_inserter.cpp
    construct_forward.cpp
    conversion_test.cpp
    copy_elision_test.cpp
    copy_move_optimization.cpp
    move.cpp
    move_algorithm.cpp
    move_iterator.cpp
  NO_SINGLE_TARGET 
  )
