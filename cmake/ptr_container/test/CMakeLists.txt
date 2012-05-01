# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostAssign)
ryppl_find_and_use_package(BoostSerialization)
ryppl_find_and_use_package(BoostTest)

ryppl_test_suite(
  RUN
    ptr_inserter.cpp
    ptr_vector.cpp
    ptr_list.cpp
    ptr_deque.cpp
    ptr_set.cpp
    ptr_map.cpp
    ptr_map_adapter.cpp
    ptr_array.cpp
    tree_test.cpp
    incomplete_type_test.cpp
    view_example.cpp
    iterator_test.cpp
    tut1.cpp
    indirect_fun.cpp
    serialization.cpp
    no_exceptions.cpp
    ptr_unordered_set.cpp
    ptr_unordered_map.cpp
    ptr_circular_buffer.cpp
    const_element_containers.cpp
#   null_filter_iterator.cpp
  LINK_LIBRARIES
    boost_unit_test_framework
    boost_serialization
  NO_SINGLE_TARGET
  )
