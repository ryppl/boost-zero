# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostMath CXX)

include(Ryppl)
include(RypplPrecompileHeader)
include(Ryppl)

ryppl_find_package(BoostAlgorithm)
ryppl_find_package(BoostArray)
ryppl_find_package(BoostBind)
ryppl_find_package(BoostConceptCheck)
ryppl_find_package(BoostConfig)
ryppl_find_package(BoostConversion)
ryppl_find_package(BoostCore)
ryppl_find_package(BoostException)
ryppl_find_package(BoostFormat)
ryppl_find_package(BoostFunction)
ryppl_find_package(BoostFusion)
ryppl_find_package(BoostInteger)
ryppl_find_package(BoostMPL)
ryppl_find_package(BoostNumeric)
ryppl_find_package(BoostRandom)
ryppl_find_package(BoostRegex)
ryppl_find_package(BoostSmartPtr)
ryppl_find_package(BoostSpirit)
ryppl_find_package(BoostStaticAssert)
ryppl_find_package(BoostTest)
ryppl_find_package(BoostTimer)
ryppl_find_package(BoostTR1)
ryppl_find_package(BoostTuple)
ryppl_find_package(BoostTypeTraits)
ryppl_find_package(BoostUtility)

add_definitions(
  ${BoostAlgorithm_DEFINITIONS}
  ${BoostArray_DEFINITIONS}
  ${BoostBind_DEFINITIONS}
  ${BoostConceptCheck_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostConversion_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFormat_DEFINITIONS}
  ${BoostFunction_DEFINITIONS}
  ${BoostFusion_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostNumeric_DEFINITIONS}
  ${BoostRandom_DEFINITIONS}
  ${BoostRegex_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostSpirit_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  ${BoostTimer_DEFINITIONS}
  ${BoostTR1_DEFINITIONS}
  ${BoostTuple_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostAlgorithm_INCLUDE_DIRS}
  ${BoostArray_INCLUDE_DIRS}
  ${BoostBind_INCLUDE_DIRS}
  ${BoostConceptCheck_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFormat_INCLUDE_DIRS}
  ${BoostFunction_INCLUDE_DIRS}
  ${BoostFusion_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostNumeric_INCLUDE_DIRS}
  ${BoostRandom_INCLUDE_DIRS}
  ${BoostRegex_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostSpirit_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  ${BoostTimer_INCLUDE_DIRS}
  ${BoostTR1_INCLUDE_DIRS}
  ${BoostTuple_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  include
  src/tr1
  )

set(C99_SOURCES
  acosh
  asinh
  atanh
  cbrt
  copysign
  erfc
  erf
  expm1
  fmax
  fmin
  fpclassify
  hypot
  lgamma
  llround
  log1p
  lround
  nextafter
  nexttoward
  round
  tgamma
  trunc
  )

set(TR1_SOURCES
  assoc_laguerre
  assoc_legendre
  beta
  comp_ellint_1
  comp_ellint_2
  comp_ellint_3
  cyl_bessel_i
  cyl_bessel_j
  cyl_bessel_k
  cyl_neumann
  ellint_1
  ellint_2
  ellint_3
  expint
  hermite
  laguerre
  legendre
  riemann_zeta
  sph_bessel
  sph_legendre
  sph_neumann
  )

function(add_math_library name suffix)
  set(sources)
  foreach(src ${ARGN})
    list(APPEND sources "src/tr1/${src}${suffix}.cpp")
  endforeach(src)
  ryppl_add_pch(${name} sources
    <boost/math/special_functions.hpp>
    )
  add_library(boost_math_${name}
    ${sources}
    )
  ryppl_add_pch_to_target(boost_math_${name}
    ${PCH_HEADER}
    )
endfunction(add_math_library)

add_math_library(tr1  ""  ${TR1_SOURCES})
add_math_library(tr1f "f" ${TR1_SOURCES})
add_math_library(tr1l "l" ${TR1_SOURCES})
add_math_library(c99  ""  ${C99_SOURCES})
add_math_library(c99f "f" ${C99_SOURCES})
add_math_library(c99l "l" ${C99_SOURCES})

ryppl_export(
  TARGETS
    boost_math_tr1
    boost_math_tr1f
    boost_math_tr1l
    boost_math_c99
    boost_math_c99f
    boost_math_c99l
  DEPENDS
    BoostAlgorithm 
    BoostArray 
    BoostBind 
    BoostConceptCheck 
    BoostConfig 
    BoostConversion 
    BoostCore 
    BoostException 
    BoostFormat 
    BoostFunction 
    BoostFusion 
    BoostInteger 
    BoostMPL 
    BoostNumeric 
    BoostSmartPtr 
    BoostSpirit 
    BoostStaticAssert 
    BoostTR1 
    BoostTuple 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
