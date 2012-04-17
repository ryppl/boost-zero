# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostStatechart HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/statechart.xml
  SUMMARY "Boost.Statechart - Arbitrarily complex finite state machines can be implemented in easily readable and maintainable C++ code."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/statechart/"
  AUTHOR "Andreas Huber Dönni"
  MAINTAINER "Andreas Huber Dönni"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "State"
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
    conversion
    function
    mpl
    smart_ptr
    static_assert
    thread
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
