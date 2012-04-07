# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostProto NONE)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    core
    fusion
    mpl
    preprocessor
    smart_ptr
    spirit
    static_assert
    type_traits
    typeof
    utility
  INCLUDE_DIRECTORIES
    include
  )
