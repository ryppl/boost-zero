# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostTimer CXX)

find_package(Boost
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
include(RypplExport)

add_library(boost_timer
  src/auto_timers_construction.cpp
  src/cpu_timer.cpp
  )

ryppl_export(
  TARGETS
    boost_timer
  DEPENDS
    BoostSystem 
  INCLUDE_DIRECTORIES
    include
  )
