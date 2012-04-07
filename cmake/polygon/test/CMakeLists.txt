# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

boost_add_test(gtl_boost_unit_test RUN gtl_boost_unit_test.cpp)
