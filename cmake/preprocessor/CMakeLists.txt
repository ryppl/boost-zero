# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostPreprocessor HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/preprocessor.xml
  SUMMARY "Preprocessor metaprogramming tools including repetition and recursion."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/preprocessor/"
  AUTHOR "Paul Mensonides" "Vesa Karvonen"
  MAINTAINER "Paul Mensonides" "Vesa Karvonen"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Preprocessor"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  INCLUDE_DIRECTORIES
    include
  )
