# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

boost_add_test(variant_test1 RUN test1.cpp class_a.cpp)

boost_add_test(variant_test4 RUN test4.cpp class_a.cpp)

boost_add_multiple_tests(
  RUN
    test2
    test3
    test5
    test6
    test7
    test8
    recursive_variant_test
    variant_reference_test
    variant_comparison_test
    variant_visit_test
  )

