# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostWave CXX)

include(Ryppl)

ryppl_find_and_use_package(BoostAny)
ryppl_find_and_use_package(BoostConceptCheck)
ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostCore)
ryppl_find_and_use_package(BoostException)
ryppl_find_and_use_package(BoostFilesystem)
ryppl_find_and_use_package(BoostInteger)
ryppl_find_and_use_package(BoostIterator)
ryppl_find_and_use_package(BoostMPL)
ryppl_find_and_use_package(BoostMultiIndex)
ryppl_find_and_use_package(BoostPool)
ryppl_find_and_use_package(BoostPreprocessor)
ryppl_find_and_use_package(BoostProgramOptions)
ryppl_find_and_use_package(BoostSerialization)
ryppl_find_and_use_package(BoostSmartPtr)
ryppl_find_and_use_package(BoostSpirit)
ryppl_find_and_use_package(BoostStaticAssert)
ryppl_find_and_use_package(BoostTimer)
ryppl_find_and_use_package(BoostTypeTraits)
ryppl_find_and_use_package(BoostUtility)
ryppl_find_and_use_package(BoostXpressive)

add_definitions(
  ${BoostAny_DEFINITIONS}
  ${BoostConceptCheck_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFilesystem_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostIterator_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostMultiIndex_DEFINITIONS}
  ${BoostPool_DEFINITIONS}
  ${BoostPreprocessor_DEFINITIONS}
  ${BoostProgramOptions_DEFINITIONS}
  ${BoostSerialization_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostSpirit_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostTimer_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  ${BoostXpressive_DEFINITIONS}
  )

include_directories(
  ${BoostAny_INCLUDE_DIRS}
  ${BoostConceptCheck_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFilesystem_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostIterator_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostMultiIndex_INCLUDE_DIRS}
  ${BoostPool_INCLUDE_DIRS}
  ${BoostPreprocessor_INCLUDE_DIRS}
  ${BoostProgramOptions_INCLUDE_DIRS}
  ${BoostSerialization_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostSpirit_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostTimer_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  ${BoostXpressive_INCLUDE_DIRS}
  include
  )

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

# # wave currently has problems with filesystem3
# add_executable(wave
#   tool/cpp.cpp
#   )
# target_link_libraries(wave
#   boost_wave
#   )
