# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostIOStreams
  FEED_URI http://ryppl.github.com/feeds/boost/iostreams.xml
  SUMMARY "Boost.IOStreams provides a framework for defining streams, stream buffers and i/o filters."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/iostreams/"
  AUTHOR "Jonathan Turkanis"
  MAINTAINER "Jonathan Turkanis"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "String" "IO"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake config NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddLibrary)
include(BoostExport)

add_definitions(-DBOOST_IOSTREAMS_USE_DEPRECATED)

if(MSVC)
  add_definitions(
    /wd4244 # conversion from 'boost::iostreams::stream_offset' to 'size_t'
    /wd4251 # class needs to have dll-interface to be used by clients
    /wd4800 # forcing value to bool 'true' or 'false'
    )
endif(MSVC)

set(sources src/file_descriptor.cpp src/mapped_file.cpp)
set(link_libraries)

ryppl_find_package(ZLIB)
if(ZLIB_FOUND)
  include_directories(${ZLIB_INCLUDE_DIRS})
  list(APPEND sources src/zlib.cpp src/gzip.cpp)
  list(APPEND link_libraries ${ZLIB_LIBRARIES})
endif(ZLIB_FOUND)

ryppl_find_package(BZip2)
if(BZIP2_FOUND)
  include_directories(${BZIP2_INCLUDE_DIR})
  list(APPEND sources src/bzip2.cpp)
  list(APPEND link_libraries ${BZIP2_LIBRARIES})
endif(BZIP2_FOUND)

boost_add_library(iostreams
  SOURCES
    ${sources}
  LINK_LIBRARIES
    ${link_libraries}
  )

boost_export(
  TARGETS
    iostreams
  BOOST_DEPENDS
    bind
    config
    core
    exception
    function
    integer
    mpl
    preprocessor
    #random
    range
    #regex
    smart_ptr
    static_assert
    type_traits
    utility
  INCLUDE_DIRECTORIES
    include
  )
