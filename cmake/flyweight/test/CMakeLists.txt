# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(Threads)
find_package(Boost COMPONENTS container NO_MODULE)
include("${Boost_USE_FILE}")

boost_add_test(assoc_cont_factory RUN
  SOURCES
    test_assoc_cont_factory.cpp
    test_assoc_cont_fact_main.cpp
  LINK_LIBRARIES
    ${CMAKE_THREAD_LIBS_INIT}
  )

boost_add_test(basic RUN
  SOURCES
    test_basic.cpp
    test_basic_main.cpp
  LINK_LIBRARIES
    ${CMAKE_THREAD_LIBS_INIT}
  )

boost_add_test(custom_factory RUN
  SOURCES
    test_basic.cpp
    test_basic_main.cpp
  LINK_LIBRARIES
    ${CMAKE_THREAD_LIBS_INIT}
  )

boost_add_test(init RUN
  SOURCES
    test_init.cpp
    test_init_main.cpp
  LINK_LIBRARIES
    ${CMAKE_THREAD_LIBS_INIT}
  )

boost_add_test(intermod_holder RUN
  SOURCES
    test_intermod_holder.cpp
    test_intermod_holder_main.cpp
  LINK_LIBRARIES
    ${CMAKE_THREAD_LIBS_INIT}
    intermod_holder_dll
  )

boost_add_test(multictor RUN
  SOURCES
    test_multictor.cpp
    test_multictor_main.cpp
  LINK_LIBRARIES
    ${CMAKE_THREAD_LIBS_INIT}
  )

boost_add_test(no_locking RUN
  SOURCES
    test_no_locking.cpp
    test_no_locking_main.cpp
  LINK_LIBRARIES
    ${CMAKE_THREAD_LIBS_INIT}
  )

boost_add_test(no_tracking RUN
  SOURCES
    test_no_tracking.cpp
    test_no_tracking_main.cpp
  LINK_LIBRARIES
    ${CMAKE_THREAD_LIBS_INIT}
  )

boost_add_test(set_factory RUN
  SOURCES
    test_set_factory.cpp
    test_set_factory_main.cpp
  LINK_LIBRARIES
    ${CMAKE_THREAD_LIBS_INIT}
  )

add_library(intermod_holder_dll SHARED EXCLUDE_FROM_ALL
  intermod_holder_dll.cpp
  )
set_property(TARGET intermod_holder_dll APPEND PROPERTY
  COMPILE_DEFINITIONS "BOOST_FLYWEIGHT_TEST_INTERMOD_HOLDER_DLL_SOURCE=1"
  )
