# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostFormat HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/format.xml
  SUMMARY "The format library provides a class for formatting arguments according to a format-string, as does printf, but with two major differences: format sends the arguments to an internal stream, and so is entirely type-safe and naturally supports all user-defined types: the ellipsis (...) can not be used correctly in the strongly typed context of format, and thus the function call with arbitrary arguments is replaced by successive calls to an argument feeding operator%."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/format/"
  AUTHOR "Samuel Krempp"
  MAINTAINER "Samuel Krempp"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "String" "IO"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    core
    exception
    optional
    smart_ptr
    utility
  INCLUDE_DIRECTORIES
    include
  )

add_subdirectory(test)
