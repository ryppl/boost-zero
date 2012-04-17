# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostFunctionTypes HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/function_types.xml
  SUMMARY "Boost.FunctionTypes provides functionality to classify, decompose and synthesize function, function pointer, function reference and pointer to member types."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/function_types/"
  AUTHOR "Tobias Schwinger"
  MAINTAINER "Tobias Schwinger"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Generic" "Metaprogramming"
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
    mpl
    preprocessor
    type_traits
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
