# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostTR1 HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/tr1.xml
  SUMMARY "The TR1 library provides an implementation of the C++ Technical Report on Standard Library Extensions. This library does not itself implement the TR1 components, rather it's a thin wrapper that will include your standard library's TR1 implementation (if it has one), otherwise it will include the Boost Library equivalents, and import them into namespace std::tr1."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/tr1/"
  AUTHOR "John Maddock"
  MAINTAINER "John Maddock"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Miscellaneous"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    array
    bind
    config
    function
    functional
    fusion
    iterator
    #math
    mpl
    random
    #regex
    smart_ptr
    static_assert
    tuple
    type_traits
    unordered
    utility
  INCLUDE_DIRECTORIES
    include
  )
