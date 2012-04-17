# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostForeach NONE)

include(RypplExport)

ryppl_export(
  DEPENDS
    BoostConfig 
    BoostIterator 
    BoostMPL 
    BoostRange 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )

#boost_documentation(doc/foreach.qbk)

add_subdirectory(test)
