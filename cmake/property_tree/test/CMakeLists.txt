# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostPropertyTree)
ryppl_find_and_use_package(BoostSerialization)
ryppl_find_and_use_package(BoostTest)

if(MSVC)
  add_definitions(-D_SCL_SECURE_NO_WARNINGS=1)
endif()

ryppl_test_suite(
  RUN
    test_property_tree.cpp
  LINK_LIBRARIES
    boost_serialization
  )  
  
ryppl_test_suite(
  RUN
    test_info_parser.cpp
    test_json_parser.cpp
    test_ini_parser.cpp
    test_xml_parser_rapidxml.cpp
  NO_SINGLE_TARGET
  )

ryppl_test_suite(
  RUN 
    test_multi_module1.cpp 
  ADDITIONAL_SOURCES  
    test_multi_module2.cpp
  )
