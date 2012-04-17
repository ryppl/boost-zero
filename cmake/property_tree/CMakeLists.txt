# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostPropertyTree HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/property_tree.xml
  SUMMARY "A tree data structure especially suited to storing configuration data."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/property_tree/"
  AUTHOR "Marcin Kalicinski"
  MAINTAINER "Marcin Kalicinski"
  CATEGORY Development
  KEYWORDS "Boost" "Data" "Containers"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    any
    config
    core
    exception
    iterator
    mpl
    multi_index
    optional
    serialization
    spirit
    static_assert
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
