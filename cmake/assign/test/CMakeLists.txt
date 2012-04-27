# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
include(RypplTestSuite)

ryppl_find_package(BoostCore REQUIRED)
ryppl_find_package(BoostTest REQUIRED)

add_definitions(
  ${BoostCore_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostCore_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

ryppl_test_suite(
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
    boost_unit_test_framework
  NO_SINGLE_TARGET
  )
