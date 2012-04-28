# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostMSM NONE)

include(RypplExport)

ryppl_export(
  DEPENDS
    BoostAny 
    BoostBind 
    BoostCircularBuffer 
    BoostConfig 
    BoostFunction 
    BoostFusion 
    BoostMPL 
    BoostParameter 
    BoostPhoenix 
    BoostPreprocessor 
    BoostProto 
    BoostSerialization 
    BoostSmartPtr 
    BoostStatechart 
    BoostTimer 
    BoostTuple 
    BoostTypeTraits 
    BoostTypeof 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
  
if(COMPONENT != dev)
  add_subdirectory(test)
endif()
