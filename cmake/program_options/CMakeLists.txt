# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostProgramOptions CXX)

find_package(Boost
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
include(BoostExport)

add_library(boost_program_options
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
    boost_program_options
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
