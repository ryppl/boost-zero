# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

# some parts of this script were copied from FindMPI.cmake

if(NOT BOOST_MPI_BASE)
  set(boost_mpi_name "mpi")
  find_package(MPI)
  if(NOT MPI_FOUND)
    return()
  endif(NOT MPI_FOUND)
else()
  boost_project(${BOOST_MPI_BASE} DEPENDS mpi ${MPI_DEBIAN_DEPENDS})
  set(boost_mpi_name "${BOOST_MPI_BASE}")

  # Find the right compiler executable.
  find_program(${BOOST_MPI_BASE}_COMPILER mpic++.${BOOST_MPI_BASE}
    DOC "${BOOST_MPI_BASE} compiler. Used to detect compilation flags."
    )
  set(mpi_compiler ${${BOOST_MPI_BASE}_COMPILER})
  if(NOT mpi_compiler)
    message(FATAL_ERROR "${BOOST_MPI_BASE} compiler could not be found!")
  endif(NOT mpi_compiler)

  # Get the compile command line.
  execute_process(COMMAND ${mpi_compiler} -show
    OUTPUT_VARIABLE mpi_compile_cmd
    RESULT_VARIABLE mpi_compile_res
    OUTPUT_STRIP_TRAILING_WHITESPACE
    )
  if(NOT mpi_compile_res EQUAL 0)
    message(FATAL_ERROR "Unable to determine compile command from '${mpi_compiler}'.")
  endif(NOT mpi_compile_res EQUAL 0)
  
  # Extract include paths from the command line.
  string(REGEX MATCHALL "(^| )-I([^\" ]+|\"[^\"]+\")" mpi_include_flags "${mpi_compile_cmd}")
  set(MPI_INCLUDE_PATH "")
  foreach(ipath ${mpi_include_flags})
    string(REGEX REPLACE "^ ?-I" "" ipath ${ipath})
    string(REGEX REPLACE "//" "/" ipath ${ipath})
    list(APPEND MPI_INCLUDE_PATH ${ipath})
  endforeach(ipath)

  # Extract linker paths from the command line.
  string(REGEX MATCHALL "(^| |-Wl,)-L([^\" ]+|\"[^\"]+\")" mpi_link_flags "${mpi_compile_cmd}")
  set(mpi_link_path "")
  foreach(lpath ${mpi_link_flags})
    string(REGEX REPLACE "^(| |-Wl,)-L" "" lpath ${lpath})
    string(REGEX REPLACE "//" "/" lpath ${lpath})
    list(APPEND mpi_link_path ${lpath})
  endforeach(lpath)

  # Extract the set of libraries to link against from the command line.
  string(REGEX MATCHALL "(^| )-l([^\" ]+|\"[^\"]+\")" mpi_libnames "${mpi_compile_cmd}")

  # Determine full path names for all of the libraries.
  set(MPI_LIBRARIES "")
  foreach(lib ${mpi_libnames})
    string(REGEX REPLACE "^ ?-l" "" lib ${lib})
    set(mpi_lib "mpi_lib-NOTFOUND" CACHE INTERNAL "" FORCE)
    find_library(mpi_lib ${lib} HINTS ${mpi_link_path})
    if (mpi_lib)
      list(APPEND MPI_LIBRARIES ${mpi_lib})
    else()
      message(WARNING "Unable to find MPI library '${lib}'.")
    endif()
  endforeach(lib)
  set(mpi_lib "mpi_lib-NOTFOUND" CACHE INTERNAL "" FORCE)
endif()

include_directories(${MPI_INCLUDE_PATH})

boost_add_library(${boost_mpi_name}
  SOURCES
    broadcast.cpp
    communicator.cpp
    computation_tree.cpp
    content_oarchive.cpp
    environment.cpp
    exception.cpp
    graph_communicator.cpp
    group.cpp
    intercommunicator.cpp
    mpi_datatype_cache.cpp
    mpi_datatype_oarchive.cpp
    packed_iarchive.cpp
    packed_oarchive.cpp
    packed_skeleton_iarchive.cpp
    packed_skeleton_oarchive.cpp
    point_to_point.cpp
    request.cpp
    text_skeleton_oarchive.cpp
    timer.cpp
  LINK_LIBRARIES
    ${Boost_LIBRARIES}
    ${MPI_LIBRARIES}
  )

add_subdirectory(python)
