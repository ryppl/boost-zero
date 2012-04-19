# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostPropertyMap NONE)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    any
    bind
    concept_check
    config
    conversion
    core
    exception
    function
    graph
    iterator
    mpl
    multi_index
    optional
    serialization
    smart_ptr
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
