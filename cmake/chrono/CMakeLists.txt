# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostChrono CXX)

find_package(Boost
  COMPONENTS
    accumulators
    cmake
    config
    core
    exception
    format
    integer
    interprocess
    math
    mpl
    ratio
    static_assert
    system
    type_traits
    typeof
    utility
  NO_MODULE
  )
include("${Boost_USE_FILE}")
include(BoostAddLibrary)
include(BoostExport)

if(CMAKE_SYSTEM MATCHES "Linux")
  find_library(RT_LIBRARY rt)
endif(CMAKE_SYSTEM MATCHES "Linux") 

boost_add_library(chrono
  SOURCES
    src/chrono.cpp
    src/thread_clock.cpp
    src/process_cpu_clocks.cpp
  LINK_LIBRARIES
    ${Boost_LIBRARIES}
    ${RT_LIBRARY}
  )

boost_export(
  TARGETS
    chrono
  BOOST_DEPENDS
    accumulators
    config
    core
    exception
    format
    integer
    interprocess
    math
    mpl
    ratio
    static_assert
    system
    type_traits
    typeof
    utility
  INCLUDE_DIRECTORIES
    include
  )
