# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostProgramOptions
  FEED_URI http://ryppl.github.com/feeds/boost/program_options.xml
  SUMMARY "The program_options library allows program developers to obtain program options, that is (name, value) pairs from the user, via conventional methods such as command line and config file."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/program_options/"
  AUTHOR "Vladimir Prus"
  MAINTAINER "Vladimir Prus"
  CATEGORY Development
  KEYWORDS "Boost" "Miscellaneous" "IO"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    any
    bind
    cmake
    config
    conversion
    core
    exception
    function
    iterator
    smart_ptr
    static_assert
    tokenizer
    type_traits
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})
include(BoostAddLibrary)
include(BoostExport)

boost_add_library(program_options
  src/cmdline
  src/config_file
  src/options_description
  src/parsers
  src/variables_map
  src/value_semantic
  src/positional_options
  src/utf8_codecvt_facet
  src/convert
  src/winmain
  src/split
  )

boost_export(
  TARGETS
    program_options
  BOOST_DEPENDS
    any
    bind
    config
    conversion
    core
    exception
    function
    iterator
    smart_ptr
    static_assert
    tokenizer
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
