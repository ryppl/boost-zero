# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostInspect CXX)

find_package(Boost
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
include(BoostAddExecutable)

boost_add_executable(inspect
  SOURCES
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
  LINK_LIBRARIES
    ${Boost_LIBRARIES}
  )
