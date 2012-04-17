# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostSpirit HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/spirit.xml
  SUMMARY "LL parser framework represents parsers directly as EBNF grammars in inlined C++."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/spirit/"
  AUTHOR "Hartmut Kaiser" "Dan Nuffer" "Joel de Guzman"
  MAINTAINER "Hartmut Kaiser" "Dan Nuffer" "Joel de Guzman"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "String" "Parsing"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    algorithm
    array
    assign
    bind
    concept_check
    config
    conversion
    core
    exception
    foreach
    format
    function
    function_types
    fusion
    integer
    io
    iostreams
    iterator
    #math
    mpl
    optional
    phoenix
    pool
    preprocessor
    proto
    range
    #regex
    #serialization
    smart_ptr
    static_assert
    #thread
    #timer
    type_traits
    typeof
    unordered
    utility
    variant
  INCLUDE_DIRECTORIES
    include
  )
