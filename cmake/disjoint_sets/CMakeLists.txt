# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostDisjointSets)

find_package(Boost COMPONENTS cmake test graph NO_MODULE)
include(${Boost_USE_FILE})
include(RypplExport)
include(RypplTestSuite)

ryppl_export(
  DEPENDS
    BoostCore 
    BoostGraph 
    BoostTest 
  INCLUDE_DIRECTORIES
    include
  )

ryppl_test_suite(
  RUN
    disjoint_set_test.cpp
  )
