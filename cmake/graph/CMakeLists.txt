# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
include(RypplProject)
ryppl_project(BoostGraph
  FEED_URI http://ryppl.github.com/feeds/boost/graph.xml
  SUMMARY "The BGL graph interface and graph components are generic, in the same sense as the the Standard Template Library (STL)."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/graph/"
  AUTHOR "Jeremiah Willcock." "a University of Notre Dame team: now maintained by Andrew Sutton" "Jeremy Siek"
  MAINTAINER "Jeremiah Willcock." "a University of Notre Dame team: now maintained by Andrew Sutton" "Jeremy Siek"
  CATEGORY Development
  KEYWORDS "Boost" "Iterators" "Algorithms" "Containers"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(Boost
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
include(BoostAddLibrary)
include(BoostExport)

boost_add_library(graph
  SOURCES
    src/read_graphviz_new.cpp
    src/graphml.cpp
  LINK_LIBRARIES
    ${Boost_LIBRARIES}
  )

boost_export(
  TARGETS
    graph
  BOOST_DEPENDS
    property_map
    serialization
  INCLUDE_DIRECTORIES
    include
  )
