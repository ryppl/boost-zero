# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostFlyweight HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/flyweight.xml
  SUMMARY "Design pattern to manage large quantities of highly redundant objects."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/flyweight/"
  AUTHOR "Joaquín M López Muñoz"
  MAINTAINER "Joaquín M López Muñoz"
  CATEGORY Development
  KEYWORDS "Boost" "Patterns"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    interprocess
    mpl
    multi_index
    parameter
    preprocessor
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )

add_subdirectory(test)
