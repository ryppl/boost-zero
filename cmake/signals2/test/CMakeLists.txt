# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_package(BoostConfig)
ryppl_find_package(BoostTest)
ryppl_find_package(BoostAny)

add_definitions(
  ${BoostConfig_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  ${BoostAny_DEFINITIONS}
  )

include_directories(
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  ${BoostAny_INCLUDE_DIRS}
  )

ryppl_test_suite(
  RUN
    connection_test.cpp
    dead_slot_test.cpp
    deconstruct_test.cpp
    deletion_test.cpp
    ordering_test.cpp
    regression_test.cpp
    shared_connection_block_test.cpp
    signal_n_test.cpp
    signal_test.cpp
    signal_type_test.cpp
    slot_compile_test.cpp
    trackable_test.cpp
    track_test.cpp
  LINK_LIBRARIES
    boost_test_exec_monitor
  NO_SINGLE_TARGET
  )
  
ryppl_test_suite(
  RUN
    mutex_test.cpp
    threading_models_test.cpp
  LINK_LIBRARIES
    boost_thread
  NO_SINGLE_TARGET
  )
