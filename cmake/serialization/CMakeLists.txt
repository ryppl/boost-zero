# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostSerialization CXX)

include(RypplFindPackage)
include(RypplExport)

ryppl_find_package(BoostArray)
ryppl_find_package(BoostConfig)
ryppl_find_package(BoostCore)
ryppl_find_package(BoostException)
ryppl_find_package(BoostFunction)
ryppl_find_package(BoostFunctional)
ryppl_find_package(BoostInteger)
ryppl_find_package(BoostIO)
ryppl_find_package(BoostIterator)
ryppl_find_package(BoostMPL)
ryppl_find_package(BoostOptional)
ryppl_find_package(BoostPreprocessor)
ryppl_find_package(BoostSmartPtr)
ryppl_find_package(BoostSpirit)
ryppl_find_package(BoostStaticAssert)
ryppl_find_package(BoostTimer)
ryppl_find_package(BoostTypeTraits)
ryppl_find_package(BoostUtility)
ryppl_find_package(BoostUUID)
ryppl_find_package(BoostVariant)

add_definitions(
  ${BoostArray_DEFINITIONS}
  ${BoostConfig_DEFINITIONS}
  ${BoostCore_DEFINITIONS}
  ${BoostException_DEFINITIONS}
  ${BoostFunction_DEFINITIONS}
  ${BoostFunctional_DEFINITIONS}
  ${BoostInteger_DEFINITIONS}
  ${BoostIO_DEFINITIONS}
  ${BoostIterator_DEFINITIONS}
  ${BoostMPL_DEFINITIONS}
  ${BoostOptional_DEFINITIONS}
  ${BoostPreprocessor_DEFINITIONS}
  ${BoostSmartPtr_DEFINITIONS}
  ${BoostSpirit_DEFINITIONS}
  ${BoostStaticAssert_DEFINITIONS}
  ${BoostTimer_DEFINITIONS}
  ${BoostTypeTraits_DEFINITIONS}
  ${BoostUtility_DEFINITIONS}
  ${BoostUUID_DEFINITIONS}
  ${BoostVariant_DEFINITIONS}
  )

include_directories(
  ${BoostArray_INCLUDE_DIRS}
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostCore_INCLUDE_DIRS}
  ${BoostException_INCLUDE_DIRS}
  ${BoostFunction_INCLUDE_DIRS}
  ${BoostFunctional_INCLUDE_DIRS}
  ${BoostInteger_INCLUDE_DIRS}
  ${BoostIO_INCLUDE_DIRS}
  ${BoostIterator_INCLUDE_DIRS}
  ${BoostMPL_INCLUDE_DIRS}
  ${BoostOptional_INCLUDE_DIRS}
  ${BoostPreprocessor_INCLUDE_DIRS}
  ${BoostSmartPtr_INCLUDE_DIRS}
  ${BoostSpirit_INCLUDE_DIRS}
  ${BoostStaticAssert_INCLUDE_DIRS}
  ${BoostTimer_INCLUDE_DIRS}
  ${BoostTypeTraits_INCLUDE_DIRS}
  ${BoostUtility_INCLUDE_DIRS}
  ${BoostUUID_INCLUDE_DIRS}
  ${BoostVariant_INCLUDE_DIRS}
  )

if(MSVC)
  add_definitions(
    /Gy
    /wd4244 # converting 'std::streamsize' in 'size_t'
    /D_CRT_SECURE_NO_WARNINGS
    /D_SCL_SECURE_NO_WARNINGS
    )
endif(MSVC)

# if(GCC)
#   add_definitions(-fvisibility=hidden)
# endif(GCC)

add_library(boost_serialization
  src/basic_archive
  src/basic_iarchive
  src/basic_iserializer
  src/basic_oarchive
  src/basic_oserializer
  src/basic_pointer_iserializer
  src/basic_pointer_oserializer
  src/basic_serializer_map
  src/basic_text_iprimitive
  src/basic_text_oprimitive
  src/basic_xml_archive
  src/binary_iarchive
  src/binary_oarchive
  src/extended_type_info
  src/extended_type_info_typeid
  src/extended_type_info_no_rtti
  src/polymorphic_iarchive
  src/polymorphic_oarchive
  src/stl_port
  src/text_iarchive
  src/text_oarchive
  src/void_cast
  src/archive_exception
  src/xml_grammar
  src/xml_iarchive
  src/xml_oarchive
  src/xml_archive_exception
  src/shared_ptr_helper
  )

add_library(boost_wserialization
  src/basic_text_wiprimitive
  src/basic_text_woprimitive
  src/text_wiarchive
  src/text_woarchive
  src/utf8_codecvt_facet
  src/xml_wgrammar
  src/xml_wiarchive
  src/xml_woarchive
  src/codecvt_null
  )

target_link_libraries(boost_wserialization
  boost_serialization
  )

ryppl_export(
  TARGETS
    boost_serialization
    boost_wserialization
  DEPENDS
    BoostArray 
    BoostConfig 
    BoostCore 
    BoostException 
    BoostFunction 
    BoostFunctional 
    BoostInteger 
    BoostIO 
    BoostIterator 
    BoostMPL 
    BoostOptional 
    BoostPreprocessor 
    BoostSmartPtr 
    BoostSpirit 
    BoostStaticAssert 
    BoostTimer 
    BoostTypeTraits 
    BoostUtility 
    BoostUUID 
    BoostVariant 
  INCLUDE_DIRECTORIES
    include
  )
