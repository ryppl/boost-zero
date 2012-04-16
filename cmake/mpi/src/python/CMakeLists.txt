# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

find_package(PythonLibs REQUIRED)
include_directories(${PYTHON_INCLUDE_DIRS})

add_library(boost_mpi_python
  serialize.cpp
  )

target_link_libraries(boost_mpi_python
  ${Boost_LIBRARIES}
  boost_mpi
  )

set(py_module boost_mpi-py)

add_library(${py_module} SHARED
  collectives.cpp
  py_communicator.cpp
  datatypes.cpp
  documentation.cpp
  py_environment.cpp
  py_nonblocking.cpp
  py_exception.cpp
  module.cpp
  py_request.cpp
  skeleton_and_content.cpp
  status.cpp
  py_timer.cpp
  )

target_link_libraries(${py_module}
  boost_mpi_python
  )

set_target_properties(${py_module} PROPERTIES
  OUTPUT_NAME mpi
  PREFIX ""
  )

if(WIN32)
  set_target_properties(${py_module} PROPERTIES
    IMPORT_SUFFIX .pyd
    SUFFIX .pyd
    )
endif(WIN32)
