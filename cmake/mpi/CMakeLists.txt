# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
include(RypplProject)
ryppl_project(BoostMPI
  FEED_URI http://ryppl.github.com/feeds/boost/mpi.xml
  SUMMARY "Message Passing Interface library, for use in distributed-memory parallel application programming."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/mpi/"
  AUTHOR "Douglas Gregor" "Matthias Troyer"
  MAINTAINER "Douglas Gregor" "Matthias Troyer"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Concurrent"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

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
