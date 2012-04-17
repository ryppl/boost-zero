# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostIterator HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/iterator.xml
  SUMMARY "The Boost Iterator Library contains two parts. The first is a system of concepts which extend the C++ standard iterator requirements. The second is a framework of components for building iterators based on these extended concepts and includes several useful iterator adaptors."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/iterator/"
  AUTHOR "Thomas Witt" "Dave Abrahams" "Jeremy Siek"
  MAINTAINER "Thomas Witt" "Dave Abrahams" "Jeremy Siek"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Iterators"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    concept_check
    config
    conversion
    core
    function_types
    mpl
    smart_ptr
    static_assert
    tuple
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
  
add_subdirectory(test)
