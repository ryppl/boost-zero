# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostPhoenix HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/phoenix.xml
  SUMMARY "Define small unnamed function objects at the actual call site, and more."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/phoenix/"
  AUTHOR "Dan Marsden" "Thomas Heller" "Joel de Guzman"
  MAINTAINER "Dan Marsden" "Thomas Heller" "Joel de Guzman"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Function-objects"
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
    fusion
    mpl
    preprocessor
    proto
    range
    smart_ptr
    spirit
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )

add_subdirectory(test)
