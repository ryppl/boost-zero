# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostUtility HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/utility.xml
  SUMMARY "Class noncopyable plus checked_delete(), checked_array_delete(), next(), prior() function templates, plus base-from-member idiom."
  DESCRIPTION
  "utility:
Class noncopyable plus checked_delete(),
    checked_array_delete(), next(), prior() function templates,
    plus base-from-member idiom.

utility/call_traits:
Defines types for passing
    parameters.

utility/compressed_pair:
Empty member optimization.

utility/enable_if:
Selective inclusion of function template
    overloads.

utility/in_place_factories:
Generic in-place construction of contained objects
    with a variadic argument-list.

utility/operators:
Templates ease arithmetic classes and
    iterators.

utility/result_of:
Determines the type of a function call expression.
    

utility/swap:
Enhanced generic swap function.

utility/value_initialized:
Wrapper for uniform-syntax value initialization,
    based on the original idea of David Abrahams."
  HOMEPAGE "http://boost.org/libs/utility/utility.htm"
  AUTHOR "Dave Abrahams" "et al" "" "Jeremy Siek" "Joseph Gauterin" "John Maddock" "others" "Howard Hinnant" "Jaakko Järvi" "Andrew Lumsdaine" "Jeremiah Willcock" "Fernando Cacciola"
  MAINTAINER "Dave Abrahams" "et al" "" "Jeremy Siek" "Joseph Gauterin" "John Maddock" "others" "Howard Hinnant" "Jaakko Järvi" "Andrew Lumsdaine" "Jeremiah Willcock" "Fernando Cacciola"
  CATEGORY Development
  KEYWORDS "Boost" "Generic" "Miscellaneous" "Function-objects" "Iterators" "Patterns" "Algorithms" "Memory" "Data" "Math"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    config
    conversion
    core
    integer
    iterator
    mpl
    preprocessor
    #random
    smart_ptr
    static_assert
    #test
    tuple
    type_traits
  INCLUDE_DIRECTORIES
    include
  )
