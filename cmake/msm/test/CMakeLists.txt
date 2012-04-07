# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

#       <toolset>gcc:<cxxflags>"-ftemplate-depth-300 -g0"
#       <toolset>darwin:<cxxflags>"-ftemplate-depth-300 -g0"
#       <toolset>intel:<cxxflags>"-g0"
#       <toolset>gcc:<optimization>off
#       <toolset>darwin:<optimization>off
#       <toolset>intel:<optimization>off

boost_add_multiple_tests(
  RUN
    Anonymous
    AnonymousEuml
    CompositeEuml
    CompositeMachine
    Constructor
    Entries
    History
    OrthogonalDeferred
    OrthogonalDeferred2
    OrthogonalDeferredEuml
    SimpleEuml
    SimpleEuml2
    SimpleInternal
    SimpleInternalEuml
    SimpleInternalFunctors
    SimpleMachine
    SimpleWithFunctors
    Serialize
    SerializeWithHistory
    SerializeSimpleEuml
    TestConstructor
  LINK_BOOST_LIBRARIES
    unit_test_framework
    serialization
  )

