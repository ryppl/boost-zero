# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostSignals CXX)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    any
    config
    core
    function
    iterator
    mpl
    optional
    smart_ptr
    type_traits
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})

include_directories(include)

if(MSVC)
  add_definitions(
    /wd4251 # class needs to have dll-interface to be used by clients
    /wd4275 # 'boost::noncopyable' used as base for dll-interface class 
    )
endif(MSVC)

add_library(boost_signals
  src/trackable.cpp
  src/connection.cpp
  src/named_slot_map.cpp
  src/signal_base.cpp
  src/slot.cpp
  )
