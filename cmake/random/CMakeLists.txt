# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostRandom CXX)

include(Ryppl)

ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostConversion)
ryppl_find_and_use_package(BoostCore)
ryppl_find_and_use_package(BoostForeach)
ryppl_find_and_use_package(BoostFormat)
ryppl_find_and_use_package(BoostInteger)
ryppl_find_and_use_package(BoostMath)
ryppl_find_and_use_package(BoostMPL)
ryppl_find_and_use_package(BoostMultiIndex)
ryppl_find_and_use_package(BoostRange)
ryppl_find_and_use_package(BoostRegex)
ryppl_find_and_use_package(BoostSmartPtr)
ryppl_find_and_use_package(BoostStaticAssert)
ryppl_find_and_use_package(BoostTest)
ryppl_find_and_use_package(BoostTimer)
ryppl_find_and_use_package(BoostTuple)
ryppl_find_and_use_package(BoostTypeTraits)
ryppl_find_and_use_package(BoostUtility)

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
  
ryppl_add_test_subdirectory(test)

