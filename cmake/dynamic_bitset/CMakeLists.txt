# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostDynamicBitset)

find_package(Boost COMPONENTS test config NO_MODULE)
include(${Boost_USE_FILE})
include(RypplExport)
include(RypplTestSuite)

ryppl_export(
  DEPENDS
    BoostConfig 
    BoostCore 
    BoostStaticAssert 
    BoostTest 
  INCLUDE_DIRECTORIES
    include
  )

# ryppl_test_suite(
#  RUN
#    dyn_bitset_unit_tests1.cpp
#    dyn_bitset_unit_tests2.cpp
#    dyn_bitset_unit_tests3.cpp
#    dyn_bitset_unit_tests4.cpp
#  )

