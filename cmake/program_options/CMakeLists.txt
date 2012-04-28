# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostProgramOptions CXX)

include(Ryppl)

ryppl_find_package(BoostAny)
ryppl_find_package(BoostBind)
ryppl_find_package(BoostConfig)
ryppl_find_package(BoostConversion)
ryppl_find_package(BoostCore)
ryppl_find_package(BoostException)
ryppl_find_package(BoostFunction)
ryppl_find_package(BoostIterator)
ryppl_find_package(BoostSmartPtr)
ryppl_find_package(BoostStaticAssert)
ryppl_find_package(BoostTokenizer)
ryppl_find_package(BoostTypeTraits)
ryppl_find_package(BoostUtility)

add_definitions(
  ${BoostAny_DEFINITIONS}
  ${BoostBind_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostConversion_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFunction_DEFINITIONS}
  ${BoostIterator_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostTokenizer_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostAny_INCLUDE_DIRS}
  ${BoostBind_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFunction_INCLUDE_DIRS}
  ${BoostIterator_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostTokenizer_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

add_library(boost_program_options
  src/cmdline
  src/config_file
  src/options_description
  src/parsers
  src/variables_map
  src/value_semantic
  src/positional_options
  src/utf8_codecvt_facet
  src/convert
  src/winmain
  src/split
  )

ryppl_export(
  TARGETS
    boost_program_options
  DEPENDS
    BoostAny 
    BoostBind 
    BoostConfig 
    BoostConversion 
    BoostCore 
    BoostException 
    BoostFunction 
    BoostIterator 
    BoostSmartPtr 
    BoostStaticAssert 
    BoostTokenizer 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
