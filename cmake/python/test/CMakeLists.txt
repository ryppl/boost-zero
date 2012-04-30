# Copyright (C) 2011 Ravikiran Rajagopal <lists_ravi@lavabit.com>
# Copyright (C) 2011 Daniel Pfeifer <daniel@pfeifer-mail.de>
# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
ryppl_find_and_use_package(PythonInterp)

function( boost_python_test_library_add target target_module )
  add_library(${target} MODULE EXCLUDE_FROM_ALL ${ARGN})
  boost_link_libraries(${target} python SHARED)
  set_property(TARGET ${target} APPEND PROPERTY
    COMPILE_DEFINITIONS "BOOST_ALL_DYN_LINK=1;BOOST_ALL_NO_LIB=1")
  set_target_properties(${target} PROPERTIES
    PREFIX ""
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}"
    OUTPUT_NAME "${target_module}"
    )
endfunction()

function( boost_python_test_add name )
  cmake_parse_arguments( BPTEST_TARGET
    ""
    "MODULE"
    "SOURCES;EXECUTABLE;ADDITIONAL_MODULE"
    ${ARGN}
    )
  if ( NOT BPTEST_TARGET_MODULE )
    set( BPTEST_TARGET_MODULE ${name}_ext )
  endif()
  set( target ${BOOST_CURRENT}-test-${name} )
  if( NOT BPTEST_TARGET_SOURCES )
    set( BPTEST_TARGET_SOURCES ${name}.cpp )
  endif()
  if( NOT BPTEST_TARGET_EXECUTABLE )
    set( BPTEST_TARGET_EXECUTABLE ${name}.py )
  endif()
  #message( STATUS "${target}: ${BPTEST_TARGET_EXECUTABLE}, ${BPTEST_TARGET_SOURCES}" )
  boost_python_test_library_add( ${target} ${BPTEST_TARGET_MODULE} ${BPTEST_TARGET_SOURCES} )
  if( BPTEST_TARGET_ADDITIONAL_MODULE )
    list( GET BPTEST_TARGET_ADDITIONAL_MODULE 0 BPTEST_ADDITIONAL_MODNAME )
    boost_python_test_library_add( ${BPTEST_ADDITIONAL_MODNAME} ${BPTEST_TARGET_ADDITIONAL_MODULE} ) # repeat first argument
    add_dependencies( ${target} ${BPTEST_ADDITIONAL_MODNAME} )
  endif()

  foreach( executable ${BPTEST_TARGET_EXECUTABLE} )
    set( test_run_args
      "-DENVIRONMENT_VARS=PYTHONPATH"
      "-DPYTHONPATH=${CMAKE_CURRENT_BINARY_DIR}"
      "-DCOMMAND=${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/${executable}"
      "-DTARGET=$<TARGET_FILE:${target}>"
      )
    add_custom_command(TARGET ${target} POST_BUILD
      COMMAND ${CMAKE_COMMAND} ${test_run_args} -P "${boost_test_run_script}"
      )
  endforeach()

  set(project_test "${BOOST_CURRENT}-test")
  if(NOT TARGET ${project_test})
    add_custom_target(${project_test})
    if(TARGET test)
      add_dependencies(test ${project_test})
    endif(TARGET test)
  endif(NOT TARGET ${project_test})
  add_dependencies(${project_test} ${target})
endfunction()

boost_python_test_add(crossmod_exception
  MODULE crossmod_exception_a
  SOURCES crossmod_exception_a.cpp
  ADDITIONAL_MODULE crossmod_exception_b crossmod_exception_b.cpp
  )

boost_python_test_add(numpy
  EXECUTABLE
    printer.py
    numeric_tests.py
    numarray_tests.py
    numpy.py
  SOURCES
    numpy.cpp
  )

# TODO: patch this test case to follow the naming conventions
boost_python_test_add(pearu1
  EXECUTABLE
    test_cltree.py
  SOURCES
    cltree.cpp
  MODULE
    cltree
  )

boost_python_test_add(try
  EXECUTABLE newtest.py
  MODULE m1
  SOURCES m1.cpp
  ADDITIONAL_MODULE m2 m2.cpp
  )

