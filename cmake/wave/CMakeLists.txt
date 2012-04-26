# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostWave CXX)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    any
    concept_check
    config
    core
    exception
    filesystem
    integer
    iterator
    mpl
    multi_index
    pool
    preprocessor
    program_options
    serialization
    smart_ptr
    spirit
    static_assert
    timer
    type_traits
    utility
    xpressive
  NO_MODULE
  )
include(${Boost_USE_FILE})

include_directories(include)

if(MSVC)
  add_definitions(
    -D_CRT_SECURE_NO_WARNINGS
    -D_SCL_SECURE_NO_WARNINGS
    )
endif(MSVC)

add_library(boost_wave
  src/instantiate_cpp_exprgrammar.cpp
  src/instantiate_cpp_grammar.cpp
  src/instantiate_cpp_literalgrs.cpp
  src/instantiate_defined_grammar.cpp
  src/instantiate_predef_macros.cpp
  src/instantiate_re2c_lexer.cpp
  src/instantiate_re2c_lexer_str.cpp
  src/token_ids.cpp
  src/wave_config_constant.cpp
  src/cpplexer/re2clex/aq.cpp
  src/cpplexer/re2clex/cpp_re.cpp
  )

target_link_libraries(boost_wave
  boost_thread
  )

add_executable(wave
  tool/cpp.cpp
  )

target_link_libraries(wave
  boost_wave
  )
