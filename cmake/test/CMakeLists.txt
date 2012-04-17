# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostTest CXX)

find_package(Boost
  COMPONENTS
    bind
    config
    conversion
    core
    exception
    function
    io
    iterator
    mpl
    numeric
    optional
    preprocessor
    smart_ptr
    static_assert
    timer
    type_traits
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})
include(RypplExport)

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
