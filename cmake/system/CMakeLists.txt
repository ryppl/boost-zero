# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostSystem CXX)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake config integer utility NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddLibrary)
include(BoostExport)

boost_add_library(system
  src/error_code.cpp
  src/local_free_on_destruction.hpp
  )

boost_export(
  TARGETS
    system
  BOOST_DEPENDS
    config
    integer
    utility
  INCLUDE_DIRECTORIES
    include
  )

#add_subdirectory(doc)
