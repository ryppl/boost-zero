# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostMPI CXX)

find_package(MPI)
if(NOT MPI_FOUND)
  return()
endif(NOT MPI_FOUND)

find_package(Boost
  COMPONENTS
    cmake
    config
    conversion
    core
    exception
    function
    graph
    integer
    iterator
    mpl
    optional
    property_map
    python
    serialization
    smart_ptr
    static_assert
    type_traits
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})
include(BoostExport)

include_directories(
  include
  ${MPI_INCLUDE_PATH}
  )

if(MSVC)
  add_definitions(
    /wd4251 # class needs to have dll-interface to be used by clients
    /wd4275 # non dll-interface class used as base for dll-interface class
    )
endif(MSVC)

add_library(boost_mpi
  src/broadcast.cpp
  src/communicator.cpp
  src/computation_tree.cpp
  src/content_oarchive.cpp
  src/environment.cpp
  src/exception.cpp
  src/graph_communicator.cpp
  src/group.cpp
  src/intercommunicator.cpp
  src/mpi_datatype_cache.cpp
  src/mpi_datatype_oarchive.cpp
  src/packed_iarchive.cpp
  src/packed_oarchive.cpp
  src/packed_skeleton_iarchive.cpp
  src/packed_skeleton_oarchive.cpp
  src/point_to_point.cpp
  src/request.cpp
  src/text_skeleton_oarchive.cpp
  src/timer.cpp
  )

target_link_libraries(boost_mpi
  ${Boost_LIBRARIES}
  ${MPI_LIBRARIES}
  )

add_subdirectory(src/python)

boost_export(
  TARGETS
    boost_mpi
  BOOST_DEPENDS
    serialization
  INCLUDE_DIRECTORIES
    include
  )
