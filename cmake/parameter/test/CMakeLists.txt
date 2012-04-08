# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS python core test NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)

boost_add_test_suite(
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
