# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostTest)

ryppl_test_suite(
  RUN
    dead_slot_test.cpp
    deletion_test.cpp
    ordering_test.cpp
    signal_n_test.cpp
    signal_test.cpp
    trackable_test.cpp
  LINK_LIBRARIES
    boost_test_exec_monitor
    boost_signals
  NO_SINGLE_TARGET
  )
