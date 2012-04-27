# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
include(RypplTestSuite)

ryppl_find_package(BoostAny REQUIRED)
ryppl_find_package(BoostTest REQUIRED)

add_definitions(
  ${BoostAny_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostAny_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

ryppl_test_suite(
  RUN
    ../any_test.cpp
  COMPILE_FAIL
    any_cast_cv_failed.cpp
  )
