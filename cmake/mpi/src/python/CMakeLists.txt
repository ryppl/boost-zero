# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
ryppl_find_package(PythonLibs REQUIRED)
include_directories(${PYTHON_INCLUDE_DIRS})

boost_add_library(${boost_mpi_name}_python
  SOURCES
    serialize.cpp
  LINK_LIBRARIES
    ${Boost_LIBRARIES}
    ${boost_mpi_name}
  )

set(py_module ${boost_mpi_name}-py)

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
  ${boost_mpi_name}_python-shared
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
