# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

#find_package(Boost COMPONENTS test NO_MODULE)
#include("${Boost_USE_FILE}")

boost_add_multiple_tests(
  RUN
    ../addressof_fn_test.cpp
    ../addressof_test.cpp
    ../addressof_test2.cpp
    ../assert_test.cpp
    ../base_from_member_test.cpp
    ../binary_search_test.cpp
    ../binary_test.cpp
    ../call_traits_test.cpp      # -u
    ../compressed_pair_test.cpp  # -u
    ../current_function_test.cpp # always_show_run_output
    ../iterators_test.cpp
    next_prior_test.cpp
    ../numeric_traits_test.cpp
    ../operators_test.cpp
    ../ref_test.cpp
    ../shared_iterator_test.cpp
    ../value_init_test.cpp
    ../value_init_workaround_test.cpp
    ../initialized_test.cpp
    ../verify_test.cpp
  COMPILE
    ../ref_ct_test.cpp
    result_of_test.cpp
  COMPILE_FAIL
    ../checked_delete_test.cpp
    ../noncopyable_test.cpp
    ../value_init_test_fail1.cpp
    ../value_init_test_fail2.cpp
    ../value_init_test_fail3.cpp
    ../initialized_test_fail1.cpp
    ../initialized_test_fail2.cpp
  LINK_BOOST_LIBRARIES
    test_exec_monitor
  )
