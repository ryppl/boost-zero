# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS config test NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)

add_definitions(-DBOOST_PROTO_DONT_USE_PREPROCESSED_FILES)

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
