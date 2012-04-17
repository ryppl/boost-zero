# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostInterprocess HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/interprocess.xml
  SUMMARY "Shared memory, memory mapped files, process-shared mutexes, condition variables, containers and allocators."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/interprocess/"
  AUTHOR "Ion Gaztañaga"
  MAINTAINER "Ion Gaztañaga"
  CATEGORY Development
  KEYWORDS "Boost" "Concurrent"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    container
    core
    date_time
    integer
    intrusive
    math
    move
    preprocessor
    smart_ptr
    static_assert
    type_traits
    unordered
    utility
  INCLUDE_DIRECTORIES
    include
  )
