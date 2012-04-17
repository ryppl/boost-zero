# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostAsio HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/asio.xml
  SUMMARY "Portable networking, including sockets, timers, hostname resolution and socket iostreams."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/asio/"
  AUTHOR "Chris Kohlhoff"
  MAINTAINER "Chris Kohlhoff"
  CATEGORY Development
  KEYWORDS "Boost" "Concurrent" "IO"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    array
    bind
    config
    core
    date_time
    exception
    function
    integer
    iterator
    preprocessor
    regex
    smart_ptr
    system
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
