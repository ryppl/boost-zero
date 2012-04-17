# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostRandom
  FEED_URI http://ryppl.github.com/feeds/boost/random.xml
  SUMMARY "A complete system for random number generation."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/random/"
  AUTHOR "Jens Maurer"
  MAINTAINER "Jens Maurer"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Math"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    cmake
    config
    conversion
    core
    foreach
    format
    integer
    math
    mpl
    multi_index
    range
    regex
    smart_ptr
    static_assert
    test
    timer
    tuple
    type_traits
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})
include(BoostAddLibrary)
include(BoostExport)

boost_add_library(random
  src/random_device.cpp
  )

boost_export(
  BOOST_DEPENDS
    config
    conversion
    core
    foreach
    format
    integer
    #math
    mpl
    multi_index
    range
    #regex
    smart_ptr
    static_assert
    #test
    #timer
    tuple
    type_traits
    utility
  TARGETS
    random
  INCLUDE_DIRECTORIES
    include
  )
