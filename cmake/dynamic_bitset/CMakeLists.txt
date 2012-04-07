# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostDynamicBitset)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    core
    static_assert
    test
  INCLUDE_DIRECTORIES
    include
  )

#boost_add_multiple_tests(
#  RUN
#    dyn_bitset_unit_tests1
#    dyn_bitset_unit_tests2
#    dyn_bitset_unit_tests3
#    dyn_bitset_unit_tests4
#  )
