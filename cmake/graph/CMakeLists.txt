# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostGraph CXX)

include(RypplFindPackage)
include(RypplExport)

ryppl_find_package(BoostAlgorithm REQUIRED)
ryppl_find_package(BoostAny REQUIRED)
ryppl_find_package(BoostArray REQUIRED)
ryppl_find_package(BoostBind REQUIRED)
ryppl_find_package(BoostConceptCheck REQUIRED)
ryppl_find_package(BoostConfig REQUIRED)
ryppl_find_package(BoostConversion REQUIRED)
ryppl_find_package(BoostCore REQUIRED)
ryppl_find_package(BoostDisjointSets REQUIRED)
ryppl_find_package(BoostDynamicBitset REQUIRED)
ryppl_find_package(BoostException REQUIRED)
ryppl_find_package(BoostFilesystem REQUIRED)
ryppl_find_package(BoostForeach REQUIRED)
ryppl_find_package(BoostFunction REQUIRED)
ryppl_find_package(BoostFunctional REQUIRED)
ryppl_find_package(BoostInteger REQUIRED)
ryppl_find_package(BoostIterator REQUIRED)
ryppl_find_package(BoostMath REQUIRED)
ryppl_find_package(BoostMPI REQUIRED)
ryppl_find_package(BoostMPL REQUIRED)
ryppl_find_package(BoostMultiIndex REQUIRED)
ryppl_find_package(BoostOptional REQUIRED)
ryppl_find_package(BoostParameter REQUIRED)
ryppl_find_package(BoostPropertyMap REQUIRED)
ryppl_find_package(BoostPropertyTree REQUIRED)
ryppl_find_package(BoostRandom REQUIRED)
ryppl_find_package(BoostRange REQUIRED)
ryppl_find_package(BoostRegex REQUIRED)
ryppl_find_package(BoostSerialization REQUIRED)
ryppl_find_package(BoostSmartPtr REQUIRED)
ryppl_find_package(BoostSpirit REQUIRED)
ryppl_find_package(BoostStaticAssert REQUIRED)
ryppl_find_package(BoostTest REQUIRED)
ryppl_find_package(BoostTuple REQUIRED)
ryppl_find_package(BoostTypeTraits REQUIRED)
ryppl_find_package(BoostTypeof REQUIRED)
ryppl_find_package(BoostUnordered REQUIRED)
ryppl_find_package(BoostUtility REQUIRED)
ryppl_find_package(BoostVariant REQUIRED)
ryppl_find_package(BoostXpressive REQUIRED)

add_definitions(
  ${BoostAlgorithm_DEFINITIONS}
  ${BoostAny_DEFINITIONS}
  ${BoostArray_DEFINITIONS}
  ${BoostBind_DEFINITIONS}
  ${BoostConceptCheck_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostConversion_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostDisjointSets_DEFINITIONS}
  ${BoostDynamicBitset_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFilesystem_DEFINITIONS}
  ${BoostForeach_DEFINITIONS}
  ${BoostFunction_DEFINITIONS}
  ${BoostFunctional_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostIterator_DEFINITIONS}
  ${BoostMath_DEFINITIONS}
  ${BoostMPI_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostMultiIndex_DEFINITIONS}
  ${BoostOptional_DEFINITIONS}
  ${BoostParameter_DEFINITIONS}
  ${BoostPropertyMap_DEFINITIONS}
  ${BoostPropertyTree_DEFINITIONS}
  ${BoostRandom_DEFINITIONS}
  ${BoostRange_DEFINITIONS}
  ${BoostRegex_DEFINITIONS}
  ${BoostSerialization_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostSpirit_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  ${BoostTuple_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostTypeof_DEFINITIONS}
  ${BoostUnordered_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  ${BoostVariant_DEFINITIONS}
  ${BoostXpressive_DEFINITIONS}
  )

include_directories(
  ${BoostAlgorithm_INCLUDE_DIRS}
  ${BoostAny_INCLUDE_DIRS}
  ${BoostArray_INCLUDE_DIRS}
  ${BoostBind_INCLUDE_DIRS}
  ${BoostConceptCheck_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostDisjointSets_INCLUDE_DIRS}
  ${BoostDynamicBitset_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFilesystem_INCLUDE_DIRS}
  ${BoostForeach_INCLUDE_DIRS}
  ${BoostFunction_INCLUDE_DIRS}
  ${BoostFunctional_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostIterator_INCLUDE_DIRS}
  ${BoostMath_INCLUDE_DIRS}
  ${BoostMPI_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostMultiIndex_INCLUDE_DIRS}
  ${BoostOptional_INCLUDE_DIRS}
  ${BoostParameter_INCLUDE_DIRS}
  ${BoostPropertyMap_INCLUDE_DIRS}
  ${BoostPropertyTree_INCLUDE_DIRS}
  ${BoostRandom_INCLUDE_DIRS}
  ${BoostRange_INCLUDE_DIRS}
  ${BoostRegex_INCLUDE_DIRS}
  ${BoostSerialization_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostSpirit_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  ${BoostTuple_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostTypeof_INCLUDE_DIRS}
  ${BoostUnordered_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  ${BoostVariant_INCLUDE_DIRS}
  ${BoostXpressive_INCLUDE_DIRS}
  )

add_library(boost_graph
  src/read_graphviz_new.cpp
  src/graphml.cpp
  )

target_link_libraries(boost_graph
  boost_regex
  )

ryppl_export(
  TARGETS
    boost_graph
  DEPENDS
    BoostPropertyMap 
    BoostSerialization 
  INCLUDE_DIRECTORIES
    include
  )
