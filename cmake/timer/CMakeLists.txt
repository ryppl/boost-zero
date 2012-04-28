# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostTimer CXX)

include(Ryppl)

ryppl_find_package(BoostChrono)
ryppl_find_package(BoostConfig)
ryppl_find_package(BoostCore)
ryppl_find_package(BoostException)
ryppl_find_package(BoostInteger)
ryppl_find_package(BoostIO)
ryppl_find_package(BoostSystem)
ryppl_find_package(BoostUtility)

add_definitions(
  ${BoostChrono_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostIO_DEFINITIONS}
  ${BoostSystem_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostChrono_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostIO_INCLUDE_DIRS}
  ${BoostSystem_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

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
