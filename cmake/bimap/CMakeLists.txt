# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostBimap)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    concept_check
    config
    exception
    functional
    iterator
    lambda
    mpl
    multi_index
    preprocessor
    property_map
    serialization
    static_assert
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
