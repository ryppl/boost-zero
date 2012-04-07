# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

boost_add_multiple_tests(
  RUN
    algorithm_test
    bind_tests_simple
    bind_tests_advanced
    bind_tests_simple_f_refs
    bll_and_function
    cast_test
    constructor_tests
    control_structures
    exception_test
    extending_rt_traits
    is_instance_of_test
    member_pointer_test
    operator_tests_simple
    phoenix_control_structures
    switch_construct
    result_of_tests
    ret_test
  )
