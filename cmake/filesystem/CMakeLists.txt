# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostFilesystem
  FEED_URI http://ryppl.github.com/feeds/boost/filesystem.xml
  SUMMARY "The Boost Filesystem Library provides portable facilities to query and manipulate paths, files, and directories."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/filesystem/"
  AUTHOR "Beman Dawes"
  MAINTAINER "Beman Dawes"
  CATEGORY Development
  KEYWORDS "Boost" "System"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake system NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddLibrary)
include(BoostExport)

set(filesystem_src
  src/operations.cpp
  src/path.cpp
  src/portability.cpp
  src/utf8_codecvt_facet.cpp
  src/codecvt_error_category.cpp
  src/path_traits.cpp
  src/unique_path.cpp
  src/windows_file_codecvt.cpp
  )

add_library(filesystem-shared SHARED ${filesystem_src})
add_library(filesystem-static STATIC ${filesystem_src})

set_target_properties(filesystem-shared filesystem-static PROPERTIES
  OUTPUT_NAME "boost_filesystem"
  )

set_target_properties(filesystem-static PROPERTIES
  PREFIX "lib"
  )

target_link_libraries(filesystem-shared
  system-shared
  )

target_link_libraries(filesystem-static
  system-static
  )

boost_export(
  TARGETS
    filesystem-shared
    filesystem-static
  BOOST_DEPENDS
    bind
    config
    core
    functional
    integer
    io
    iterator
    smart_ptr
    static_assert
    system
    #test
    #timer
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )

add_subdirectory(test)
