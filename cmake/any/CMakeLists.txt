# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostAny)

find_package(Boost COMPONENTS cmake config NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)
#include(BoostDocumentation)
include(BoostExport)

#boost_documentation(doc/any.xml)

add_subdirectory(test)

boost_export(
  BOOST_DEPENDS
    config
    exception
    static_assert
    type_traits
  INCLUDE_DIRECTORIES
    include
  )

include_directories(include)

boost_add_test_suite(
  RUN
    any_test.cpp
  COMPILE_FAIL
    test/any_cast_cv_failed.cpp
  )
