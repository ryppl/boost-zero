# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostCore)

include(RypplExport)

set(Boost_VERSION_MAJOR  1)
set(Boost_VERSION_MINOR 50)
set(Boost_VERSION_PATCH  0)

math(EXPR BOOST_VERSION
  "${Boost_VERSION_MAJOR} * 100000 + ${Boost_VERSION_MINOR} * 100 + ${Boost_VERSION_PATCH}"
  )
string(REPLACE "." "_" BOOST_LIB_VERSION "${Boost_VERSION}")

configure_file(include/boost/version.hpp.in include/boost/version.hpp)

ryppl_export(
  DEPENDS
    BoostConfig 
    BoostIterator 
    BoostMPL 
    BoostTypeTraits 
  INCLUDE_DIRECTORIES
    "${PROJECT_SOURCE_DIR}/include"
    "${PROJECT_BINARY_DIR}/include"
  )

add_subdirectory(test)

