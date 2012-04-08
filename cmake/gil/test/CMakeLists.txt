# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS crc test NO_MODULE)
include("${Boost_USE_FILE}")
include(BoostAddTestSuite)

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
boost_add_test_suite(
  RUN
    image.cpp
  ADDITIONAL_SOURCES
    sample_image.cpp
    error_if.cpp
  )

#channel
boost_add_test_suite(
  RUN
    channel.cpp 
  ADDITIONAL_SOURCES
    error_if.cpp
  )

# pixel
boost_add_test_suite(
  RUN
    pixel.cpp 
  ADDITIONAL_SOURCES
    error_if.cpp
  )

# pixel_iterator
boost_add_test_suite(
  RUN
    pixel_iterator.cpp 
  ADDITIONAL_SOURCES
    error_if.cpp
  )

# image_io
boost_add_test_suite(
  RUN
    image_io.cpp 
  ADDITIONAL_SOURCES
    error_if.cpp
  )
