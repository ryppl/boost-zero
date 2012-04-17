# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
include(RypplProject)
ryppl_project(BoostPython
  FEED_URI http://ryppl.github.com/feeds/boost/python.xml
  SUMMARY "The Boost Python Library is a framework for interfacing Python and C++. It allows you to quickly and seamlessly expose C++ classes functions and objects to Python, and vice-versa, using no special tools -- just your C++ compiler."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/python/"
  AUTHOR "Dave Abrahams"
  MAINTAINER "Dave Abrahams"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "Inter-language"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(PythonLibs)
if(NOT PYTHONLIBS_FOUND)
  return()
endif()

include_directories(
  include
  ${PYTHON_INCLUDE_DIRS}
  )

ryppl_find_package(Boost
  COMPONENTS
    bind
    cmake
    config
    conversion
    core
    foreach
    function
    graph
    integer
    iterator
    mpl
    numeric
    preprocessor
    property_map
    smart_ptr
    static_assert
    tuple
    type_traits
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})
include(BoostAddLibrary)
include(BoostExport)

boost_add_library(python
  SOURCES
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
  LINK_LIBRARIES
    ${PYTHON_LIBRARIES}
  )

set_property(TARGET python-static APPEND PROPERTY
  COMPILE_DEFINITIONS "BOOST_PYTHON_STATIC_LIB=1"
  )

boost_export(
  TARGETS
    python
  INCLUDE_DIRECTORIES
    include
  )

