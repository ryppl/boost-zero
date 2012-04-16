# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostFilesystem CXX)

find_package(Boost COMPONENTS cmake system NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

add_library(boost_filesystem
  src/operations.cpp
  src/path.cpp
  src/portability.cpp
  src/utf8_codecvt_facet.cpp
  src/codecvt_error_category.cpp
  src/path_traits.cpp
  src/unique_path.cpp
  src/windows_file_codecvt.cpp
  )

if(NOT BUILD_SHARED_LIBS)
  set_target_properties(boost_filesystem PROPERTIES
    PREFIX "lib"
    )
endif(NOT BUILD_SHARED_LIBS)

target_link_libraries(boost_filesystem
  boost_system
  )

boost_export(
  TARGETS
    boost_filesystem
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
