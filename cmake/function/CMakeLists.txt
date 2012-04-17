# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostFunction HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/function.xml
  SUMMARY "Function object wrappers for deferred calls or callbacks."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/function/"
  AUTHOR "Doug Gregor"
  MAINTAINER "Doug Gregor"
  CATEGORY Development
  KEYWORDS "Boost" "Programming" "Function-objects"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    bind
    config
    exception
    integer
    mpl
    preprocessor
    type_traits
    typeof
    utility
  INCLUDE_DIRECTORIES
    include
  )

#boost_documentation(doc/function.xml)

add_subdirectory(test)
