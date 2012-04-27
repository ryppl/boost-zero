# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostGraphParallel CXX)

include(RypplFindPackage)

ryppl_find_package(BoostConversion REQUIRED)
ryppl_find_package(BoostGraph REQUIRED)
ryppl_find_package(BoostMPI REQUIRED)
ryppl_find_package(BoostUtility REQUIRED)
ryppl_find_package(MPI REQUIRED)

add_definitions(
  ${BoostConversion_DEFINITIONS}
  ${BoostGraph_DEFINITIONS}
  ${BoostMPI_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostGraph_INCLUDE_DIRS}
  ${BoostMPI_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  ${MPI_INCLUDE_PATH}
  include
  )

if(MSVC)
  add_definitions(
    /wd4251 # class needs to have dll-interface to be used by clients
    /wd4275 # non dll-interface class used as base for dll-interface class
    /wd4800 # forcing value to bool 'true' or 'false' (performance warning)
    )
endif(MSVC)

add_library(boost_graph_parallel
  src/mpi_process_group.cpp
  src/tag_allocator.cpp
  )

target_link_libraries(boost_graph_parallel
  boost_mpi
  # <define>BOOST_GRAPH_NO_LIB=1
  # <link>shared:<define>BOOST_GRAPH_DYN_LINK=1
  # <toolset>intel-vc71-win-9.1:<optimization>off
  # <toolset>msvc-7.1:<cxxflags>-GR-
  )
