# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostArray)

#include(BoostDocumentation)
include(RypplExport)

add_subdirectory(test)
#boost_documentation(doc/array.xml)

ryppl_export(
  DEPENDS
    BoostConfig 
    BoostException 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
