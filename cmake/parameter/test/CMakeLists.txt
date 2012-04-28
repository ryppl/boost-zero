# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_package(BoostPython)
ryppl_find_package(BoostCore)
ryppl_find_package(BoostTest)

add_definitions(
  ${BoostPython_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostPython_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

ryppl_test_suite(
  RUN
    basics.cpp
    sfinae.cpp
    macros.cpp
    earwicker.cpp
    tutorial.cpp
    singular.cpp
    mpl.cpp
    preprocessor.cpp
    preprocessor_deduced.cpp
    efficiency.cpp
    maybe.cpp
    deduced.cpp
    optional_deduced_sfinae.cpp
    deduced_dependent_predicate.cpp
    normalized_argument_types.cpp
  COMPILE
    ntp.cpp
    unwrap_cv_reference.cpp
    compose.cpp
  COMPILE_FAIL
    duplicates.cpp
    deduced_unmatched_arg.cpp
#  PYTHON  
#    python_test
  NO_SINGLE_TARGET  
  )
