# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
include(RypplTestSuite)

ryppl_find_package(BoostCircularBuffer REQUIRED)
ryppl_find_package(BoostTest REQUIRED)

add_definitions(
  ${BoostCircularBuffer_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  )

include_directories(
  ${BoostCircularBuffer_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

if(MSVC)
  add_definitions(
    /D_SCL_SECURE_NO_WARNINGS
    /W4     # all warnings
    /wd4996 # 'function': was declared deprecated
    /wd4244 # conversion from 'int' to 'unsigned short', possible loss of data
    /EHa    # msvc:<asynch-exceptions>on
    )
endif(MSVC)

ryppl_test_suite(
  RUN
    base_test.cpp                   # <threading>single 
    space_optimized_test.cpp        # <threading>single
    soft_iterator_invalidation.cpp  # <threading>single
    constant_erase_test.cpp         # <threading>single
  COMPILE
    bounded_buffer_comparison.cpp   # <threading>multi
  NO_SINGLE_TARGET
  )
