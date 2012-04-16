# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostFunction NONE)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(RypplExport)

ryppl_export(
  DEPENDS
    BoostBind 
    BoostConfig 
    BoostException 
    BoostInteger 
    BoostMPL 
    BoostPreprocessor 
    BoostTypeTraits 
    BoostTypeof 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )

#boost_documentation(doc/function.xml)

add_subdirectory(test)
