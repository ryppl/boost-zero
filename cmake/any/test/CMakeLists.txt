# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS any test NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)

ryppl_test_suite(
  RUN
    ../any_test.cpp
  COMPILE_FAIL
    any_cast_cv_failed.cpp
  )
