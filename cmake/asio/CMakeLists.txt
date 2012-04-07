# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostAsio)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    array
    bind
    config
    core
    date_time
    exception
    function
    integer
    iterator
    preprocessor
    regex
    smart_ptr
    system
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
