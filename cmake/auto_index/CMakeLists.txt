# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
include(RypplProject)
ryppl_project(BoostAutoIndex
  FEED_URI http://ryppl.github.com/feeds/boost/boostautoindex.xml
  SUMMARY "***WRITE ME (one line)***"
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/"
  AUTHOR 
  MAINTAINER 
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" 
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    algorithm
    array
    cmake
    core
    exception
    filesystem
    format
    program_options
    range
    regex
    smart_ptr
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})

add_executable(auto_index
  src/auto_index.cpp
  src/file_scanning.cpp
  src/index_generator.cpp
  src/tiny_xml.cpp
  )

target_link_libraries(auto_index
  ${Boost_LIBRARIES}
  )
