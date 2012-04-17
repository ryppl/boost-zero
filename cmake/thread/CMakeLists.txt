# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
include(RypplProject)
ryppl_project(BoostThread
  FEED_URI http://ryppl.github.com/feeds/boost/thread.xml
  SUMMARY "Portable C++ multi-threading."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/thread/"
  AUTHOR "Anthony Williams (originally William Kempf)"
  MAINTAINER "Anthony Williams (originally William Kempf)"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Concurrent" "System"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    bind
    chrono
    cmake
    config
    core
    date_time
    exception
    function
    functional
    integer
    io
    move
    mpl
    optional
    smart_ptr
    static_assert
    system
    type_traits
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})
include(BoostAddLibrary)
include(BoostExport)

ryppl_find_package(Threads REQUIRED)
include_directories(include)

if(CMAKE_USE_WIN32_THREADS_INIT)
  set(sources
    src/win32/thread.cpp
    src/win32/tss_dll.cpp
    src/win32/tss_pe.cpp
    )
else()
  set(sources
    src/pthread/thread.cpp
    src/pthread/once.cpp
    )
endif()

boost_add_library(thread
  SOURCES
    ${sources}
  LINK_LIBRARIES
    #${Boost_LIBRARIES}
    ${CMAKE_THREAD_LIBS_INIT}
  )

set_property(TARGET thread-shared APPEND PROPERTY
  COMPILE_DEFINITIONS "BOOST_THREAD_BUILD_DLL=1"
  )

set_property(TARGET thread-static APPEND PROPERTY
  COMPILE_DEFINITIONS "BOOST_THREAD_BUILD_LIB=1"
  )

boost_export(
  TARGETS
    thread
  BOOST_DEPENDS
    chrono
    date_time
  INCLUDE_DIRECTORIES
    include
  )
