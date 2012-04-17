# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostAccumulators HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/accumulators.xml
  SUMMARY "Framework for incremental calculation, and collection of statistical accumulators."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/accumulators/"
  AUTHOR "Eric Niebler"
  MAINTAINER "Eric Niebler"
  CATEGORY Development
  KEYWORDS "Boost" "Math"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    array
    circular_buffer
    concept_check
    config
    core
    exception
    fusion
    iterator
    mpl
    numeric
    parameter
    preprocessor
    range
    static_assert
    tuple
    type_traits
    typeof
    utility
  INCLUDE_DIRECTORIES
    include
  )
