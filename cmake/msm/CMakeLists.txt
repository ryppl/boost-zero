# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostMSM NONE)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    any
    bind
    circular_buffer
    config
    function
    fusion
    mpl
    parameter
    phoenix
    preprocessor
    proto
    serialization
    smart_ptr
    statechart
    timer
    tuple
    type_traits
    typeof
    utility
  INCLUDE_DIRECTORIES
    include
  )
