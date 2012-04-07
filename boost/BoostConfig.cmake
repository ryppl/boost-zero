##########################################################################
# Copyright (C) 2012 Daniel Pfeifer <daniel@pfeifer-mail.de>             #
#                                                                        #
# Distributed under the Boost Software License, Version 1.0.             #
# See accompanying file LICENSE_1_0.txt or copy at                       #
# http://www.boost.org/LICENSE_1_0.txt                                   #
##########################################################################

include("${CMAKE_CURRENT_LIST_DIR}/BoostCatalog.cmake")

set(Boost_DEFINITIONS)
set(Boost_INCLUDE_DIRS)
set(Boost_LIBRARIES)
set(Boost_USE_FILE "${CMAKE_CURRENT_LIST_DIR}/UseBoost.cmake")

if(BOOST_INITIAL_PASS)
  return()
endif(BOOST_INITIAL_PASS)

foreach(component ${Boost_FIND_COMPONENTS})
  list(FIND Boost_CATALOG ${component} index)
  if(index EQUAL "-1")
    message(WARNING "unknown Boost component: ${component}")
  else()
    math(EXPR package_index "${index} + 1")
    math(EXPR version_index "${index} + 2")
    list(GET Boost_CATALOG ${package_index} package)
    list(GET Boost_CATALOG ${version_index} version)
    find_package(${package} ${version} REQUIRED)
    if(${package}_DEFINITIONS)
      list(APPEND Boost_DEFINITIONS ${${package}_DEFINITIONS})
      list(REMOVE_DUPLICATES Boost_DEFINITIONS)
    endif()
    if(${package}_INCLUDE_DIRS)
      list(APPEND Boost_INCLUDE_DIRS ${${package}_INCLUDE_DIRS})
      list(REMOVE_DUPLICATES Boost_INCLUDE_DIRS)
    endif()
    if(${package}_LIBRARIES)
      list(APPEND Boost_LIBRARIES ${${package}_LIBRARIES})
      list(REMOVE_DUPLICATES Boost_LIBRARIES)
    endif()
  endif()
endforeach(component)

