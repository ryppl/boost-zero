# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostConceptCheck)

find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    iterator
    mpl
    parameter
    preprocessor
    type_traits
  INCLUDE_DIRECTORIES
    include
  )

#boost_add_multiple_tests(
#  RUN
#    #stl_concept_covering
#    stl_concept_check
#    concept_check_test
#    class_concept_check_test
#    old_concept_pass
#  COMPILE_FAIL
#    concept_check_fail_expected
#    class_concept_fail_expected
#    where_fail
#    usage_fail
#    function_requires_fail
#    old_concept_function_fail
#    old_concept_class_fail
#  )
