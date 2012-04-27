# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
include(RypplTestSuite)

ryppl_find_package(BoostCore)
ryppl_find_package(BoostAny)
ryppl_find_package(BoostTest)

add_definitions(
  ${BoostCore_DEFINITIONS}
  ${BoostAny_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostCore_INCLUDE_DIRS}
  ${BoostAny_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

ryppl_test_suite(
  RUN
    algorithm_test.cpp
    bind_tests_simple.cpp
    bind_tests_advanced.cpp
    bind_tests_simple_f_refs.cpp
    bll_and_function.cpp
    cast_test.cpp
    constructor_tests.cpp
    control_structures.cpp
    exception_test.cpp
    extending_rt_traits.cpp
    is_instance_of_test.cpp
    member_pointer_test.cpp
    operator_tests_simple.cpp
    phoenix_control_structures.cpp
    switch_construct.cpp
    result_of_tests.cpp
    ret_test.cpp
  NO_SINGLE_TARGET
  )
