# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(BoostWave CXX)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    any
    cmake
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
include(BoostAddLibrary)

include_directories(include)

if(MSVC)
  add_definitions(
    -D_CRT_SECURE_NO_WARNINGS
    -D_SCL_SECURE_NO_WARNINGS
    )
endif(MSVC)

boost_add_library(wave
  SOURCES
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
  LINK_LIBRARIES
    ${Boost_LIBRARIES}
  )

add_executable(wave
  tool/cpp.cpp
  )

target_link_libraries(wave
  ${Boost_LIBRARIES}
  wave-shared
  )
