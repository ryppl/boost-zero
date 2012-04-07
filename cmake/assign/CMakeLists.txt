# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostAssign)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    array
    config
    mpl
    preprocessor
    ptr_container
    range
    static_assert
    tuple
    type_traits
  INCLUDE_DIRECTORIES
    include
  )
