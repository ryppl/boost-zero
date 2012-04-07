# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  RUN
    basic
    std
    list_of
    ptr_list_of
    static_list_of
    tuple_list_of
    list_inserter
    ptr_list_inserter
    ptr_map_inserter
    list_of_workaround
    email_example
    my_vector_example
    multi_index_container
  LINK_BOOST_LIBRARIES
    unit_test_framework
  )
