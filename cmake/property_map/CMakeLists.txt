# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostPropertyMap HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/property_map.xml
  SUMMARY "Concepts defining interfaces which map key objects to value objects."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/property_map/"
  AUTHOR "Jeremy Siek"
  MAINTAINER "Jeremy Siek"
  CATEGORY Development
  KEYWORDS "Boost" "Generic" "Containers"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    any
    bind
    concept_check
    config
    conversion
    core
    exception
    function
    graph
    iterator
    mpl
    multi_index
    optional
    serialization
    smart_ptr
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
