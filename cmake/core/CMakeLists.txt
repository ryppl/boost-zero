# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostCore HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/boostcore.xml
  SUMMARY "***WRITE ME (one line)***"
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/"
  AUTHOR 
  MAINTAINER 
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" 
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)


math(EXPR BOOST_VERSION
  "${Boost_VERSION_MAJOR} * 100000 + ${Boost_VERSION_MINOR} * 100 + ${Boost_VERSION_PATCH}"
  )
string(REPLACE "." "_" BOOST_LIB_VERSION "${Boost_VERSION}")

configure_file(include/boost/version.hpp.in include/boost/version.hpp)

boost_export(
  BOOST_DEPENDS
    config
    iterator
    mpl
    type_traits
  INCLUDE_DIRECTORIES
    "${PROJECT_SOURCE_DIR}/include"
    "${PROJECT_BINARY_DIR}/include"
  )

add_subdirectory(test)

