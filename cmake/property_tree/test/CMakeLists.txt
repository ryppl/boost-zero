# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS config any test NO_MODULE)
include(${Boost_USE_FILE})
include(RypplTestSuite)

add_definitions(-D_SCL_SECURE_NO_WARNINGS=1)

ryppl_test_suite(
  RUN
    test_property_tree.cpp
  LINK_LIBRARIES
    serialization-shared
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
