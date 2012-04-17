# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostGeometry HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/geometry.xml
  SUMMARY "Geometry Library."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/geometry/"
  AUTHOR "Barend Gehrels" "Bruno Lalande" "Mateusz Loskot"
  MAINTAINER "Barend Gehrels" "Bruno Lalande" "Mateusz Loskot"
  CATEGORY Development
  KEYWORDS "Boost" "Algorithms" "Math"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

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
