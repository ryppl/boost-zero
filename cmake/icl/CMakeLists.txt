# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostICL HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/icl.xml
  SUMMARY "Interval Container Library, interval sets and maps and aggregation of associated values"
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/icl/"
  AUTHOR "Joachim Faulhaber"
  MAINTAINER "Joachim Faulhaber"
  CATEGORY Development
  KEYWORDS "Boost" "Data" "Containers"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    concept_check
    config
    container
    date_time
    interprocess
    iterator
    move
    mpl
    rational
    static_assert
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
