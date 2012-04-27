# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostTest CXX)

include(RypplFindPackage)
include(RypplExport)

ryppl_find_package(BoostBind REQUIRED)
ryppl_find_package(BoostConfig REQUIRED)
ryppl_find_package(BoostConversion REQUIRED)
ryppl_find_package(BoostCore REQUIRED)
ryppl_find_package(BoostException REQUIRED)
ryppl_find_package(BoostFunction REQUIRED)
ryppl_find_package(BoostIO REQUIRED)
ryppl_find_package(BoostIterator REQUIRED)
ryppl_find_package(BoostMPL REQUIRED)
ryppl_find_package(BoostNumeric REQUIRED)
ryppl_find_package(BoostOptional REQUIRED)
ryppl_find_package(BoostPreprocessor REQUIRED)
ryppl_find_package(BoostSmartPtr REQUIRED)
ryppl_find_package(BoostStaticAssert REQUIRED)
ryppl_find_package(BoostTimer REQUIRED)
ryppl_find_package(BoostTypeTraits REQUIRED)
ryppl_find_package(BoostUtility REQUIRED)

add_definitions(
  ${BoostBind_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostConversion_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFunction_DEFINITIONS}
  ${BoostIO_DEFINITIONS}
  ${BoostIterator_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostNumeric_DEFINITIONS}
  ${BoostOptional_DEFINITIONS}
  ${BoostPreprocessor_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostTimer_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostBind_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFunction_INCLUDE_DIRS}
  ${BoostIO_INCLUDE_DIRS}
  ${BoostIterator_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostNumeric_INCLUDE_DIRS}
  ${BoostOptional_INCLUDE_DIRS}
  ${BoostPreprocessor_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostTimer_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

if(MSVC)
  # specify the asynchronous exception handling model
  string(REGEX REPLACE " ?/EH[as]?c?" "" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHa")
endif(MSVC)

add_library(boost_prg_exec_monitor
  src/execution_monitor.cpp
  src/debug.cpp
  src/cpp_main.cpp
  )

add_library(boost_test_exec_monitor STATIC
  src/compiler_log_formatter.cpp
  src/debug.cpp
  src/decorator.cpp
  src/execution_monitor.cpp
  src/framework.cpp
  src/plain_report_formatter.cpp
  src/progress_monitor.cpp
  src/results_collector.cpp
  src/results_reporter.cpp
  src/test_main.cpp
  src/test_tools.cpp
  src/test_tree.cpp
  src/unit_test_log.cpp
  src/unit_test_main.cpp
  src/unit_test_monitor.cpp
  src/unit_test_parameters.cpp
  src/xml_log_formatter.cpp
  src/xml_report_formatter.cpp
  )

add_library(boost_unit_test_framework
  src/compiler_log_formatter.cpp
  src/debug.cpp
  src/decorator.cpp
  src/exception_safety.cpp
  src/execution_monitor.cpp
  src/framework.cpp
  src/interaction_based.cpp
  src/logged_expectations.cpp
  src/plain_report_formatter.cpp
  src/progress_monitor.cpp
  src/results_collector.cpp
  src/results_reporter.cpp
  src/test_tools.cpp
  src/test_tree.cpp
  src/unit_test_log.cpp
  src/unit_test_main.cpp
  src/unit_test_monitor.cpp
  src/unit_test_parameters.cpp
  src/xml_log_formatter.cpp
  src/xml_report_formatter.cpp
  )

ryppl_export(
  TARGETS
    boost_prg_exec_monitor
    boost_test_exec_monitor
    boost_unit_test_framework
  INCLUDE_DIRECTORIES
    include
  )
