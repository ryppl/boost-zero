# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostChrono CXX)

include(RypplFindPackage)
include(RypplExport)

ryppl_find_package(BoostAccumulators)
ryppl_find_package(BoostConfig)
ryppl_find_package(BoostCore)
ryppl_find_package(BoostException)
ryppl_find_package(BoostFormat)
ryppl_find_package(BoostInteger)
ryppl_find_package(BoostInterprocess)
ryppl_find_package(BoostMath)
ryppl_find_package(BoostMPL)
ryppl_find_package(BoostRatio)
ryppl_find_package(BoostStaticAssert)
ryppl_find_package(BoostSystem)
ryppl_find_package(BoostTypeTraits)
ryppl_find_package(BoostTypeof)
ryppl_find_package(BoostUtility)

add_definitions(
  ${BoostAccumulators_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFormat_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostInterprocess_DEFINITIONS}
  ${BoostMath_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostRatio_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostSystem_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostTypeof_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostAccumulators_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFormat_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostInterprocess_INCLUDE_DIRS}
  ${BoostMath_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostRatio_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostSystem_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostTypeof_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

if(CMAKE_SYSTEM MATCHES "Linux")
  find_library(RT_LIBRARY rt)
endif(CMAKE_SYSTEM MATCHES "Linux") 

add_library(boost_chrono
  src/chrono.cpp
  src/thread_clock.cpp
  src/process_cpu_clocks.cpp
  )

target_link_libraries(boost_chrono
  boost_system
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
