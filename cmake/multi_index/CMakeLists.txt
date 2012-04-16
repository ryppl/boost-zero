# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostMultiIndex NONE)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(RypplExport)

ryppl_export(
  DEPENDS
    BoostBind 
    BoostConfig 
    BoostCore 
    BoostException 
    BoostForeach 
    BoostFunctional 
    BoostIterator 
    BoostMPL 
    BoostPreprocessor 
    BoostStaticAssert 
    BoostTuple 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
