# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostAlgorithm)

include(Ryppl)

ryppl_add_test_subdirectory(test)

ryppl_export(
  DEPENDS
    BoostBind 
    BoostConceptCheck 
    BoostConfig 
    BoostFunction 
    BoostIterator 
    BoostMPL 
    BoostRange 
    BoostRegex 
    BoostTuple 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
