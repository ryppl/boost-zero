# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostXpressive HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/xpressive.xml
  SUMMARY "Regular expressions that can be written as strings or as expression templates, and which can refer to each other and themselves recursively with the power of context-free grammars."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/xpressive/"
  AUTHOR "Eric Niebler"
  MAINTAINER "Eric Niebler"
  CATEGORY Development
  KEYWORDS "Boost" "String"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    conversion
    core
    exception
    fusion
    integer
    iterator
    mpl
    numeric
    optional
    preprocessor
    proto
    range
    smart_ptr
    spirit
    type_traits
    typeof
    utility
  INCLUDE_DIRECTORIES
    include
  )
