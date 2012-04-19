# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostMPI CXX)

include(RypplFindPackage)
ryppl_find_package(Boost
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
include("${Boost_USE_FILE}")
include(BoostAddLibrary)
include(BoostExport)

include_directories(include)

if(MSVC)
  add_definitions(
    /wd4251 # class needs to have dll-interface to be used by clients
    /wd4275 # non dll-interface class used as base for dll-interface class
    )
endif(MSVC)

#if(BOOST_DEBIAN_PACKAGES)
#  set(BOOST_MPI_BASE mpich2)
#  set(MPI_DEBIAN_DEPENDS DEB_DEPENDS
#    DEV libmpich2-dev
#    LIB libmpich2-2
#    )
#  add_subdirectory(src mpich2)
#
#  set(BOOST_MPI_BASE openmpi)
#  set(MPI_DEBIAN_DEPENDS DEB_DEPENDS
#    DEV libopenmpi-dev libcr-dev
#    LIB libopenmpi1.3
#    )
#  add_subdirectory(src openmpi)
#else()
  add_subdirectory(src)
#endif()

boost_export(
# TARGETS
#   mpi
  BOOST_DEPENDS
    serialization
  INCLUDE_DIRECTORIES
    include
  )
