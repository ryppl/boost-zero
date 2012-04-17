# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostAny HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/any.xml
  SUMMARY "Safe, generic container for single values of different value types."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/any/"
  AUTHOR "Kevlin Henney"
  MAINTAINER "Kevlin Henney"
  CATEGORY Development
  KEYWORDS "Boost" "Data"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake config NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)
#include(BoostDocumentation)
include(BoostExport)

#boost_documentation(doc/any.xml)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    config
    exception
    static_assert
    type_traits
  INCLUDE_DIRECTORIES
    include
  )

include_directories(include)

ryppl_test_suite(
  RUN
    any_test.cpp
  COMPILE_FAIL
    test/any_cast_cv_failed.cpp
  )
