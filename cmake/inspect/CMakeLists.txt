# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostInspect CXX)

include(RypplFindPackage)

ryppl_find_package(BoostAlgorithm REQUIRED)
ryppl_find_package(BoostConfig REQUIRED)
ryppl_find_package(BoostConversion REQUIRED)
ryppl_find_package(BoostFilesystem REQUIRED)
ryppl_find_package(BoostRegex REQUIRED)
ryppl_find_package(BoostSmartPtr REQUIRED)
ryppl_find_package(BoostTest REQUIRED)
ryppl_find_package(BoostUtility REQUIRED)

add_definitions(
  ${BoostAlgorithm_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostConversion_DEFINITIONS}
  ${BoostFilesystem_DEFINITIONS}
  ${BoostRegex_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostAlgorithm_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostFilesystem_INCLUDE_DIRS}
  ${BoostRegex_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

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
  boost_filesystem
  boost_system
  boost_regex
  )
