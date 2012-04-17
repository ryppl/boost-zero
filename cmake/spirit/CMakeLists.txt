# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostSpirit NONE)

include(RypplExport)

ryppl_export(
  DEPENDS
    BoostAlgorithm 
    BoostArray 
    BoostAssign 
    BoostBind 
    BoostConceptCheck 
    BoostConfig 
    BoostConversion 
    BoostCore 
    BoostException 
    BoostForeach 
    BoostFormat 
    BoostFunction 
    BoostFunctionTypes 
    BoostFusion 
    BoostInteger 
    BoostIO 
    BoostIOStreams 
    BoostIterator 
    BoostMPL 
    BoostOptional 
    BoostPhoenix 
    BoostPool 
    BoostPreprocessor 
    BoostProto 
    BoostRange 
    BoostSmartPtr 
    BoostStaticAssert 
    BoostTypeTraits 
    BoostTypeof 
    BoostUnordered 
    BoostUtility 
    BoostVariant 
  INCLUDE_DIRECTORIES
    include
  )
