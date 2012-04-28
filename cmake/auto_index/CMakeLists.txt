# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostAutoIndex CXX)

include(Ryppl)

ryppl_find_package(BoostAlgorithm)
ryppl_find_package(BoostArray)
ryppl_find_package(BoostCore)
ryppl_find_package(BoostException)
ryppl_find_package(BoostFilesystem)
ryppl_find_package(BoostFormat)
ryppl_find_package(BoostProgramOptions)
ryppl_find_package(BoostRange)
ryppl_find_package(BoostRegex)
ryppl_find_package(BoostSmartPtr)
ryppl_find_package(BoostUtility)

add_definitions(
  ${BoostAlgorithm_DEFINITIONS}
  ${BoostArray_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFilesystem_DEFINITIONS}
  ${BoostFormat_DEFINITIONS}
  ${BoostProgramOptions_DEFINITIONS}
  ${BoostRange_DEFINITIONS}
  ${BoostRegex_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostAlgorithm_INCLUDE_DIRS}
  ${BoostArray_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFilesystem_INCLUDE_DIRS}
  ${BoostFormat_INCLUDE_DIRS}
  ${BoostProgramOptions_INCLUDE_DIRS}
  ${BoostRange_INCLUDE_DIRS}
  ${BoostRegex_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

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
