# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostGeometry NONE)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(RypplExport)

ryppl_export(
  DEPENDS
    BoostAlgorithm 
    BoostArray 
    BoostAssign 
    BoostConceptCheck 
    BoostConfig 
    BoostConversion 
    BoostCore 
    BoostForeach 
    BoostFunctionTypes 
    BoostFusion 
    BoostInteger 
    BoostIterator 
    BoostMath 
    BoostMPL 
    BoostMSM 
    BoostNumeric 
    BoostPolygon 
    BoostProgramOptions 
    BoostProto 
    BoostRange 
    BoostRational 
    BoostSmartPtr 
    BoostStaticAssert 
    BoostTest 
    BoostTimer 
    BoostTokenizer 
    BoostTuple 
    BoostTypeTraits 
    BoostTypeof 
    BoostUnits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
