# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostMultiIndex HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/multi_index.xml
  SUMMARY "The Boost Multi-index Containers Library provides a class template named multi_index_container which enables the construction of containers maintaining one or more indices with different sorting and access semantics."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/multi_index/"
  AUTHOR "Joaquín M López Muñoz"
  MAINTAINER "Joaquín M López Muñoz"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Data" "Containers"
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
    core
    exception
    foreach
    functional
    iterator
    mpl
    preprocessor
    static_assert
    tuple
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
