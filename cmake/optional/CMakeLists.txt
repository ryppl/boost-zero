# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostOptional HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/optional.xml
  SUMMARY "Discriminated-union wrapper for optional values."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/optional/"
  AUTHOR "Fernando Cacciola"
  MAINTAINER "Fernando Cacciola"
  CATEGORY Development
  KEYWORDS "Boost" "Miscellaneous"
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
    mpl
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
