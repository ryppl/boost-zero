# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostTimer CXX)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    chrono
    cmake
    config
    core
    exception
    integer
    io
    system
    utility
  NO_MODULE
  )
include("${Boost_USE_FILE}")
include(BoostAddLibrary)
include(BoostExport)

boost_add_library(timer
  SOURCES
    src/auto_timers_construction.cpp
    src/cpu_timer.cpp
# LINK_LIBRARIES
#   ${Boost_LIBRARIES}
  )

boost_export(
  TARGETS
    timer
  BOOST_DEPENDS
    system
  INCLUDE_DIRECTORIES
    include
  )
