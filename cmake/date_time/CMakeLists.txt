# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostDateTime)

include(Ryppl)

ryppl_find_and_use_package(BoostAlgorithm)
ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostConversion)
ryppl_find_and_use_package(BoostCore)
ryppl_find_and_use_package(BoostException)
ryppl_find_and_use_package(BoostInteger)
ryppl_find_and_use_package(BoostIO)
ryppl_find_and_use_package(BoostMPL)
ryppl_find_and_use_package(BoostRange)
ryppl_find_and_use_package(BoostSerialization)
ryppl_find_and_use_package(BoostSmartPtr)
ryppl_find_and_use_package(BoostTokenizer)
ryppl_find_and_use_package(BoostTypeTraits)
ryppl_find_and_use_package(BoostUtility)

add_definitions(
  ${BoostAlgorithm_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostConversion_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostIO_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostRange_DEFINITIONS}
  ${BoostSerialization_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostTokenizer_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  -DDATE_TIME_INLINE
  )

include_directories(
  ${BoostAlgorithm_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostConversion_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostIO_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostRange_INCLUDE_DIRS}
  ${BoostSerialization_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostTokenizer_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  )

add_library(boost_date_time
  src/gregorian/greg_month.cpp
  src/gregorian/greg_weekday.cpp
  src/gregorian/date_generators.cpp
  )

ryppl_export(
  TARGETS
    boost_date_time
  DEPENDS
    BoostAlgorithm 
    BoostConfig 
    BoostConversion 
    BoostCore 
    BoostException 
    BoostInteger 
    BoostIO 
    BoostMPL 
    BoostRange 
    BoostSmartPtr 
    BoostTokenizer 
    BoostTypeTraits 
    BoostUtility 
  INCLUDE_DIRECTORIES
    include
  )

return()

file(GLOB date_time_files boost/date_time/*.hpp)
file(GLOB gregorian_files boost/date_time/gregorian/*.hpp)
file(GLOB posix_time_files boost/date_time/posix_time/*.hpp)
file(GLOB local_time_files boost/date_time/local_time/*.hpp)

list(REMOVE_ITEM gregorian_files boost/date_time/gregorian/event_schedule.hpp)

boost_add_reference(date_time_autodoc ${date_time_files}
  DOXYGEN_PARAMETERS
    "ENABLE_PREPROCESSING = NO"
  XSLTPROC_PARAMETERS
    boost.doxygen.refid=date_time_reference
    boost.doxygen.reftitle="Date Time Reference"
  )

boost_add_reference(gregorian_autodoc ${gregorian_files}
  DOXYGEN_PARAMETERS
    "ENABLE_PREPROCESSING = NO"
  XSLTPROC_PARAMETERS
    boost.doxygen.refid=gregorian_reference
    boost.doxygen.reftitle="Gregorian Reference"
  )

boost_add_reference(posix_time_autodoc ${posix_time_files}
  DOXYGEN_PARAMETERS
    "ENABLE_PREPROCESSING = NO"
  XSLTPROC_PARAMETERS
    boost.doxygen.refid=posix_time_reference
    boost.doxygen.reftitle="Posix Time Reference"
  )

boost_add_reference(local_time_autodoc ${local_time_files}
  DOXYGEN_PARAMETERS
    "ENABLE_PREPROCESSING = NO"
  XSLTPROC_PARAMETERS
    boost.doxygen.refid=local_time_reference
    boost.doxygen.reftitle="Local Time Reference"
  )

file(GLOB date_time_xmldoc xmldoc/*.xml)
list(REMOVE_ITEM gregorian_files boost/date_time/gregorian/event_schedule.hpp)

boost_documentation(xmldoc/date_time.xml
  #<format>pdf:<xsl:param>boost.url.prefix=http://www.boost.org/doc/libs/release/doc/html
  date_time_autodoc.xml
  gregorian_autodoc.xml
  posix_time_autodoc.xml
  local_time_autodoc.xml
  #<xsl:param>boost.root=../../../..
  )

# add_subdirectory(test)
