# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt
find_package(Boost COMPONENTS config test NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)

ryppl_test_suite(
  RUN
    crc_test
  LINK_LIBRARIES
    test_exec_monitor-static
  )
