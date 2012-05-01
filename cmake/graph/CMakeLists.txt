# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostGraph CXX)

include(Ryppl)

ryppl_find_and_use_package(BoostPropertyMap)
ryppl_find_and_use_package(BoostPropertyTree)
ryppl_find_and_use_package(BoostSerialization)
ryppl_find_and_use_package(BoostUtility)

add_library(boost_graph
  src/read_graphviz_new.cpp
  src/graphml.cpp
  )

target_link_libraries(boost_graph
  boost_regex
  )

ryppl_export(
  TARGETS
    boost_graph
  DEPENDS
    BoostPropertyMap 
  INCLUDE_DIRECTORIES
    include
  )
