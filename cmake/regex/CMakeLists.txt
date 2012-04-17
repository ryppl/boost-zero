# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostRegex
  FEED_URI http://ryppl.github.com/feeds/boost/regex.xml
  SUMMARY "Regular expression library."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/regex/"
  AUTHOR "John Maddock"
  MAINTAINER "John Maddock"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "String"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    cmake
    concept_check
    config
    core
    exception
    functional
    integer
    iterator
    mpl
    smart_ptr
    static_assert
    test
    timer
    type_traits
    utility
    xpressive
  NO_MODULE
  )
include(${Boost_USE_FILE})
include(BoostAddLibrary)
include(BoostExport)

ryppl_find_package(ICU)
if(ICU_FOUND)
  add_definitions(-DBOOST_HAS_ICU=1)
endif()

boost_add_library(regex
  SOURCES
    src/c_regex_traits.cpp
    src/cpp_regex_traits.cpp
    src/cregex.cpp
    src/fileiter.cpp
    src/icu.cpp
    src/instances.cpp
    src/posix_api.cpp
    src/regex.cpp
    src/regex_debug.cpp
    src/regex_raw_buffer.cpp
    src/regex_traits_defaults.cpp
    src/static_mutex.cpp
    src/w32_regex_traits.cpp
    src/wc_regex_traits.cpp
    src/wide_posix_api.cpp
    src/winstances.cpp 
    src/usinstances.cpp
  LINK_LIBRARIES
    ${ICU_LIBRARIES}
    ${ICU_I18N_LIBRARIES}
  )

boost_export(
  TARGETS
    regex
  BOOST_DEPENDS
    concept_check
    config
    core
    exception
    functional
    integer
    iterator
    mpl
    smart_ptr
    static_assert
    #test
    #timer
    type_traits
    utility
    xpressive
  INCLUDE_DIRECTORIES
    include
  )
