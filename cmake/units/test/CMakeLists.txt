# Copyright 2007-2009
# Steven Watanabe
#
# Copyright 2012
# Dave Abrahams
#
# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_multiple_tests(
  COMPILE
    test_predicates.cpp
    test_negative_denominator.cpp
    test_dimensionless_ice1.cpp
    test_dimensionless_ice2.cpp
    test_mixed_value_types.cpp
    test_complicated_system.cpp
    test_reduce_unit.cpp
    test_unscale.cpp
    test_constants.cpp
  )

boost_add_multiple_tests(
  RUN
    test_dimensionless_quantity.cpp
    test_implicit_conversion.cpp
    test_quantity.cpp
    test_unit.cpp
    test_base_dimension.cpp
    test_absolute.cpp
    test_default_conversion.cpp
    test_cmath.cpp
    test_limits.cpp
    test_custom_unit.cpp
    test_scaled_conversion.cpp
    test_lambda.cpp
  )

boost_add_multiple_tests(
  RUN
    test_scaled_unit.cpp
    test_trig.cpp
    test_conversion.cpp
  LINK_BOOST_LIBRARIES
    unit_test_framework
  )

boost_add_test(
  test_output
  RUN
    test_output.cpp
  LINK_BOOST_LIBRARIES
    unit_test_framework
    regex
  )

boost_add_multiple_tests(
  COMPILE_FAIL
    fail_implicit_conversion.cpp
    fail_quantity_construct.cpp
    fail_quantity_assign.cpp
    fail_quantity_add.cpp
    fail_quantity_subtract.cpp
    fail_quantity_add_assign.cpp
    fail_quantity_sub_assign.cpp
    fail_quantity_scalar_add.cpp
    fail_quantity_scalar_sub.cpp
    fail_quantity_unit_add.cpp
    fail_quantity_unit_subtract.cpp
    fail_scalar_quantity_add.cpp
    fail_scalar_quantity_sub.cpp
    fail_unit_quantity_add.cpp
    fail_unit_quantity_subtract.cpp
    fail_adl_detail.cpp
    fail_heterogeneous_unit.cpp
    fail_base_dimension.cpp
    fail_add_temperature.cpp
    fail_quantity_non_unit.cpp
  )
