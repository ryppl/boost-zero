# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostRandom CXX)

include(RypplFindPackage)
include(RypplExport)

ryppl_find_package(BoostConfig REQUIRED)
ryppl_find_package(BoostConversion REQUIRED)
ryppl_find_package(BoostCore REQUIRED)
ryppl_find_package(BoostForeach REQUIRED)
ryppl_find_package(BoostFormat REQUIRED)
ryppl_find_package(BoostInteger REQUIRED)
ryppl_find_package(BoostMath REQUIRED)
ryppl_find_package(BoostMPL REQUIRED)
ryppl_find_package(BoostMultiIndex REQUIRED)
ryppl_find_package(BoostRange REQUIRED)
ryppl_find_package(BoostRegex REQUIRED)
ryppl_find_package(BoostSmartPtr REQUIRED)
ryppl_find_package(BoostStaticAssert REQUIRED)
ryppl_find_package(BoostTest REQUIRED)
ryppl_find_package(BoostTimer REQUIRED)
ryppl_find_package(BoostTuple REQUIRED)
ryppl_find_package(BoostTypeTraits REQUIRED)
ryppl_find_package(BoostUtility REQUIRED)

add_definitions(
  ${BoostConfig_DEFINITIONS}
  ${BoostConversion_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostForeach_DEFINITIONS}
  ${BoostFormat_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostMath_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostMultiIndex_DEFINITIONS}
  ${BoostRange_DEFINITIONS}
  ${BoostRegex_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  ${BoostTimer_DEFINITIONS}
  ${BoostTuple_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostForeach_INCLUDE_DIRS}
  ${BoostFormat_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostMath_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostMultiIndex_INCLUDE_DIRS}
  ${BoostRange_INCLUDE_DIRS}
  ${BoostRegex_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  ${BoostTimer_INCLUDE_DIRS}
  ${BoostTuple_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

add_library(boost_random
  src/random_device.cpp
  )

ryppl_export(
  TARGETS
    boost_random
  DEPENDS
    BoostConfig 
    BoostConversion 
    BoostCore 
    BoostForeach 
    BoostFormat 
    BoostInteger 
    BoostMPL 
    BoostMultiIndex 
    BoostRange 
    BoostSmartPtr 
    BoostStaticAssert 
    BoostTuple 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
