# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostThread CXX)

include(RypplFindPackage)
include(RypplExport)

ryppl_find_package(BoostBind)
ryppl_find_package(BoostChrono)
ryppl_find_package(BoostConfig)
ryppl_find_package(BoostCore)
ryppl_find_package(BoostDateTime)
ryppl_find_package(BoostException)
ryppl_find_package(BoostFunction)
ryppl_find_package(BoostFunctional)
ryppl_find_package(BoostInteger)
ryppl_find_package(BoostIO)
ryppl_find_package(BoostMove)
ryppl_find_package(BoostMPL)
ryppl_find_package(BoostOptional)
ryppl_find_package(BoostSmartPtr)
ryppl_find_package(BoostStaticAssert)
ryppl_find_package(BoostSystem)
ryppl_find_package(BoostTypeTraits)
ryppl_find_package(BoostUtility)
ryppl_find_package(Threads)

add_definitions(
  ${BoostBind_DEFINITIONS}
  ${BoostChrono_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostDateTime_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFunction_DEFINITIONS}
  ${BoostFunctional_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostIO_DEFINITIONS}
  ${BoostMove_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostOptional_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostSystem_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  include
  ${BoostBind_INCLUDE_DIRS}
  ${BoostChrono_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostDateTime_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFunction_INCLUDE_DIRS}
  ${BoostFunctional_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostIO_INCLUDE_DIRS}
  ${BoostMove_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostOptional_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostSystem_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

if(CMAKE_USE_WIN32_THREADS_INIT)
  set(sources
    src/win32/thread.cpp
    src/win32/tss_dll.cpp
    src/win32/tss_pe.cpp
    )
else()
  set(sources
    src/pthread/thread.cpp
    src/pthread/once.cpp
    )
endif()

add_library(boost_thread
  ${sources}
  )

target_link_libraries(boost_thread
  boost_chrono
  boost_date_time
  ${CMAKE_THREAD_LIBS_INIT}
  )

if(BUILD_SHARED_LIBS)
  set_property(TARGET boost_thread APPEND PROPERTY
    COMPILE_DEFINITIONS "BOOST_THREAD_BUILD_DLL=1"
    )
else()
  set_property(TARGET boost_thread APPEND PROPERTY
    COMPILE_DEFINITIONS "BOOST_THREAD_BUILD_LIB=1"
    )
  set_target_properties(boost_thread PROPERTIES
    PREFIX "lib"
    )
endif()

ryppl_export(
  TARGETS
    boost_thread
  DEPENDS
    BoostChrono 
    BoostDateTime 
  INCLUDE_DIRECTORIES
    include
  )
