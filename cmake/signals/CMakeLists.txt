# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostSignals CXX)

include(RypplFindPackage)

ryppl_find_package(BoostAny REQUIRED)
ryppl_find_package(BoostConfig REQUIRED)
ryppl_find_package(BoostCore REQUIRED)
ryppl_find_package(BoostFunction REQUIRED)
ryppl_find_package(BoostIterator REQUIRED)
ryppl_find_package(BoostMPL REQUIRED)
ryppl_find_package(BoostOptional REQUIRED)
ryppl_find_package(BoostSmartPtr REQUIRED)
ryppl_find_package(BoostTypeTraits REQUIRED)
ryppl_find_package(BoostUtility REQUIRED)

add_definitions(
  ${BoostAny_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostFunction_DEFINITIONS}
  ${BoostIterator_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostOptional_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostAny_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostFunction_INCLUDE_DIRS}
  ${BoostIterator_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostOptional_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  include
  )

if(MSVC)
  add_definitions(
    /wd4251 # class needs to have dll-interface to be used by clients
    /wd4275 # 'boost::noncopyable' used as base for dll-interface class 
    )
endif(MSVC)

add_library(boost_signals
  src/trackable.cpp
  src/connection.cpp
  src/named_slot_map.cpp
  src/signal_base.cpp
  src/slot.cpp
  )
