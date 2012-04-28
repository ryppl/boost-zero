# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_package(BoostConfig)
ryppl_find_package(BoostTest)

add_definitions(
  ${BoostConfig_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  -DBOOST_PROTO_DONT_USE_PREPROCESSED_FILES
  )

include_directories(
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

if(MSVC80)
  add_definitions(
    -D_SCL_SECURE_NO_DEPRECATE
    -D_CRT_SECURE_NO_DEPRECATE
    )
elseif(MSVC10)
  add_definitions(-D_SCL_SECURE_NO_DEPRECATE)
elseif(CMAKE_COMPILER_IS_GNUCXX)
  add_definitions(-ftemplate-depth-1024)
endif()

ryppl_test_suite(
  RUN
    calculator.cpp
    constrained_ops.cpp
    deep_copy.cpp
    display_expr.cpp
    deduce_domain.cpp
    examples.cpp
    lambda.cpp
    make_expr.cpp
    matches.cpp
    flatten.cpp
    switch.cpp
    toy_spirit.cpp
    toy_spirit2.cpp
    make.cpp
    noinvoke.cpp
    mem_ptr.cpp #: : : <toolset>msvc:<cxxflags>/wd4355 ]
  COMPILE
    bug2407.cpp
  LINK_LIBRARIES
    boost_unit_test_framework
  NO_SINGLE_TARGET
  )
