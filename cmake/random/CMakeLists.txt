# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostRandom CXX)

find_package(Boost
  COMPONENTS
    cmake
    config
    conversion
    core
    foreach
    format
    integer
    math
    mpl
    multi_index
    range
    regex
    smart_ptr
    static_assert
    test
    timer
    tuple
    type_traits
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})
include(BoostExport)

add_library(boost_random
  src/random_device.cpp
  )

boost_export(
  BOOST_DEPENDS
    config
    conversion
    core
    foreach
    format
    integer
    #math
    mpl
    multi_index
    range
    #regex
    smart_ptr
    static_assert
    #test
    #timer
    tuple
    type_traits
    utility
  TARGETS
    boost_random
  INCLUDE_DIRECTORIES
    include
  )
