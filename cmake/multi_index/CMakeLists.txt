# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostMultiIndex NONE)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    bind
    config
    core
    exception
    foreach
    functional
    iterator
    mpl
    preprocessor
    static_assert
    tuple
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
