# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostFunctional HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/functional.xml
  SUMMARY "The Boost.Function library contains a family of class templates that are function object wrappers."
  DESCRIPTION
  "functional:
The Boost.Function library contains a family of
    class templates that are function object
    wrappers.

functional/hash:
A TR1 hash function object that can be extended to
    hash user defined types.

functional/factory:
Function object templates for dynamic and static object creation

functional/forward:
Adapters to allow generic function objects to accept arbitrary arguments"
  HOMEPAGE "http://boost.org/libs/functional/"
  AUTHOR "Daniel James" "Tobias Schwinger" "Mark Rodgers"
  MAINTAINER "Daniel James" "Tobias Schwinger" "Mark Rodgers"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Function-objects"
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
    integer
    iterator
    mpl
    optional
    preprocessor
    smart_ptr
    static_assert
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
