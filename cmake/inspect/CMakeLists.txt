# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
include(RypplProject)
ryppl_project(BoostInspect
  FEED_URI http://ryppl.github.com/feeds/boost/boostinspect.xml
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
    cmake
    config
    conversion
    filesystem
    regex
    smart_ptr
    test
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})

add_executable(inspect
  apple_macro_check.cpp
  ascii_check.cpp
  assert_macro_check.cpp
  copyright_check.cpp
  crlf_check.cpp
  end_check.cpp
  inspect.cpp
  license_check.cpp
  link_check.cpp
  minmax_check.cpp
  path_name_check.cpp
  tab_check.cpp
  unnamed_namespace_check.cpp
  )

target_link_libraries(inspect
  ${Boost_LIBRARIES}
  )
