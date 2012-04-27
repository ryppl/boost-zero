# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(Quickbook CXX)

include(RypplFindPackage)
include(RypplExport)

ryppl_find_package(BoostAlgorithm)
ryppl_find_package(BoostBind)
ryppl_find_package(BoostConfig)
ryppl_find_package(BoostConversion)
ryppl_find_package(BoostCore)
ryppl_find_package(BoostFilesystem)
ryppl_find_package(BoostForeach)
ryppl_find_package(BoostIOStreams)
ryppl_find_package(BoostIterator)
ryppl_find_package(BoostPreprocessor)
ryppl_find_package(BoostProgramOptions)
ryppl_find_package(BoostRange)
ryppl_find_package(BoostSmartPtr)
ryppl_find_package(BoostSpirit)
ryppl_find_package(BoostTuple)
ryppl_find_package(BoostUnordered)
ryppl_find_package(BoostUtility)

add_definitions(
  ${BoostAlgorithm_DEFINITIONS}
  ${BoostBind_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostConversion_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostFilesystem_DEFINITIONS}
  ${BoostForeach_DEFINITIONS}
  ${BoostIOStreams_DEFINITIONS}
  ${BoostIterator_DEFINITIONS}
  ${BoostPreprocessor_DEFINITIONS}
  ${BoostProgramOptions_DEFINITIONS}
  ${BoostRange_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostSpirit_DEFINITIONS}
  ${BoostTuple_DEFINITIONS}
  ${BoostUnordered_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostAlgorithm_INCLUDE_DIRS}
  ${BoostBind_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostFilesystem_INCLUDE_DIRS}
  ${BoostForeach_INCLUDE_DIRS}
  ${BoostIOStreams_INCLUDE_DIRS}
  ${BoostIterator_INCLUDE_DIRS}
  ${BoostPreprocessor_INCLUDE_DIRS}
  ${BoostProgramOptions_INCLUDE_DIRS}
  ${BoostRange_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostSpirit_INCLUDE_DIRS}
  ${BoostTuple_INCLUDE_DIRS}
  ${BoostUnordered_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

if(MSVC)
  add_definitions(-D_SCL_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_WARNINGS
    /wd4244 /wd4267 /wd4355 /wd4511 /wd4512 /wd4701 /wd4702 /wd4800)
endif()

add_executable(quickbook
  src/quickbook.cpp
  src/actions.cpp
  src/doc_info_actions.cpp
  src/state.cpp
  src/utils.cpp
  src/files.cpp
  src/string_ref.cpp
  src/input_path.cpp
  src/values.cpp
  src/id_manager.cpp
  src/post_process.cpp
  src/collector.cpp
  src/template_stack.cpp
  src/code_snippet.cpp
  src/markups.cpp
  src/syntax_highlight.cpp
  src/grammar.cpp
  src/main_grammar.cpp
  src/block_element_grammar.cpp
  src/phrase_element_grammar.cpp
  src/doc_info_grammar.cpp
  )

target_link_libraries(quickbook
  boost_program_options
  boost_filesystem
  boost_system
  )

ryppl_export(TARGETS quickbook)
