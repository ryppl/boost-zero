# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  COMPILE
    is_lvalue_iterator
    is_readable_iterator
    pointee
    iterator_archetype_cc
    indirect_iter_member_types
  COMPILE_FAIL
    interoperable_fail
    iter_archetype_default_ctor
    lvalue_concept_fail
  RUN
    is_convertible_fail.cpp
    zip_iterator_test.cpp
    unit_tests
    concept_tests
    iterator_adaptor_cc
    iterator_adaptor_test
    transform_iterator_test
    indirect_iterator_test
    filter_iterator_test
    iterator_facade
    reverse_iterator_test
    counting_iterator_test
    interoperable
    iterator_traits_test
    permutation_iterator_test
    function_input_iterator_test
  )
