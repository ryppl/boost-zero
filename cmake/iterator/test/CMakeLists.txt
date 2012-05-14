# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostTest)

ryppl_test_suite(
  COMPILE
    is_lvalue_iterator.cpp
    is_readable_iterator.cpp
    pointee.cpp
    iterator_archetype_cc.cpp
    indirect_iter_member_types.cpp
  COMPILE_FAIL
    interoperable_fail.cpp
    iter_archetype_default_ctor.cpp
    lvalue_concept_fail.cpp
  RUN
    is_convertible_fail.cpp
    zip_iterator_test.cpp
    unit_tests.cpp
    concept_tests.cpp
    iterator_adaptor_cc.cpp
    iterator_adaptor_test.cpp
    transform_iterator_test.cpp
    indirect_iterator_test.cpp
    filter_iterator_test.cpp
    iterator_facade.cpp
    reverse_iterator_test.cpp
    counting_iterator_test.cpp
    interoperable.cpp
    iterator_traits_test.cpp
    permutation_iterator_test.cpp
    function_input_iterator_test.cpp
  NO_SINGLE_TARGET
  )
