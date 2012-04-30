# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostAny)
ryppl_find_and_use_package(BoostTest)

add_definitions(
  ${BoostConfig_DEFINITIONS}
  ${BoostAny_DEFINITIONS}
  ${BoostTest_DEFINITIONS}
  -D_SCL_SECURE_NO_WARNINGS=1
  )

include_directories(
  ${BoostConfig_INCLUDE_DIRS}
  ${BoostAny_INCLUDE_DIRS}
  ${BoostTest_INCLUDE_DIRS}
  )

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
