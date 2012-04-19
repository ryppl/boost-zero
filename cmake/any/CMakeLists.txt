# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostAny)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS config NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)
include(RypplExport)

add_subdirectory(doc)
add_subdirectory(test)

ryppl_export(
  DEPENDS
    BoostConfig 
    BoostException 
    BoostStaticAssert 
    BoostTypeTraits 
  INCLUDE_DIRECTORIES
    include
  )

include_directories(include)

ryppl_test_suite(
  RUN
    any_test.cpp
  COMPILE_FAIL
    test/any_cast_cv_failed.cpp
  )
