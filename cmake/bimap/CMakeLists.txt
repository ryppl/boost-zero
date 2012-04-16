# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostBimap)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(RypplExport)

add_subdirectory(test)

ryppl_export(
  DEPENDS
    BoostConceptCheck 
    BoostConfig 
    BoostException 
    BoostFunctional 
    BoostIterator 
    BoostLambda 
    BoostMPL 
    BoostMultiIndex 
    BoostPreprocessor 
    BoostPropertyMap 
    BoostSerialization 
    BoostStaticAssert 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
