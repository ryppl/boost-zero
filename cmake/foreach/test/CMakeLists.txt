# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

boost_add_multiple_tests(
  RUN
    stl_byval
    stl_byref
    stl_byval_r
    stl_byref_r
    array_byval
    array_byref
    array_byval_r
    array_byref_r
    cstr_byval
    cstr_byref
    cstr_byval_r
    cstr_byref_r
    pair_byval
    pair_byref
    pair_byval_r
    pair_byref_r
    user_defined
    call_once
    rvalue_const
    rvalue_nonconst
    rvalue_const_r
    rvalue_nonconst_r
    dependent_type
    misc
  COMPILE
    noncopyable
  )
