# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostArray)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
#include(BoostDocumentation)
include(BoostExport)

add_subdirectory(test)
#boost_documentation(doc/array.xml)

boost_export(
  BOOST_DEPENDS
    config
    exception
    utility
  INCLUDE_DIRECTORIES
    include
  )
