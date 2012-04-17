# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostCRC HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/crc.xml
  SUMMARY "The Boost CRC Library provides two implementations of CRC (cyclic redundancy code) computation objects and two implementations of CRC computation functions. The implementations are template-based."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/crc/"
  AUTHOR "Daryle Walker"
  MAINTAINER "Daryle Walker"
  CATEGORY Development
  KEYWORDS "Boost" "Domain"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    array
    config
    core
    integer
    mpl
  INCLUDE_DIRECTORIES
    include
  )

add_subdirectory(test)
