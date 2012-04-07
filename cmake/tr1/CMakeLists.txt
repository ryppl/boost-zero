# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostTR1 NONE)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    array
    bind
    config
    function
    functional
    fusion
    iterator
    #math
    mpl
    random
    #regex
    smart_ptr
    static_assert
    tuple
    type_traits
    unordered
    utility
  INCLUDE_DIRECTORIES
    include
  )
