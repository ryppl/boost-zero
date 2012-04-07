# Distributed under the Boost Software License, Version 1.0.
# See copy at http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  RUN
    #regress  # <dependency>regress.txt
    #c_traits # <dependency>regress.txt
    test1
    test2
    test3
    test4
    test5
    test6
    test7
    test8
    test9
    test10
    test11
    test1u
    test2u
    test3u
    test4u
    test5u
    test6u
    test7u
    test8u
    test9u
    test10u
    test11u
    misc1
    misc2
    test_format
    test_cycles
    test_non_char
    test_static
    test_actions
    test_assert
    test_assert_with_placeholder
    test_symbols
    test_dynamic
    test_dynamic_grammar
    test_skip
  COMPILE
    test_basic_regex
    test_match_results
    test_regex_algorithms
    test_regex_compiler
    test_regex_constants
    test_regex_error
    test_regex_iterator
    test_regex_primitives
    test_regex_token_iterator
    test_regex_traits
    test_sub_match
    #test_typeof
    #test_typeof2
  LINK_BOOST_LIBRARIES
    unit_test_framework
  )

boost_add_test(multiple_defs LINK
  SOURCES
    multiple_defs1.cpp
    multiple_defs2.cpp
  LINK_BOOST_LIBRARIES
    unit_test_framework
  )
