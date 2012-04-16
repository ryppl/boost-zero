# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostGraph CXX)

find_package(Boost
  COMPONENTS
    algorithm
    any
    array
    bind
    cmake
    concept_check
    config
    conversion
    core
    disjoint_sets
    dynamic_bitset
    exception
    filesystem
    foreach
    function
    functional
    integer
    iterator
    math
    mpi
    mpl
    multi_index
    optional
    parameter
    property_map
    property_tree
    random
    range
    regex
    serialization
    smart_ptr
    spirit
    static_assert
    test
    tuple
    type_traits
    typeof
    unordered
    utility
    variant
    xpressive
  NO_MODULE
  )
include("${Boost_USE_FILE}")
include(BoostExport)

add_library(boost_graph
  src/read_graphviz_new.cpp
  src/graphml.cpp
  )

target_link_libraries(boost_graph
  ${Boost_LIBRARIES}
  )

boost_export(
  TARGETS
    boost_graph
  BOOST_DEPENDS
    property_map
    serialization
  INCLUDE_DIRECTORIES
    include
  )
