# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS array cmake NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)

ryppl_test_suite(
  RUN
    array0.cpp
    array1.cpp
    array2.cpp
    array3.cpp
    array4.cpp
    array5.cpp
    array6.cpp
  NO_SINGLE_TARGET
  )
