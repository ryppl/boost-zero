# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostAny)
ryppl_find_and_use_package(BoostTest)

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
