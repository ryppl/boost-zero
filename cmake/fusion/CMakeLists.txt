# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostFusion HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/fusion.xml
  SUMMARY "Library for working with tuples, including various containers, algorithms, etc."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/fusion/doc/html/"
  AUTHOR "Dan Marsden" "Tobias Schwinger" "Joel de Guzman"
  MAINTAINER "Dan Marsden" "Tobias Schwinger" "Joel de Guzman"
  CATEGORY Development
  KEYWORDS "Boost" "Data" "Metaprogramming"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    core
    function_types
    mpl
    preprocessor
    smart_ptr
    static_assert
    tuple
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
