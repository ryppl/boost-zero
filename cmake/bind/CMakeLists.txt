# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostBind HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/bind.xml
  SUMMARY "boost::bind is a generalization of the standard functions std::bind1st and std::bind2nd. It supports arbitrary function objects, functions, function pointers, and member function pointers, and is able to bind any argument to a specific value or route input arguments into arbitrary positions."
  DESCRIPTION
  "bind:
boost::bind is a generalization of the standard
    functions std::bind1st and std::bind2nd. It supports arbitrary
    function objects, functions, function pointers, and member
    function pointers, and is able to bind any argument to a
    specific value or route input arguments into arbitrary
    positions.

bind/mem_fn:
Generalized binders for function/object/pointers
    and member functions.

bind/ref:
A utility library for passing references to
    generic functions."
  HOMEPAGE "http://boost.org/libs/bind/"
  AUTHOR "Peter Dimov" "Dave Abrahams" "Jaako Järvi" "Doug Gregor"
  MAINTAINER "Peter Dimov" "Dave Abrahams" "Jaako Järvi" "Doug Gregor"
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

#boost_documentation(doc/ref.xml)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    config
    core
    smart_ptr
    utility
  INCLUDE_DIRECTORIES
    include
  )
