# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostSignals2 HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/signals2.xml
  SUMMARY "Managed signals & slots callback implementation (thread-safe version 2)."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/signals2/"
  AUTHOR "Frank Mori Hess"
  MAINTAINER "Frank Mori Hess"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Patterns" "Function-objects"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    any
    bind
    config
    core
    exception
    function
    iterator
    mpl
    multi_index
    optional
    parameter
    preprocessor
    smart_ptr
    type_traits
    utility
    variant
  INCLUDE_DIRECTORIES
    include
  )
