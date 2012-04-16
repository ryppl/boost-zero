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
include(RypplExport)

if(CMAKE_SYSTEM MATCHES "Linux")
  find_library(RT_LIBRARY rt)
endif(CMAKE_SYSTEM MATCHES "Linux") 

add_library(boost_chrono
  src/chrono.cpp
  src/thread_clock.cpp
  src/process_cpu_clocks.cpp
  )

target_link_libraries(boost_chrono
  ${Boost_LIBRARIES}
  ${RT_LIBRARY}
  )

ryppl_export(
  TARGETS
    boost_chrono
  DEPENDS
    BoostAccumulators 
    BoostConfig 
    BoostCore 
    BoostException 
    BoostFormat 
    BoostInteger 
    BoostInterprocess 
    BoostMath 
    BoostMPL 
    BoostRatio 
    BoostStaticAssert 
    BoostSystem 
    BoostTypeTraits 
    BoostTypeof 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
