# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostSystem CXX)

find_package(Boost COMPONENTS cmake config integer utility NO_MODULE)
include(${Boost_USE_FILE})
include(RypplExport)

add_library(boost_system
  src/error_code.cpp
  src/local_free_on_destruction.hpp
  )

if(NOT BUILD_SHARED_LIBS)
  set_target_properties(boost_system PROPERTIES
    PREFIX "lib"
    )
endif(NOT BUILD_SHARED_LIBS)

ryppl_export(
  TARGETS
    boost_system
  DEPENDS
    BoostConfig 
    BoostInteger 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )

#add_subdirectory(doc)
