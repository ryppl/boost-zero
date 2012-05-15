# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostConfig)
ryppl_find_and_use_package(BoostSerialization)
ryppl_find_and_use_package(BoostTest)

ryppl_test_suite(
  RUN
    test_basic.cpp            
  ADDITIONAL_SOURCES
    test_basic_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_capacity.cpp            
  ADDITIONAL_SOURCES
    test_capacity_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_comparison.cpp            
  ADDITIONAL_SOURCES
    test_comparison_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_composite_key.cpp            
  ADDITIONAL_SOURCES
    test_composite_key_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_conv_iterators.cpp            
  ADDITIONAL_SOURCES
    test_conv_iterators_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_copy_assignment.cpp            
  ADDITIONAL_SOURCES
    test_copy_assignment_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_hash_ops.cpp            
  ADDITIONAL_SOURCES
    test_hash_ops_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_iterators.cpp            
  ADDITIONAL_SOURCES
    test_iterators_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_key_extractors.cpp            
  ADDITIONAL_SOURCES
    test_key_extractors_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_list_ops.cpp            
  ADDITIONAL_SOURCES
    test_list_ops_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_modifiers.cpp            
  ADDITIONAL_SOURCES
    test_modifiers_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_mpl_ops.cpp            
  ADDITIONAL_SOURCES
    test_mpl_ops_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_observers.cpp            
  ADDITIONAL_SOURCES
    test_observers_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_projection.cpp            
  ADDITIONAL_SOURCES
    test_projection_main.cpp 
  )
  
ryppl_test_suite(
  RUN
    test_range.cpp            
  ADDITIONAL_SOURCES
    test_range_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_rearrange.cpp            
  ADDITIONAL_SOURCES
    test_rearrange_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_safe_mode.cpp            
  ADDITIONAL_SOURCES
    test_safe_mode_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_serialization.cpp            
  ADDITIONAL_SOURCES
    test_serialization1.cpp
    test_serialization2.cpp   
    test_serialization3.cpp
    test_serialization_main.cpp
  LINK_LIBRARIES
    boost_serialization
  )
  
ryppl_test_suite(
  RUN
    test_set_ops.cpp            
  ADDITIONAL_SOURCES
    test_set_ops_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_special_set_ops.cpp            
  ADDITIONAL_SOURCES
    test_special_set_ops_main.cpp
  )
  
ryppl_test_suite(
  RUN
    test_update.cpp            
  ADDITIONAL_SOURCES
    test_update_main.cpp
  NO_SINGLE_TARGET  
  )
  
  
# Windows Vista UAC has an heuristic by which executable files whose name
# contains any of the words "install", "setup", "update", etc. are assumed
# to be installation packages needing administrative rights, which causes
# the system to bring up a window asking for execution confirmation by the
# user, thus interferring in the unattended bjam process.
# Problem bypassed by changing the EXE names containing a taboo word.
# Thanks to Rene Rivera for guidance on the use of the <tag> feature.

# rule change-test_update-exe-name ( name : type ? : property-set ) 
#{ 
#    if [ os.on-windows ] && [ type.is-subtype $(type) EXE ]
#    {
#        return test_updat.exe ;
#    }
#} 

#test_update.cpp :
#ryppl_test_suite(
#  RUN
    
#        : : : 
#        -<tag>@$(BOOST_JAMROOT_MODULE)%$(BOOST_JAMROOT_MODULE).tag
#        <tag>@change-test_update-exe-name                          ] 
#   ;

