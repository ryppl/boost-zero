# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostIOStreams CXX)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS config NO_MODULE)
include(${Boost_USE_FILE})
include(RypplExport)

add_definitions(-DBOOST_IOSTREAMS_USE_DEPRECATED)

if(MSVC)
  add_definitions(
    /wd4244 # conversion from 'boost::iostreams::stream_offset' to 'size_t'
    /wd4251 # class needs to have dll-interface to be used by clients
    /wd4800 # forcing value to bool 'true' or 'false'
    )
endif(MSVC)

set(sources src/file_descriptor.cpp src/mapped_file.cpp)
set(link_libraries)

find_package(ZLIB)
if(ZLIB_FOUND)
  include_directories(${ZLIB_INCLUDE_DIRS})
  list(APPEND sources src/zlib.cpp src/gzip.cpp)
  list(APPEND link_libraries ${ZLIB_LIBRARIES})
endif(ZLIB_FOUND)

find_package(BZip2)
if(BZIP2_FOUND)
  include_directories(${BZIP2_INCLUDE_DIR})
  list(APPEND sources src/bzip2.cpp)
  list(APPEND link_libraries ${BZIP2_LIBRARIES})
endif(BZIP2_FOUND)

add_library(boost_iostreams
  ${sources}
  )

target_link_libraries(boost_iostreams
  ${link_libraries}
  )

ryppl_export(
  TARGETS
    boost_iostreams
  DEPENDS
    BoostBind 
    BoostConfig 
    BoostCore 
    BoostException 
    BoostFunction 
    BoostInteger 
    BoostMPL 
    BoostPreprocessor 
    BoostRange 
    BoostSmartPtr 
    BoostStaticAssert 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )
