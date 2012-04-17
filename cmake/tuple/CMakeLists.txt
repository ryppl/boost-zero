# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostTuple HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/tuple.xml
  SUMMARY "Ease definition of functions returning multiple values, and more."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/tuple/"
  AUTHOR "Jaakko Järvi"
  MAINTAINER "Jaakko Järvi"
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
    config
    static_assert
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
