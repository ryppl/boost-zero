# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

boost_add_multiple_tests(
  COMPILE
    function_typeof_test
    function_30
  COMPILE_FAIL
    function_test_fail1
    function_test_fail2
  RUN
    function_test
    function_n_test
    allocator_test
    stateless_test
    lambda_test
    function_arith_cxx98
    function_arith_portable
    sum_avg_cxx98
    sum_avg_portable
    mem_fun_cxx98
    mem_fun_portable
    std_bind_cxx98
    std_bind_portable
    function_ref_cxx98
    function_ref_portable
    contains_test
    contains2_test
    nothrow_swap
  LINK_BOOST_LIBRARIES
    test_exec_monitor
  )






 
