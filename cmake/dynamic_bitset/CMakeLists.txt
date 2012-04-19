# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostDynamicBitset)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake test config NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)
include(RypplTestSuite)

boost_export(
  BOOST_DEPENDS
    config
    core
    static_assert
    test
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

