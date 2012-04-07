# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS assign NO_MODULE)
include("${Boost_USE_FILE}")

boost_add_multiple_tests(
  RUN
    ptr_inserter
    ptr_vector
    ptr_list
    ptr_deque
    ptr_set
    ptr_map
    ptr_map_adapter
    ptr_array
    tree_test
    incomplete_type_test
    view_example.cpp
    iterator_test
    tut1
    indirect_fun
    serialization
    no_exceptions
    ptr_unordered_set
    ptr_unordered_map
    ptr_circular_buffer
    const_element_containers
#   null_filter_iterator
  LINK_BOOST_LIBRARIES
    unit_test_framework
    serialization
  )
