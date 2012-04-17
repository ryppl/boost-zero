# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostSystem
  FEED_URI http://ryppl.github.com/feeds/boost/system.xml
  SUMMARY "Operating system support, including the diagnostics support that will be part of the C++0x standard library."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/system/"
  AUTHOR "Beman Dawes"
  MAINTAINER "Beman Dawes"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "System"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake config integer utility NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddLibrary)
include(BoostExport)

boost_add_library(system
  src/error_code.cpp
  src/local_free_on_destruction.hpp
  )

boost_export(
  TARGETS
    system
  BOOST_DEPENDS
    config
    integer
    utility
  INCLUDE_DIRECTORIES
    include
  )

#add_subdirectory(doc)
