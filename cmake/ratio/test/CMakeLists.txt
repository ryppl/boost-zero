# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostRatio)

##<os>LINUX:<threading>multi
## uncomment the line above if you build outside the Boost release
##<include>$(BOOST_ROOT)
## uncomment the line above if you build outside the Boost release
##<include>../../..
#<toolset>msvc:<asynch-exceptions>on
        
# <define>BOOST_ENABLE_WARNINGS
# <define>BOOST_RATIO_USES_MPL_ASSERT
# <define>BOOST_MPL_NEXT_PRIOR_EXT
        
add_definitions(
  -DBOOST_ENABLE_WARNINGS 
  -DBOOST_RATIO_USES_MPL_ASSERT 
  -DBOOST_MPL_NEXT_PRIOR_EXT
  )

# <warnings>all
if(MSVC)
  add_definitions(/W4)
endif()
  
# #<toolset>sun:<define>BOOST_COMMON_TYPE_DONT_USE_TYPEOF
# #<toolset>sun:<define>BOOST_TYPEOF_EMULATION
# <toolset>sun:<define>__typeof__=__typeof__ 
# <warnings>all

# #<toolset>pathscale:<cxxflags>-Wextra
# <toolset>pathscale:<cxxflags>-Wno-long-long
# <toolset>pathscale:<cxxflags>-pedantic
# <toolset>gcc-mingw-4.5.0:<cxxflags>-Wno-missing-field-initializers
# <toolset>gcc-mingw-4.5.0:<cxxflags>-fdiagnostics-show-option
# <toolset>gcc-mingw-4.6.0:<cxxflags>-fdiagnostics-show-option

# <toolset>gcc:<cxxflags>-Wextra
# <toolset>gcc:<cxxflags>-Wno-long-long
# <toolset>gcc:<cxxflags>-pedantic
# <toolset>darwin:<cxxflags>-Wextra
# <toolset>darwin:<cxxflags>-Wno-long-long
# <toolset>darwin:<cxxflags>-pedantic
# <toolset>clang:<cxxflags>-Wextra
# <toolset>clang:<cxxflags>-pedantic
# <toolset>clang:<cxxflags>-Wno-long-long
if(CMAKE_COMPILER_IS_GNUCXX OR (${CMAKE_SYSTEM_NAME} MATCHES "Darwin") OR CMAKE_COMPILER_IS_CLANGXX)
  add_definitions(
    -Wextra 
    -Wno-long-long 
    -pedantic
    )
elseif(MSVC)
  add_definitions(/wd4127)
endif()

## Note: Some of the remarks from the Intel compiler are disabled
## remark #1418: external function definition with no prior declaration
## remark #304: access control not specified ("public" by default)
#        <toolset>intel:<cxxflags>-wd304,1418

    
if(MSVC80)
  add_definitions(
    -D_SCL_SECURE_NO_DEPRECATE
    -D_CRT_SECURE_NO_DEPRECATE
    )
elseif(MSVC10)
  add_definitions(-D_SCL_SECURE_NO_DEPRECATE)
elseif(CMAKE_COMPILER_IS_GNUCXX)
  add_definitions(-ftemplate-depth-1024)
endif()

# ratio.ratio
ryppl_test_suite(
  COMPILE
    typedefs_pass.cpp
    ratio_ratio/ratio_pass.cpp
  COMPILE_FAIL
    ratio_ratio/ratio1_fail.cpp
    ratio_ratio/ratio2_fail.cpp
    ratio_ratio/ratio3_fail.cpp
    ratio_ratio/ratio4_fail.cpp
  NO_SINGLE_TARGET
  )
  
# ratio_io
ryppl_test_suite(
  COMPILE_FAIL
    ratio_io/ratio_io_fail.cpp
  RUN
    ratio_io/ratio_io_pass.cpp
  NO_SINGLE_TARGET
  )

# ratio.arithmetic
ryppl_test_suite(
  COMPILE
    ratio_arithmetic/ratio_add_pass.cpp
    ratio_arithmetic/ratio_subtract_pass.cpp
    ratio_arithmetic/ratio_multiply_pass.cpp
    ratio_arithmetic/ratio_divide_pass.cpp
  COMPILE_FAIL
    ratio_arithmetic/ratio_add_fail.cpp 
    ratio_arithmetic/ratio_add_2_fail.cpp 
    ratio_arithmetic/ratio_add_3_fail.cpp 
    ratio_arithmetic/ratio_subtract_fail.cpp 
    ratio_arithmetic/ratio_multiply_fail.cpp 
    ratio_arithmetic/ratio_divide_fail.cpp
  RUN
    ratio_io/ratio_io_pass.cpp
  NO_SINGLE_TARGET
  )

# ratio.comparison
ryppl_test_suite(
  COMPILE
    ratio_comparison/ratio_equal_pass.cpp
    ratio_comparison/ratio_not_equal_pass.cpp
    ratio_comparison/ratio_less_pass.cpp
    ratio_comparison/ratio_less_equal_pass.cpp
    ratio_comparison/ratio_greater_pass.cpp
    ratio_comparison/ratio_greater_equal_pass.cpp
  NO_SINGLE_TARGET
  )

# examples
ryppl_test_suite(
  RUN
    ../example/si_physics.cpp
    ../example/display_ex.cpp
  NO_SINGLE_TARGET
  )
  
# ratio.ext
ryppl_test_suite(
  RUN
    ratio_extensions/ratio_ext_pass.cpp
  COMPILE
    ratio_extensions/mpl_plus_pass.cpp
    ratio_extensions/mpl_minus_pass.cpp
    ratio_extensions/mpl_times_pass.cpp
    ratio_extensions/mpl_divides_pass.cpp
    ratio_extensions/mpl_negate_pass.cpp
    ratio_extensions/mpl_sign_pass.cpp
    ratio_extensions/mpl_abs_pass.cpp
    ratio_extensions/mpl_equal_to_pass.cpp
    ratio_extensions/mpl_not_equal_to_pass.cpp
    ratio_extensions/mpl_less_pass.cpp
    ratio_extensions/mpl_less_equal_pass.cpp
    ratio_extensions/mpl_greater_pass.cpp
    ratio_extensions/mpl_greater_equal_pass.cpp
    ratio_extensions/mpl_arithmetic_pass.cpp
    ratio_extensions/mpl_comparison_pass.cpp
    ratio_extensions/mpl_rational_constant_pass.cpp
  NO_SINGLE_TARGET
  )

## tickets
# ryppl_test_suite(
#  RUN
#    test_6498_pass.cpp
#  NO_SINGLE_TARGET
#  )

