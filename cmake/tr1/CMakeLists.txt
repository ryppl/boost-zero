# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostTR1 NONE)

include(RypplExport)

ryppl_export(
  DEPENDS
    BoostArray 
    BoostBind 
    BoostConfig 
    BoostFunction 
    BoostFunctional 
    BoostFusion 
    BoostIterator 
    BoostMPL 
    BoostRandom 
    BoostSmartPtr 
    BoostStaticAssert 
    BoostTuple 
    BoostTypeTraits 
    BoostUnordered 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
