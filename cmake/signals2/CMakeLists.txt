# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostSignals2 NONE)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    any
    bind
    config
    core
    exception
    function
    iterator
    mpl
    multi_index
    optional
    parameter
    preprocessor
    smart_ptr
    type_traits
    utility
    variant
  INCLUDE_DIRECTORIES
    include
  )
