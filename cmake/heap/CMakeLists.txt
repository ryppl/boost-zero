# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostHeap HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/heap.xml
  SUMMARY "Priority queue data structures."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/heap/"
  AUTHOR "Tim Blechmann"
  MAINTAINER "Tim Blechmann"
  CATEGORY Development
  KEYWORDS "Boost" "Data"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    array
    bind
    concept_check
    config
    exception
    foreach
    integer
    intrusive
    iterator
    mpl
    parameter
    static_assert
    timer
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
