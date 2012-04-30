# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostTest)

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
