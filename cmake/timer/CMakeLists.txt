# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostTimer CXX)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    chrono
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

target_link_libraries(boost_timer
  boost_chrono
  )

ryppl_export(
  TARGETS
    boost_timer
  DEPENDS
    BoostSystem 
  INCLUDE_DIRECTORIES
    include
  )
