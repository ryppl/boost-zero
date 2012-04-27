# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
include(RypplTestSuite)

ryppl_find_package(BoostContainer)
ryppl_find_package(BoostTest)

add_definitions(
  ${BoostContainer_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostContainer_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

file(GLOB sources *.cpp)
ryppl_test_suite(RUN ${sources} NO_SINGLE_TARGET)
