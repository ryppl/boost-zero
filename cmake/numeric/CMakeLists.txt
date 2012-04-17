# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostNumeric HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/numeric.xml
  SUMMARY "***WRITE ME (one line)***"
  DESCRIPTION
  "numeric/conversion:
Optimized Policy-based Numeric
    Conversions.

numeric/interval:
Extends the usual arithmetic functions to
    mathematical intervals.

numeric/ublas:
uBLAS provides matrix and vector classes as well
    as basic linear algebra routines. Several dense, packed and
    sparse storage schemes are supported."
  HOMEPAGE "http://boost.org/
    libs/numeric/conversion/"
  AUTHOR "Sylvain Pion" "Fernando Cacciola" "Joerg Walter" "Mathias Koch" "Guillaume Melquiond" "Hervé Brönnimann"
  MAINTAINER "Sylvain Pion" "Fernando Cacciola" "Joerg Walter" "Mathias Koch" "Guillaume Melquiond" "Hervé Brönnimann"
  CATEGORY Development
  KEYWORDS "Boost" "Miscellaneous" "Math"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    concept_check
    config
    core
    integer
    io
    logic
    mpl
    preprocessor
    rational
    #serialization
    smart_ptr
    static_assert
    #test
    #timer
    type_traits
    typeof
    utility
  INCLUDE_DIRECTORIES
    include
  )
