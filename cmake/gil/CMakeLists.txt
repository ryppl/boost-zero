# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostGIL HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/gil.xml
  SUMMARY "Generic Image Library"
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/gil/"
  AUTHOR "Lubomir Bourdev" "Hailin Jin"
  MAINTAINER "Lubomir Bourdev" "Hailin Jin"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Iterators" "Generic" "Algorithms" "Containers" "Image-processing"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    bind
    concept_check
    config
    integer
    iterator
    mpl
    preprocessor
    smart_ptr
    static_assert
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
