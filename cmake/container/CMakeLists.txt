# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostContainer)

include(RypplExport)

add_subdirectory(test)

ryppl_export(
  DEPENDS
    BoostConfig 
    BoostIntrusive 
    BoostMove 
    BoostMPL 
    BoostPreprocessor 
    BoostSmartPtr 
    BoostStaticAssert 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
