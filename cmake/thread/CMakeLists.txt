# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostThread CXX)

find_package(Boost
  COMPONENTS
    bind
    chrono
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
include(RypplExport)

find_package(Threads REQUIRED)
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

add_library(boost_thread
  ${sources}
  )

target_link_libraries(boost_thread
  boost_chrono
  boost_date_time
  ${CMAKE_THREAD_LIBS_INIT}
  )

if(BUILD_SHARED_LIBS)
  set_property(TARGET boost_thread APPEND PROPERTY
    COMPILE_DEFINITIONS "BOOST_THREAD_BUILD_DLL=1"
    )
else()
  set_property(TARGET boost_thread APPEND PROPERTY
    COMPILE_DEFINITIONS "BOOST_THREAD_BUILD_LIB=1"
    )
  set_target_properties(boost_thread PROPERTIES
    PREFIX "lib"
    )
endif()

ryppl_export(
  TARGETS
    boost_thread
  DEPENDS
    BoostChrono 
    BoostDateTime 
  INCLUDE_DIRECTORIES
    include
  )
