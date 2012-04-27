# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostMPI CXX)

include(RypplFindPackage)
include(RypplExport)

ryppl_find_package(BoostConfig)
ryppl_find_package(BoostConversion)
ryppl_find_package(BoostCore)
ryppl_find_package(BoostException)
ryppl_find_package(BoostFunction)
ryppl_find_package(BoostGraph)
ryppl_find_package(BoostInteger)
ryppl_find_package(BoostIterator)
ryppl_find_package(BoostMPL)
ryppl_find_package(BoostOptional)
ryppl_find_package(BoostPropertyMap)
ryppl_find_package(BoostPython)
ryppl_find_package(BoostSerialization)
ryppl_find_package(BoostSmartPtr)
ryppl_find_package(BoostStaticAssert)
ryppl_find_package(BoostTypeTraits)
ryppl_find_package(BoostUtility)
ryppl_find_package(MPI)
ryppl_find_package(PythonLibs)

add_definitions(
  ${BoostConfig_DEFINITIONS}
  ${BoostConversion_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFunction_DEFINITIONS}
  ${BoostGraph_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostIterator_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostOptional_DEFINITIONS}
  ${BoostPropertyMap_DEFINITIONS}
  ${BoostPython_DEFINITIONS}
  ${BoostSerialization_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  )

include_directories(
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFunction_INCLUDE_DIRS}
  ${BoostGraph_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostIterator_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostOptional_INCLUDE_DIRS}
  ${BoostPropertyMap_INCLUDE_DIRS}
  ${BoostPython_INCLUDE_DIRS}
  ${BoostSerialization_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  ${MPI_INCLUDE_PATH}
  ${PYTHON_INCLUDE_DIRS}
  include
  )

if(MSVC)
  add_definitions(
    /D_SCL_SECURE_NO_WARNINGS
    /wd4251 # class needs to have dll-interface to be used by clients
    /wd4275 # non dll-interface class used as base for dll-interface class
    /wd4996 # 'strdup': The POSIX name for this item is deprecated.
    )
endif(MSVC)

add_library(boost_mpi
  src/broadcast.cpp
  src/communicator.cpp
  src/computation_tree.cpp
  src/content_oarchive.cpp
  src/environment.cpp
  src/exception.cpp
  src/graph_communicator.cpp
  src/group.cpp
  src/intercommunicator.cpp
  src/mpi_datatype_cache.cpp
  src/mpi_datatype_oarchive.cpp
  src/packed_iarchive.cpp
  src/packed_oarchive.cpp
  src/packed_skeleton_iarchive.cpp
  src/packed_skeleton_oarchive.cpp
  src/point_to_point.cpp
  src/request.cpp
  src/text_skeleton_oarchive.cpp
  src/timer.cpp
  )

set_property(TARGET boost_mpi APPEND PROPERTY
  COMPILE_DEFINITIONS BOOST_MPI_SOURCE
  )

target_link_libraries(boost_mpi
  boost_serialization
  ${MPI_LIBRARIES}
  )

add_library(boost_mpi_python
  src/python/serialize.cpp
  )

set_property(TARGET boost_mpi_python APPEND PROPERTY
  COMPILE_DEFINITIONS BOOST_MPI_PYTHON_SOURCE
  )

target_link_libraries(boost_mpi_python
  boost_mpi
  boost_python
  )

add_library(boost_mpi-py SHARED
  src/python/collectives.cpp
  src/python/py_communicator.cpp
  src/python/datatypes.cpp
  src/python/documentation.cpp
  src/python/py_environment.cpp
  src/python/py_nonblocking.cpp
  src/python/py_exception.cpp
  src/python/module.cpp
  src/python/py_request.cpp
  src/python/skeleton_and_content.cpp
  src/python/status.cpp
  src/python/py_timer.cpp
  )

target_link_libraries(boost_mpi-py
  boost_mpi_python
  )

set_target_properties(boost_mpi-py PROPERTIES
  OUTPUT_NAME mpi
  PREFIX ""
  )

if(WIN32)
  set_target_properties(boost_mpi-py PROPERTIES
    IMPORT_SUFFIX .pyd
    SUFFIX .pyd
    )
endif(WIN32)

ryppl_export(
  TARGETS
    boost_mpi
    boost_mpi_python
  DEPENDS
    BoostSerialization
  INCLUDE_DIRECTORIES
    include
  )
