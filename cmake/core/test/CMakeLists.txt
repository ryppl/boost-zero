# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_add_test(is_sorted RUN
  is_sorted_test.cpp
  )

boost_add_test(container_no_fwd RUN
  container_fwd/container_no_fwd_test.cpp
  )

boost_add_test(container_fwd RUN
  container_fwd/container_fwd_test.cpp
  )

boost_add_test(container_fwd_debug RUN
  SOURCES
    container_fwd/container_fwd_test.cpp
# DEFINES
#   _STLP_DEBUG
#   _GLIBCXX_DEBUG
  )

boost_add_test(correctly_disable COMPILE FAIL
  container_fwd/correctly_disable_fail.cpp
  )  

boost_add_test(correctly_disable_debug COMPILE FAIL
  SOURCES
    container_fwd/correctly_disable_fail.cpp
# DEFINES
#   _STLP_DEBUG
#   _GLIBCXX_DEBUG
  )
