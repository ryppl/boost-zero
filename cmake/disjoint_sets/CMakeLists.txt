# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostDisjointSets HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/disjoint_sets.xml
  SUMMARY "Boost.DisjointSets provides disjoint sets operations with union by rank and path compression."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/disjoint_sets/disjoint_sets.html"
  AUTHOR "Andrew Lumsdaine" "Lie-Quan Lee" "Jeremy Siek"
  MAINTAINER "Andrew Lumsdaine" "Lie-Quan Lee" "Jeremy Siek"
  CATEGORY Development
  KEYWORDS "Boost" "Containers"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake test graph NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)
include(RypplTestSuite)

boost_export(
  BOOST_DEPENDS
    core
    graph
    test
  INCLUDE_DIRECTORIES
    include
  )

ryppl_test_suite(
  RUN
    disjoint_set_test.cpp
  )
