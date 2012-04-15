# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostGeometry NONE)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    algorithm
    array
    assign
    concept_check
    config
    conversion
    core
    foreach
    function_types
    fusion
    integer
    iterator
    math
    mpl
    msm
    numeric
    polygon
    program_options
    proto
    range
    rational
    smart_ptr
    static_assert
    test
    timer
    tokenizer
    tuple
    type_traits
    typeof
    units
    utility
  INCLUDE_DIRECTORIES
    include
  )
