# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostAutoIndex CXX)

find_package(Boost
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
  boost_program_options
  boost_filesystem
  boost_system
  boost_regex
  )
