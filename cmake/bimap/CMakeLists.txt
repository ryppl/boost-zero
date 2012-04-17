# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostBimap HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/bimap.xml
  SUMMARY "Bidirectional maps library for C++. With Boost.Bimap you can create associative containers in which both types can be used as key."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/bimap/"
  AUTHOR "Matias Capeletto"
  MAINTAINER "Matias Capeletto"
  CATEGORY Development
  KEYWORDS "Boost" "Data" "Containers"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    concept_check
    config
    exception
    functional
    iterator
    lambda
    mpl
    multi_index
    preprocessor
    property_map
    serialization
    static_assert
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
