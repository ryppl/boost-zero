# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostGraphParallel CXX)

find_package(Boost COMPONENTS conversion graph mpi utility NO_MODULE)
include(${Boost_USE_FILE})

if(MSVC)
  add_definitions(
    /wd4251 # class needs to have dll-interface to be used by clients
    /wd4275 # non dll-interface class used as base for dll-interface class
    /wd4800 # forcing value to bool 'true' or 'false' (performance warning)
    )
endif(MSVC)

find_package(MPI)
if(NOT MPI_FOUND)
  message(STATUS "Graph library does not contain MPI-based parallel components.")
  return()
endif()

include_directories(${MPI_INCLUDE_PATH})

add_library(boost_graph_parallel
  src/mpi_process_group.cpp
  src/tag_allocator.cpp
  )
  
target_link_libraries(boost_graph_parallel
  boost_mpi
  #${MPI_LIBRARIES}
  # <define>BOOST_GRAPH_NO_LIB=1
  # <link>shared:<define>BOOST_GRAPH_DYN_LINK=1
  # <toolset>intel-vc71-win-9.1:<optimization>off
  # <toolset>msvc-7.1:<cxxflags>-GR-
  )
