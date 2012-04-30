# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostPython CXX)

include(Ryppl)

ryppl_find_and_use_package(BoostBind)
ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostConversion)
ryppl_find_and_use_package(BoostCore)
ryppl_find_and_use_package(BoostForeach)
ryppl_find_and_use_package(BoostFunction)
ryppl_find_and_use_package(BoostGraph)
ryppl_find_and_use_package(BoostInteger)
ryppl_find_and_use_package(BoostIterator)
ryppl_find_and_use_package(BoostMPL)
ryppl_find_and_use_package(BoostNumeric)
ryppl_find_and_use_package(BoostPreprocessor)
ryppl_find_and_use_package(BoostPropertyMap)
ryppl_find_and_use_package(BoostSmartPtr)
ryppl_find_and_use_package(BoostStaticAssert)
ryppl_find_and_use_package(BoostTuple)
ryppl_find_and_use_package(BoostTypeTraits)
ryppl_find_and_use_package(BoostUtility)
ryppl_find_and_use_package(PythonLibs)

add_definitions(
  ${BoostBind_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostConversion_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostForeach_DEFINITIONS}
  ${BoostFunction_DEFINITIONS}
  ${BoostGraph_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostIterator_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostNumeric_DEFINITIONS}
  ${BoostPreprocessor_DEFINITIONS}
  ${BoostPropertyMap_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostTuple_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostBind_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostForeach_INCLUDE_DIRS}
  ${BoostFunction_INCLUDE_DIRS}
  ${BoostGraph_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostIterator_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostNumeric_INCLUDE_DIRS}
  ${BoostPreprocessor_INCLUDE_DIRS}
  ${BoostPropertyMap_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostTuple_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  ${PYTHON_INCLUDE_DIRS}
  include
  )

add_library(boost_python
  src/numeric.cpp
  src/list.cpp
  src/long.cpp
  src/dict.cpp
  src/tuple.cpp
  src/str.cpp
  src/slice.cpp
  src/converter/from_python.cpp
  src/converter/registry.cpp
  src/converter/type_id.cpp
  src/object/enum.cpp
  src/object/class.cpp
  src/object/function.cpp
  src/object/inheritance.cpp
  src/object/life_support.cpp
  src/object/pickle_support.cpp
  src/errors.cpp
  src/module.cpp
  src/converter/builtin_converters.cpp
  src/converter/arg_to_python_base.cpp
  src/object/iterator.cpp
  src/object/stl_iterator.cpp
  src/object_protocol.cpp
  src/object_operators.cpp
  src/wrapper.cpp
  src/import.cpp
  src/exec.cpp
  src/object/function_doc_signature.cpp
  )

set_property(TARGET boost_python APPEND PROPERTY
  COMPILE_DEFINITIONS BOOST_PYTHON_SOURCE
  )

target_link_libraries(boost_python
  ${PYTHON_LIBRARIES}
  )

if(NOT BUILD_SHARED_LIBS)
  set_target_properties(boost_python PROPERTIES
    PREFIX "lib"
    )
  set_property(TARGET boost_python APPEND PROPERTY
    COMPILE_DEFINITIONS "BOOST_PYTHON_STATIC_LIB=1"
    )
endif(NOT BUILD_SHARED_LIBS)

ryppl_export(
  TARGETS
    boost_python
  INCLUDE_DIRECTORIES
    include
  )
