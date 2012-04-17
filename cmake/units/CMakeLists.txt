# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostUnits HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/units.xml
  SUMMARY "Zero-overhead dimensional analysis and unit/quantity manipulation and conversion."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/units/"
  AUTHOR "Steven Watanabe" "Matthias Schabel"
  MAINTAINER "Steven Watanabe" "Matthias Schabel"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Domain"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    algorithm
    config
    core
    io
    lambda
    #math
    mpl
    preprocessor
    #serialization
    static_assert
    type_traits
    typeof
    utility
  INCLUDE_DIRECTORIES
    include
  )
