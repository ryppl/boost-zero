# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostCircularBuffer HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/circular_buffer.xml
  SUMMARY "A STL compliant container also known as ring or cyclic buffer. "
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/circular_buffer/"
  AUTHOR "Jan Gaspar"
  MAINTAINER "Jan Gaspar"
  CATEGORY Development
  KEYWORDS "Boost" "Containers"
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
    core
    exception
    iterator
    static_assert
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
