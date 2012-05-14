# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplTestSuite)

ryppl_find_and_use_package(BoostMSM)
ryppl_find_and_use_package(BoostMPL)
ryppl_find_and_use_package(BoostAny)
ryppl_find_and_use_package(BoostSerialization)
ryppl_find_and_use_package(BoostTest)

#       <toolset>gcc:<cxxflags>"-ftemplate-depth-300 -g0"
#       <toolset>darwin:<cxxflags>"-ftemplate-depth-300 -g0"
#       <toolset>intel:<cxxflags>"-g0"
#       <toolset>gcc:<optimization>off
#       <toolset>darwin:<optimization>off
#       <toolset>intel:<optimization>off

ryppl_test_suite(
  RUN
    Anonymous.cpp
    AnonymousEuml.cpp
    CompositeEuml.cpp
    CompositeMachine.cpp
    Constructor.cpp
    Entries.cpp
    History.cpp
    OrthogonalDeferred.cpp
    OrthogonalDeferred2.cpp
    OrthogonalDeferredEuml.cpp
    SimpleEuml.cpp
    SimpleEuml2.cpp
    SimpleInternal.cpp
    SimpleInternalEuml.cpp
    SimpleInternalFunctors.cpp
    SimpleMachine.cpp
    SimpleWithFunctors.cpp
    Serialize.cpp
    SerializeWithHistory.cpp
    SerializeSimpleEuml.cpp
    TestConstructor.cpp
  LINK_LIBRARIES
    boost_unit_test_framework
    boost_serialization
  NO_SINGLE_TARGET
  )
