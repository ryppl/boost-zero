# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostConceptCheck)

find_package(Boost COMPONENTS config cmake test NO_MODULE)
include(${Boost_USE_FILE})
include(RypplExport)
include(RypplTestSuite)

ryppl_export(
  DEPENDS
    BoostConfig 
    BoostIterator 
    BoostMPL 
    BoostParameter 
    BoostPreprocessor 
    BoostTypeTraits 
  INCLUDE_DIRECTORIES
    include
  )

ryppl_test_suite(
  RUN
    #stl_concept_covering
    stl_concept_check.cpp
    concept_check_test.cpp
    class_concept_check_test.cpp
    old_concept_pass.cpp
  COMPILE_FAIL
    concept_check_fail_expected.cpp
    class_concept_fail_expected.cpp
    where_fail.cpp
    usage_fail.cpp
    function_requires_fail.cpp
    old_concept_function_fail.cpp
    old_concept_class_fail.cpp
	NO_SINGLE_TARGET
  )
