# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostCRC)
ryppl_find_and_use_package(BoostGIL)

configure_file(
  "${CMAKE_CURRENT_SOURCE_DIR}/gil_reference_checksums.txt"
  "${CMAKE_CURRENT_BINARY_DIR}/gil_reference_checksums.txt"
  COPYONLY
  )

add_definitions(
  -DBOOST_GIL_NO_IO
  -D_SCL_SECURE_NO_WARNINGS
  )

# image
ryppl_test_suite(
  RUN
    image.cpp
  ADDITIONAL_SOURCES
    sample_image.cpp
    error_if.cpp
  )

#channel
ryppl_test_suite(
  RUN
    channel.cpp 
  ADDITIONAL_SOURCES
    error_if.cpp
  )

# pixel
ryppl_test_suite(
  RUN
    pixel.cpp 
  ADDITIONAL_SOURCES
    error_if.cpp
  )

# pixel_iterator
ryppl_test_suite(
  RUN
    pixel_iterator.cpp 
  ADDITIONAL_SOURCES
    error_if.cpp
  )

# image_io
ryppl_test_suite(
  RUN
    image_io.cpp 
  ADDITIONAL_SOURCES
    error_if.cpp
  )
