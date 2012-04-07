# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS core test NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)

boost_add_test_suite(
  RUN
    basic.cpp
    std.cpp
    list_of.cpp
    ptr_list_of.cpp
    static_list_of.cpp
    tuple_list_of.cpp
    list_inserter.cpp
    ptr_list_inserter.cpp
    ptr_map_inserter.cpp
    list_of_workaround.cpp
    email_example.cpp
    my_vector_example.cpp
    multi_index_container.cpp
  LINK_LIBRARIES
    unit_test_framework-static
  NO_SINGLE_TARGET
  )
