# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS assign signals2 NO_MODULE)
include("${Boost_USE_FILE}")

# phoenix_core
boost_add_multiple_tests(RUN
  core/primitives_tests.cpp
  )

# phoenix_operator
boost_add_multiple_tests(RUN
  operator/arithmetic_tests.cpp
  operator/bitwise_tests.cpp
  operator/comparison_tests.cpp
  operator/if_else_tests.cpp
  operator/io_tests.cpp
  operator/logical_tests.cpp
  operator/misc_binary_tests.cpp
  operator/self_tests.cpp
  operator/unary_tests.cpp
  operator/member.cpp
  )

# phoenix_object
boost_add_multiple_tests(RUN
  object/cast_tests.cpp
  object/new_delete_tests.cpp
  )

# phoenix_function
boost_add_multiple_tests(RUN
  function/adapt_function.cpp
  function/function_tests.cpp
  #function/function_tests_phx2.cpp
  )

# phoenix_bind
boost_add_multiple_tests(RUN
  bind/bind_function_tests.cpp
  bind/bind_function_object_tests.cpp
  #bind/bind_function_object_tests_phx2.cpp
  bind/bind_member_function_tests.cpp
  bind/bind_member_variable_tests.cpp
  )

# phoenix_statement
boost_add_multiple_tests(RUN
  statement/if_tests.cpp
  statement/loops_tests.cpp
  statement/switch_tests.cpp
  statement/exceptions.cpp
  )
        
# phoenix_container
boost_add_multiple_tests(RUN
  container/container_tests1a.cpp
  container/container_tests1b.cpp
  container/container_tests2a.cpp
  container/container_tests2b.cpp
  container/container_tests3a.cpp
  container/container_tests3b.cpp
  container/container_tests4a.cpp
  container/container_tests4b.cpp
  container/container_tests5a.cpp
  container/container_tests5b.cpp
  container/container_tests6a.cpp
  container/container_tests6b.cpp
  )

# phoenix_scope
boost_add_multiple_tests(RUN
  scope/lambda_tests.cpp
  #scope/lambda_tests_phx2.cpp
  scope/let_tests.cpp
  scope/dynamic_tests.cpp
  scope/bug3289.cpp
  )

boost_add_test(scope/bug_000008.cpp LINK_BOOST_LIBRARIES thread)

# phoenix_algorithm
boost_add_multiple_tests(RUN
  algorithm/iteration.cpp
  algorithm/transformation1.cpp
  algorithm/transformation2.cpp
  algorithm/transformation3.cpp
  algorithm/transformation4.cpp
  algorithm/querying.cpp
  algorithm/querying2.cpp
  )

# phoenix_boost_bind_compatibility
boost_add_multiple_tests(RUN
  boost_bind_compatibility/bind_and_or_test.cpp
  boost_bind_compatibility/bind_const_test.cpp
  boost_bind_compatibility/bind_cv_test.cpp
  boost_bind_compatibility/bind_dm_test.cpp
  boost_bind_compatibility/bind_dm2_test.cpp
  boost_bind_compatibility/bind_dm3_test.cpp
  boost_bind_compatibility/bind_eq_test.cpp
  boost_bind_compatibility/bind_eq2_test.cpp
  boost_bind_compatibility/bind_eq3_test.cpp
  boost_bind_compatibility/bind_fn2_test.cpp
  boost_bind_compatibility/bind_function_test.cpp
  boost_bind_compatibility/bind_mf2_test.cpp
  boost_bind_compatibility/bind_not_test.cpp
  boost_bind_compatibility/bind_placeholder_test.cpp
  boost_bind_compatibility/bind_ref_test.cpp
  boost_bind_compatibility/bind_rel_test.cpp
  boost_bind_compatibility/bind_rvalue_test.cpp
  boost_bind_compatibility/bind_rv_sp_test.cpp
  boost_bind_compatibility/bind_stateful_test.cpp
  boost_bind_compatibility/bind_test.cpp
  )

# phoenix_regression
boost_add_multiple_tests(RUN
  regression/bug4853.cpp
  regression/bug5626.cpp
  regression/bug5968.cpp
  )

# phoenix_include
boost_add_multiple_tests(RUN
  include/bind.cpp
  include/core.cpp
  include/function.cpp
  include/fusion.cpp
  include/object.cpp
  include/operator.cpp
  include/scope.cpp
  include/statement.cpp
  include/stl.cpp
  include/version.cpp
  include/core/actor.cpp
  include/core/argument.cpp
  include/core/arity.cpp
  include/core/domain.cpp
  include/core/environment.cpp
  include/core/expression.cpp
  include/core/function_equal.cpp
  include/core/is_actor.cpp
  include/core/is_nullary.cpp
  include/core/nothing.cpp
  include/core/meta_grammar.cpp
  include/core/limits.cpp
  include/core/terminal.cpp
  include/core/value.cpp
  include/core/visit_each.cpp
  include/core/reference.cpp
  include/fusion/at.cpp
  include/object/const_cast.cpp
  include/object/construct.cpp
  include/object/delete.cpp
  include/object/dynamic_cast.cpp
  include/object/new.cpp
  include/object/reinterpret_cast.cpp
  include/object/static_cast.cpp
  include/operator/arithmetic.cpp
  include/operator/bitwise.cpp
  include/operator/comparison.cpp
  include/operator/if_else.cpp
  include/operator/io.cpp
  include/operator/logical.cpp
  include/operator/self.cpp
  include/scope/dynamic.cpp
  include/scope/lambda.cpp
  include/scope/let.cpp
  include/scope/local_variable.cpp
  include/scope/scoped_environment.cpp
  include/scope/this.cpp
  include/statement/do_while.cpp
  include/statement/for.cpp
  include/statement/if.cpp
  include/statement/sequence.cpp
  include/statement/switch.cpp
  include/statement/throw.cpp
  include/statement/try_catch.cpp
  include/statement/while.cpp
  include/stl/algorithm.cpp
  include/stl/container.cpp
  include/stl/algorithm/transformation.cpp
  include/support/iterate.cpp
  include/support/preprocessor/round.cpp
  )

boost_add_test(function_function   RUN include/function/function.cpp)
boost_add_test(operator_member     RUN include/operator/member.cpp)
boost_add_test(container_container RUN include/stl/container/container.cpp)
boost_add_test(include_iteration   RUN include/stl/algorithm/iteration.cpp)
boost_add_test(include_querying    RUN include/stl/algorithm/querying.cpp)
