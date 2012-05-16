# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostMultiArray)
ryppl_find_and_use_package(BoostTest)

ryppl_test_suite(
  RUN
    constructors.cpp
    access.cpp
    compare.cpp
    iterators.cpp
    slice.cpp
    assign.cpp
    assign_to_array.cpp
    index_bases.cpp
    storage_order_convert.cpp
    storage_order.cpp
    reshape.cpp
    range1.cpp
    idxgen1.cpp
    stl_interaction.cpp
    resize.cpp
    assert.cpp
    reverse_view.cpp
  COMPILE_FAIL
    fail_cbracket.cpp
    fail_cdata.cpp
    fail_citerator.cpp
    fail_cparen.cpp
    fail_criterator.cpp
    fail_csubarray.cpp
    fail_csubarray2.cpp
    fail_csubarray3.cpp
    fail_cview.cpp
    fail_cview2.cpp
    fail_cview3.cpp
    fail_ref_cbracket.cpp
    fail_ref_cdata.cpp
    fail_ref_citerator.cpp
    fail_ref_cparen.cpp
    fail_ref_criterator.cpp
    fail_ref_csubarray.cpp
    fail_ref_csubarray2.cpp
    fail_ref_csubarray3.cpp
    fail_ref_cview.cpp
    fail_ref_cview2.cpp
    fail_ref_cview3.cpp
  COMPILE
    concept_checks.cpp
  LINK_LIBRARIES
    boost_test_exec_monitor
  NO_SINGLE_TARGET
  )
