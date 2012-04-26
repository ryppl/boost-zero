# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostRegex CXX)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    concept_check
    config
    core
    exception
    functional
    integer
    iterator
    mpl
    smart_ptr
    static_assert
    test
    timer
    type_traits
    utility
    xpressive
  NO_MODULE
  )
include(${Boost_USE_FILE})
include(RypplExport)

ryppl_find_package(ICU)
if(ICU_FOUND)
  add_definitions(-DBOOST_HAS_ICU=1)
endif()

add_library(boost_regex
  src/c_regex_traits.cpp
  src/cpp_regex_traits.cpp
  src/cregex.cpp
  src/fileiter.cpp
  src/icu.cpp
  src/instances.cpp
  src/posix_api.cpp
  src/regex.cpp
  src/regex_debug.cpp
  src/regex_raw_buffer.cpp
  src/regex_traits_defaults.cpp
  src/static_mutex.cpp
  src/w32_regex_traits.cpp
  src/wc_regex_traits.cpp
  src/wide_posix_api.cpp
  src/winstances.cpp 
  src/usinstances.cpp
  )

target_link_libraries(boost_regex
  ${ICU_LIBRARIES}
  ${ICU_I18N_LIBRARIES}
  )

ryppl_export(
  TARGETS
    boost_regex
  DEPENDS
    BoostConceptCheck 
    BoostConfig 
    BoostCore 
    BoostException 
    BoostFunctional 
    BoostInteger 
    BoostIterator 
    BoostMPL 
    BoostSmartPtr 
    BoostStaticAssert 
    BoostTypeTraits 
    BoostUtility 
    BoostXpressive 
  INCLUDE_DIRECTORIES
    include
  )
