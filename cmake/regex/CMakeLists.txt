# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostRegex CXX)

include(RypplFindPackage)
include(RypplExport)

ryppl_find_package(BoostConceptCheck REQUIRED)
ryppl_find_package(BoostConfig REQUIRED)
ryppl_find_package(BoostCore REQUIRED)
ryppl_find_package(BoostException REQUIRED)
ryppl_find_package(BoostFunctional REQUIRED)
ryppl_find_package(BoostInteger REQUIRED)
ryppl_find_package(BoostIterator REQUIRED)
ryppl_find_package(BoostMPL REQUIRED)
ryppl_find_package(BoostSmartPtr REQUIRED)
ryppl_find_package(BoostStaticAssert REQUIRED)
ryppl_find_package(BoostTest REQUIRED)
ryppl_find_package(BoostTimer REQUIRED)
ryppl_find_package(BoostTypeTraits REQUIRED)
ryppl_find_package(BoostUtility REQUIRED)
ryppl_find_package(BoostXpressive REQUIRED)

add_definitions(
  ${BoostConceptCheck_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFunctional_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostIterator_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  ${BoostTimer_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  ${BoostXpressive_DEFINITIONS}
  )

include_directories(
  ${BoostConceptCheck_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFunctional_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostIterator_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  ${BoostTimer_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  ${BoostXpressive_INCLUDE_DIRS}
  )

ryppl_find_package(ICU)
if(ICU_FOUND)
  add_definitions(-DBOOST_HAS_ICU=1)
endif()

add_library(boost_regex
  src/c_regex_traits.cpp
  src/cpp_regex_traits.cpp
  src/cregex.cpp
  src/fileiter.cpp
  src/icu.cpp
  src/instances.cpp
  src/posix_api.cpp
  src/regex.cpp
  src/regex_debug.cpp
  src/regex_raw_buffer.cpp
  src/regex_traits_defaults.cpp
  src/static_mutex.cpp
  src/w32_regex_traits.cpp
  src/wc_regex_traits.cpp
  src/wide_posix_api.cpp
  src/winstances.cpp 
  src/usinstances.cpp
  )

target_link_libraries(boost_regex
  ${ICU_LIBRARIES}
  ${ICU_I18N_LIBRARIES}
  )

ryppl_export(
  TARGETS
    boost_regex
  DEPENDS
    BoostConceptCheck 
    BoostConfig 
    BoostCore 
    BoostException 
    BoostFunctional 
    BoostInteger 
    BoostIterator 
    BoostMPL 
    BoostSmartPtr 
    BoostStaticAssert 
    BoostTypeTraits 
    BoostUtility 
    BoostXpressive 
  INCLUDE_DIRECTORIES
    include
  )
