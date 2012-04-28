# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostArray)

#include(BoostDocumentation)
include(RypplExport)

if(COMPONENT != dev)
  add_subdirectory(test)
endif()
#boost_documentation(doc/array.xml)

ryppl_export(
  DEPENDS
    BoostConfig 
    BoostException 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
