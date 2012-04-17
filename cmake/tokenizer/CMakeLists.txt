# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostTokenizer HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/tokenizer.xml
  SUMMARY "Break of a string or other character sequence into a series of tokens."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/tokenizer/"
  AUTHOR "John Bandela"
  MAINTAINER "John Bandela"
  CATEGORY Development
  KEYWORDS "Boost" "Iterators" "String"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    mpl
    utility
  INCLUDE_DIRECTORIES
    include
  )
