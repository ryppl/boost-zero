# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostUUID HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/uuid.xml
  SUMMARY "A universally unique identifier."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/uuid/"
  AUTHOR "Andy Tompkins"
  MAINTAINER "Andy Tompkins"
  CATEGORY Development
  KEYWORDS "Boost" "Domain" "Data"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    exception
    integer
    io
    iterator
    random
    serialization
    smart_ptr
    static_assert
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
