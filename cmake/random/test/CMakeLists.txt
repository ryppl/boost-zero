# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostTest)

if(MSVC)
  add_definitions(-D_SCL_SECURE_NO_WARNINGS)
endif(MSVC)

ryppl_test_suite(
  RUN
    test_const_mod.cpp
    test_generate_canonical.cpp
    test_random_number_generator.cpp
    test_minstd_rand0.cpp
    test_minstd_rand.cpp
    test_rand48.cpp
    test_mt11213b.cpp
    test_mt19937.cpp
    test_mt19937_64.cpp
    test_ecuyer1988.cpp
    test_hellekalek1995.cpp
    test_linear_feedback_shift.cpp
    test_taus88.cpp
    test_kreutzer1986.cpp
    test_ranlux3.cpp
    test_ranlux4.cpp
    test_ranlux3_01.cpp
    test_ranlux4_01.cpp
    test_ranlux64_4.cpp
    test_ranlux64_3.cpp
    test_ranlux64_3_01.cpp
    test_ranlux64_4_01.cpp
    test_ranlux24_base.cpp
    test_ranlux24.cpp
    test_ranlux48_base.cpp
    test_ranlux48.cpp
    test_knuth_b.cpp
    test_independent_bits31.cpp
    test_independent_bits32.cpp
    test_lagged_fibonacci.cpp
    test_lagged_fibonacci607.cpp
    test_lagged_fibonacci1279.cpp
    test_lagged_fibonacci2281.cpp
    test_lagged_fibonacci3217.cpp
    test_lagged_fibonacci4423.cpp
    test_lagged_fibonacci9689.cpp
    test_lagged_fibonacci19937.cpp
    test_lagged_fibonacci23209.cpp
    test_lagged_fibonacci44497.cpp
    test_seed_seq.cpp
    test_binomial_distribution.cpp
    test_poisson_distribution.cpp
    test_discrete_distribution.cpp
    test_gamma_distribution.cpp
    test_weibull_distribution.cpp
    test_extreme_value_distribution.cpp
    test_negative_binomial_distribution.cpp
    test_chi_squared_distribution.cpp
    test_fisher_f_distribution.cpp
    test_student_t_distribution.cpp
    test_normal_distribution.cpp
    test_piecewise_constant_distribution.cpp
    test_piecewise_linear_distribution.cpp
    test_exponential_distribution.cpp
    test_bernoulli_distribution.cpp
    test_cauchy_distribution.cpp
    test_geometric_distribution.cpp
    test_lognormal_distribution.cpp
    test_triangle_distribution.cpp
    test_uniform_int_distribution.cpp
    test_uniform_real_distribution.cpp
    test_uniform_on_sphere_distribution.cpp
    test_uniform_smallint_distribution.cpp
    test_old_uniform_real_distribution.cpp
    test_old_uniform_int_distribution.cpp
  LINK_LIBRARIES
    boost_unit_test_framework
  NO_SINGLE_TARGET
  )

ryppl_test_suite(
  RUN
    ../example/random_demo.cpp
    test_binomial.cpp
    test_poisson.cpp
    test_discrete.cpp
    test_gamma.cpp
    test_weibull.cpp
    test_extreme_value.cpp
    test_negative_binomial.cpp
    test_chi_squared.cpp
    test_fisher_f.cpp
    test_student_t.cpp
    test_normal.cpp
    test_piecewise_constant.cpp
    test_piecewise_linear.cpp
    test_exponential.cpp
    test_bernoulli.cpp
    test_cauchy.cpp
    test_geometric.cpp
    test_lognormal.cpp
    test_triangle.cpp
    test_uniform_int.cpp
    test_uniform_real.cpp
    test_uniform_smallint.cpp
    test_old_uniform_real.cpp
    test_old_uniform_int.cpp
#   nondet_random_speed.cpp ;
#   random_device.cpp ;
#   random_speed.cpp ;
#   statistic_tests.cpp ;
  NO_SINGLE_TARGET
  )
  
# run test_random_device.cpp /boost//random : : : <link>static : test_random_device ;
# run test_random_device.cpp /boost//random : : : <link>shared : test_random_device_dll ;

ryppl_test_suite(
  RUN
    test_random_device.cpp
  LINK_LIBRARIES
    boost_random
  NO_SINGLE_TARGET
  )
  
ryppl_test_suite(
  RUN
    test_random_device.cpp
  LINK_LIBRARIES
    boost_random
  NO_SINGLE_TARGET
  )
  
# exe statistic_tests.exe : statistic_tests.cpp ;
# explicit statistic_tests.exe ;

# install statistic_tests : statistic_tests.exe : <install-type>EXE <location>. ;
# explicit statistic_tests ;
