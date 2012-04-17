# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostAlgorithm HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/algorithm.xml
  SUMMARY "A collection of useful generic algorithms."
  DESCRIPTION
  "algorithm:
A collection of useful generic algorithms.

algorithm/minmax:
Standard library extensions for simultaneous
    min/max and min/max element computations.

algorithm/string:
String algorithms library."
  HOMEPAGE "http://boost.org/libs/algorithm/"
  AUTHOR "Hervé Brönnimann" "Pavol Droba" "Marshall Clow"
  MAINTAINER "Hervé Brönnimann" "Pavol Droba" "Marshall Clow"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Algorithms" "String"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    bind
    concept_check
    config
    function
    iterator
    mpl
    range
    regex
    timer
    tuple
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
