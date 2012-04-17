# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostStatechart NONE)

include(RypplExport)

ryppl_export(
  DEPENDS
    BoostBind 
    BoostConfig 
    BoostConversion 
    BoostFunction 
    BoostMPL 
    BoostSmartPtr 
    BoostStaticAssert 
    BoostThread 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
