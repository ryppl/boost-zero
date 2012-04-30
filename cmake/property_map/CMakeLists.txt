# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostPropertyMap NONE)

include(Ryppl)

ryppl_export(
  DEPENDS
    BoostAny 
    BoostBind 
    BoostConceptCheck 
    BoostConfig 
    BoostConversion 
    BoostCore 
    BoostException 
    BoostFunction 
    BoostGraph 
    BoostIterator 
    BoostMPL 
    BoostMultiIndex 
    BoostOptional 
    BoostSmartPtr 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
  
ryppl_add_test_subdirectory(test)
