# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostGraph CXX)

include(Ryppl)

ryppl_find_and_use_package(BoostAlgorithm)
ryppl_find_and_use_package(BoostAny)
ryppl_find_and_use_package(BoostArray)
ryppl_find_and_use_package(BoostBind)
ryppl_find_and_use_package(BoostConceptCheck)
ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostConversion)
ryppl_find_and_use_package(BoostCore)
ryppl_find_and_use_package(BoostDisjointSets)
ryppl_find_and_use_package(BoostDynamicBitset)
ryppl_find_and_use_package(BoostException)
ryppl_find_and_use_package(BoostFilesystem)
ryppl_find_and_use_package(BoostForeach)
ryppl_find_and_use_package(BoostFunction)
ryppl_find_and_use_package(BoostFunctional)
ryppl_find_and_use_package(BoostInteger)
ryppl_find_and_use_package(BoostIterator)
ryppl_find_and_use_package(BoostMath)
ryppl_find_and_use_package(BoostMPL)
ryppl_find_and_use_package(BoostMultiIndex)
ryppl_find_and_use_package(BoostOptional)
ryppl_find_and_use_package(BoostParameter)
ryppl_find_and_use_package(BoostPropertyMap)
ryppl_find_and_use_package(BoostPropertyTree)
ryppl_find_and_use_package(BoostRandom)
ryppl_find_and_use_package(BoostRange)
ryppl_find_and_use_package(BoostRegex)
ryppl_find_and_use_package(BoostSerialization)
ryppl_find_and_use_package(BoostSmartPtr)
ryppl_find_and_use_package(BoostSpirit)
ryppl_find_and_use_package(BoostStaticAssert)
ryppl_find_and_use_package(BoostTest)
ryppl_find_and_use_package(BoostTuple)
ryppl_find_and_use_package(BoostTypeTraits)
ryppl_find_and_use_package(BoostTypeof)
ryppl_find_and_use_package(BoostUnordered)
ryppl_find_and_use_package(BoostUtility)
ryppl_find_and_use_package(BoostVariant)
ryppl_find_and_use_package(BoostXpressive)

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
  INCLUDE_DIRECTORIES
    include
  )
