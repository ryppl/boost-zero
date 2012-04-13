# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt
find_package(Boost COMPONENTS test NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

# Some tests are run both statically and as shared libraries since Filesystem
# has a history of bugs that appear only in one type of build or the other.

ryppl_test_suite(
  RUN
		convenience_test.cpp
		deprecated_test.cpp
		fstream_test.cpp
		large_file_support_test.cpp
		locale_info.cpp
		operations_test.cpp
		path_test.cpp
		path_unit_test.cpp
		../example/simple_ls.cpp
		../example/file_status.cpp
	LINK_LIBRARIES
		filesystem-static
		system-static
	NO_SINGLE_TARGET
	)

ryppl_test_suite(
  RUN
		operations_test.cpp
		operations_unit_test.cpp
		path_test.cpp
		path_unit_test.cpp
	LINK_LIBRARIES
		filesystem-shared
		system-shared
	NO_SINGLE_TARGET
	)
 
