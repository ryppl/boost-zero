# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostStaticAssert HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/static_assert.xml
  SUMMARY "Static assertions (compile time assertions)."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/static_assert/"
  AUTHOR "John Maddock"
  MAINTAINER "John Maddock"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Generic" "Correctness" "Metaprogramming"
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
    type_traits
  INCLUDE_DIRECTORIES
    include
  )

return()

boost_add_multiple_tests(
  RUN
    static_assert_test
#   static_assert_example_1
    static_assert_example_2
    static_assert_example_3
  COMPILE_FAIL
    static_assert_test_fail_1
    static_assert_test_fail_2
    static_assert_test_fail_3
    static_assert_test_fail_4
    static_assert_test_fail_5
    static_assert_test_fail_6
    static_assert_test_fail_7
    static_assert_test_fail_8
    static_assert_test_fail_9
    static_assert_test_fail_10
  )
