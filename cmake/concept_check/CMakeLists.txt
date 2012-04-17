# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostConceptCheck HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/concept_check.xml
  SUMMARY "Tools for generic programming."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/
    libs/concept_check/"
  AUTHOR "Jeremy Siek"
  MAINTAINER "Jeremy Siek"
  CATEGORY Development
  KEYWORDS "Boost" "Generic" "Correctness"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS config cmake test NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)
include(RypplTestSuite)

boost_export(
  BOOST_DEPENDS
    config
    iterator
    mpl
    parameter
    preprocessor
    type_traits
  INCLUDE_DIRECTORIES
    include
  )

ryppl_test_suite(
  RUN
    #stl_concept_covering
    stl_concept_check.cpp
    concept_check_test.cpp
    class_concept_check_test.cpp
    old_concept_pass.cpp
  COMPILE_FAIL
    concept_check_fail_expected.cpp
    class_concept_fail_expected.cpp
    where_fail.cpp
    usage_fail.cpp
    function_requires_fail.cpp
    old_concept_function_fail.cpp
    old_concept_class_fail.cpp
	NO_SINGLE_TARGET
  )
