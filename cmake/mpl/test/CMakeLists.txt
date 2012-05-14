# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostConfig)

ryppl_test_suite(
  COMPILE
    aux_/largest_int.cpp
    aux_/msvc_is_class.cpp
    aux_/template_arity.cpp
    aux_/preprocessor/is_seq.cpp
    aux_/preprocessor/token_equal.cpp

    advance.cpp
    always.cpp
    apply.cpp
    apply_wrap.cpp
    arithmetic.cpp
    as_sequence.cpp
    assert.cpp
    at.cpp
    back.cpp
    bind.cpp
    bitwise.cpp
  RUN
    bool.cpp
  COMPILE
    comparison.cpp
    contains.cpp
    copy.cpp
    copy_if.cpp
    count.cpp
    count_if.cpp
    deque.cpp
    distance.cpp
    empty.cpp
    equal.cpp
    erase.cpp
    erase_range.cpp
    eval_if.cpp
    filter_view.cpp
    find.cpp
    find_if.cpp
    fold.cpp
  RUN
    for_each.cpp
  COMPILE
    front.cpp
    has_xxx.cpp
    identity.cpp
    if.cpp
    index_of.cpp
    inherit.cpp
    insert.cpp
    insert_range.cpp
  RUN
    int.cpp
    char.cpp
  NO_SINGLE_TARGET
  )

# TODO: is there a more elegant way to write this (I hope)?
set(saved_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
IF(CMAKE_CXX_COMPILER_ID STREQUAL "VisualAge" OR CMAKE_C_COMPILER_ID STREQUAL "XL")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -qchars=signed")
ENDIF(CMAKE_CXX_COMPILER_ID STREQUAL "VisualAge" OR CMAKE_C_COMPILER_ID STREQUAL "XL")

ryppl_test_suite(RUN integral_c.cpp)

set(CMAKE_CXX_FLAGS "${saved_CXX_FLAGS}")

ryppl_test_suite(
  COMPILE
    is_placeholder.cpp
    is_sequence.cpp
    iterator_tags.cpp
    joint_view.cpp
    lambda.cpp
    lambda_args.cpp
    list.cpp
    list_c.cpp
    logical.cpp
    lower_bound.cpp
    map.cpp
    max_element.cpp
    min_max.cpp
    multiset.cpp
    next.cpp
    no_has_xxx.cpp
    numeric_ops.cpp
    pair_view.cpp
    partition.cpp
    pop_front.cpp
    push_back.cpp
    push_front.cpp
    quote.cpp
    range_c.cpp
    remove.cpp
    remove_if.cpp
    replace.cpp
    replace_if.cpp
    reverse.cpp
    same_as.cpp
    set.cpp
    set_c.cpp
    single_view.cpp
    size.cpp
  RUN
    size_t.cpp
  COMPILE
    sizeof.cpp
    sort.cpp
    stable_partition.cpp
    transform.cpp
    transform_view.cpp
    unique.cpp
    unpack_args.cpp
    upper_bound.cpp
    vector.cpp
    vector_c.cpp
    zip_view.cpp
  RUN
    string.cpp
  NO_SINGLE_TARGET
)
