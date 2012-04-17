# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostHeap NONE)

include(RypplExport)

ryppl_export(
  DEPENDS
    BoostArray 
    BoostBind 
    BoostConceptCheck 
    BoostConfig 
    BoostException 
    BoostForeach 
    BoostInteger 
    BoostIntrusive 
    BoostIterator 
    BoostMPL 
    BoostParameter 
    BoostStaticAssert 
    BoostTimer 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