# TODO: patch this test case to follow the naming conventions
boost_python_test_add(keywords
  MODULE
    keywords
  SOURCES
    keywords.cpp
  EXECUTABLE
    keywords_test.py
  )

# TODO: patch this test case to follow the naming conventions
boost_python_test_add(builtin_converters
  EXECUTABLE
    test_builtin_converters.py
  SOURCES
    test_builtin_converters.cpp
  )

# TODO
# A bug in the Win32 intel compilers causes compilation of one of our
# tests to take forever when debug symbols are enabled. This rule
# turns them off when added to the requirements section

boost_python_test_add( iterator
  SOURCES iterator.cpp
  ADDITIONAL_MODULE input_iterator input_iterator.cpp )

boost_python_test_add( crossmod_opaque
  MODULE crossmod_opaque_a
  SOURCES crossmod_opaque_a.cpp
  ADDITIONAL_MODULE crossmod_opaque_b crossmod_opaque_b.cpp
)

# TODO
# Turn off this test on HP CXX, as the test hangs when executing.
# Whenever the cause for the failure of the polymorphism test is found
# and fixed, this should be retested.

boost_add_test_suite(
  PYTHON
    pointer_vector.cpp
  LINK_LIBRARIES
    python-shared
  )

boost_add_test_suite(
  PYTHON
    map_indexing_suite
  ADDITIONAL_SOURCES
    a_map_indexing_suite.cpp
    int_map_indexing_suite.cpp
  LINK_LIBRARIES
    python-shared
  )

boost_add_test_suite(
  RUN
    import_.cpp
  LINK_LIBRARIES
    python-shared
  ARGS
    ${CMAKE_CURRENT_SOURCE_DIR}/import_.py
  )

# if $(TEST_BIENSTMAN_NON_BUGS)
# {
#     bpl-test bienstman4 ;
#     bpl-test bienstman5 ;
# }

if(WIN32)
  boost_add_test_suite(PYTHON calling_conventions.cpp)
  boost_add_test_suite(PYTHON calling_conventions_mf.cpp)
endif()

boost_add_test_suite(
  COMPILE
    select_arg_to_python_test.cpp
  COMPILE_FAIL
    raw_pyobject_fail1.cpp
    raw_pyobject_fail2.cpp
    as_to_python_function.cpp
    object_fail1.cpp
  LINK
    string_literal
  MODULE
    indirect_traits_test
    borrowed
    object_manager
    copy_ctor_mutates_rhs
    select_holder
  RUN
    destroy_test.cpp
    pointer_type_id_test.cpp
    bases.cpp
    if_else.cpp
    pointee.cpp
    result.cpp
    upcast.cpp
    select_from_python_test.cpp
  PYTHON
    injected
    properties
    return_arg
    staticmethod
    shared_ptr
    enable_shared_from_this
    andreas_beyer
    wrapper_held_type
    polymorphism
    polymorphism2
    auto_ptr
    minimal
    args
    raw_ctor
    enum
    exception_translator
    const_argument
    test_pointer_adoption
    operators
    operators_wrapper
    callbacks
    defaults
    object
    class
    list
    long
    dict
    tuple
    str
    slice
    virtual_functions
    back_reference
    implicit
    data_members
    ben_scott1
    bienstman1
    bienstman2
    bienstman3
    multi_arg_constructor
    stl_iterator
    extract
    opaque
    voidptr
    pickle1
    pickle2
    pickle3
    pickle4
    nested
    docstring
    pytype_function
    vector_indexing_suite
  LINK_LIBRARIES
    python-shared
  NO_SINGLE_TARGET
  )

boost_python_test_add(polymorphism2_auto_ptr
  EXECUTABLE
    polymorphism2_auto_ptr.py
    polymorphism2.py
  SOURCES
    polymorphism2_auto_ptr.cpp
  )
# Nasty hack required to get inter-test dependency to work
add_dependencies( ${BOOST_CURRENT}-test-polymorphism2_auto_ptr polymorphism2 )
