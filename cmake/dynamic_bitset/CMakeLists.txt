# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostDynamicBitset HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/dynamic_bitset.xml
  SUMMARY "The dynamic_bitset class represents a set of bits. It provides accesses to the value of individual bits via an operator[] and provides all of the bitwise operators that one can apply to builtin integers, such as operator& and operator<<. The number of bits in the set is specified at runtime via a parameter to the constructor of the dynamic_bitset."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/
    libs/dynamic_bitset/dynamic_bitset.html"
  AUTHOR "Chuck Allison" "Jeremy Siek"
  MAINTAINER "Chuck Allison" "Jeremy Siek"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Containers"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake test config NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)
include(RypplTestSuite)

boost_export(
  BOOST_DEPENDS
    config
    core
    static_assert
    test
  INCLUDE_DIRECTORIES
    include
  )

# ryppl_test_suite(
#  RUN
#    dyn_bitset_unit_tests1.cpp
#    dyn_bitset_unit_tests2.cpp
#    dyn_bitset_unit_tests3.cpp
#    dyn_bitset_unit_tests4.cpp
#  )

