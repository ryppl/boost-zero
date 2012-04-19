# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostBind)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

#boost_documentation(doc/ref.xml)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    config
    core
    smart_ptr
    utility
  INCLUDE_DIRECTORIES
    include
  )
