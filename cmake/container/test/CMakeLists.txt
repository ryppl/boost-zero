# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS container test NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)

file(GLOB sources *.cpp)
ryppl_test_suite(RUN ${sources} NO_SINGLE_TARGET)
