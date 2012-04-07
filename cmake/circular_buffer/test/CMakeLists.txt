# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Boost COMPONENTS circular_buffer cmake test NO_MODULE)
include(${Boost_USE_FILE})
include(BoostAddTestSuite)

#if(MSVC)
#  add_definitions(_SCL_SECURE_NO_WARNINGS)
#  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")     # all warnings
#  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd4996") # 'function': was declared deprecated
#  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd4244") # conversion from 'int' to 'unsigned short', possible loss of data
# msvc:<asynch-exceptions>on
#endif(MSVC)

boost_add_test_suite(
  RUN
    base_test 									#<threading>single 
		space_optimized_test 				# <threading>single
    soft_iterator_invalidation 	# <threading>single
    constant_erase_test					# <threading>single
	COMPILE
	#	bounded_buffer_comparison.cpp : <threading>multi : ]
  )
