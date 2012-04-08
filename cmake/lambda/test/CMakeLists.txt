# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt
find_package(Boost COMPONENTS core any test NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

boost_add_test_suite(
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
