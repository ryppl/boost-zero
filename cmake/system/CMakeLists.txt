# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostSystem CXX)

include(Ryppl)

ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostInteger)
ryppl_find_and_use_package(BoostUtility)

add_definitions(
  ${BoostConfig_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

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
