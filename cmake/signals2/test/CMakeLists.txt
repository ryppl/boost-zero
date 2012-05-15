# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostSignals2)
ryppl_find_and_use_package(BoostTest)
ryppl_find_and_use_package(BoostThread)

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
