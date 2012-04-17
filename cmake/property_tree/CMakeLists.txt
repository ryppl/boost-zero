# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostPropertyTree NONE)

include(RypplExport)

ryppl_export(
  DEPENDS
    BoostAny 
    BoostConfig 
    BoostCore 
    BoostException 
    BoostIterator 
    BoostMPL 
    BoostMultiIndex 
    BoostOptional 
    BoostSerialization 
    BoostSpirit 
    BoostStaticAssert 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
