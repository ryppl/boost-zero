# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostMSM HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/msm.xml
  SUMMARY "A very high-performance library for expressive UML2 finite state machines."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/msm/"
  AUTHOR "Christophe Henry"
  MAINTAINER "Christophe Henry"
  CATEGORY Development
  KEYWORDS "Boost" "State"
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
    circular_buffer
    config
    function
    fusion
    mpl
    parameter
    phoenix
    preprocessor
    proto
    serialization
    smart_ptr
    statechart
    timer
    tuple
    type_traits
    typeof
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
