# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS assign NO_MODULE)
include("${Boost_USE_FILE}")

# XXX: some tests #include <libs/bimap/test/test_bimap.hpp>
include_directories("../../..")

# tagged_test
boost_add_test(test_tagged.cpp RUN)

# relation_test
boost_add_multiple_tests(
  RUN
    test_structured_pair.cpp
    test_mutant.cpp
    test_mutant_relation.cpp
  )

# bimap_test
boost_add_multiple_tests(
  RUN
    # Check library user interface
    test_bimap_set_of.cpp
    test_bimap_multiset_of.cpp
    test_bimap_unordered_set_of.cpp
    test_bimap_unordered_multiset_of.cpp
    test_bimap_list_of.cpp
    test_bimap_vector_of.cpp
    # Test bimap container
    test_bimap_ordered.cpp
    test_bimap_unordered.cpp
    test_bimap_sequenced.cpp
    test_bimap_unconstrained.cpp
    test_bimap_assign.cpp
    test_bimap_property_map.cpp
    test_bimap_modify.cpp
    test_bimap_range.cpp
    test_bimap_operator_bracket.cpp
    test_bimap_lambda.cpp
    test_bimap_mutable.cpp
    test_bimap_extra.cpp
    test_bimap_convenience_header.cpp
    test_bimap_project.cpp
    test_bimap_serialization.cpp
    test_bimap_info.cpp
  LINK_BOOST_LIBRARIES
    serialization
  )

# compile_fail_test
boost_add_multiple_tests(
  COMPILE_FAIL
    compile_fail/test_bimap_mutable_1.cpp
    compile_fail/test_bimap_mutable_2.cpp
    compile_fail/test_bimap_mutable_3.cpp
    compile_fail/test_bimap_info_1.cpp
    compile_fail/test_bimap_info_2.cpp
    compile_fail/test_bimap_info_3.cpp
  )


# bimap_and_boost
boost_add_multiple_tests(
  RUN
    ../example/bimap_and_boost/property_map.cpp
    ../example/bimap_and_boost/range.cpp
    ../example/bimap_and_boost/foreach.cpp
    ../example/bimap_and_boost/lambda.cpp
    ../example/bimap_and_boost/assign.cpp
    ../example/bimap_and_boost/xpressive.cpp
    ../example/bimap_and_boost/typeof.cpp
  COMPILE
    ../example/bimap_and_boost/serialization.cpp
  LINK_BOOST_LIBRARIES
    serialization
  )
