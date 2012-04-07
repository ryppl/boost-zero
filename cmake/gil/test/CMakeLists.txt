# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS crc NO_MODULE)
include("${Boost_USE_FILE}")

configure_file(
  "${CMAKE_CURRENT_SOURCE_DIR}/gil_reference_checksums.txt"
  "${CMAKE_CURRENT_BINARY_DIR}/gil_reference_checksums.txt"
  COPYONLY
  )

add_definitions(
  -DBOOST_GIL_NO_IO
  -D_SCL_SECURE_NO_WARNINGS
  )

boost_add_test(image RUN
  image.cpp
  sample_image.cpp
  error_if.cpp
  )

boost_add_test(channel RUN
  channel.cpp 
  error_if.cpp
  )

boost_add_test(pixel RUN
  pixel.cpp 
  error_if.cpp
  )

boost_add_test(pixel_iterator RUN
  pixel_iterator.cpp 
  error_if.cpp
  )

boost_add_test(image_io RUN
  image_io.cpp 
  error_if.cpp
  )
