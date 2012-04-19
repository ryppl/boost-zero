# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
project(BoostConfig)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
include(BoostExport)

boost_export(
  BOOST_DEPENDS
    core
  INCLUDE_DIRECTORIES
    include
  )

#boost_documentation(doc/config.qbk
#  doc/configuring_boost.qbk
#  doc/macro_reference.qbk
#  doc/guidelines.qbk
#  doc/rationale.qbk
#  doc/acknowledgements.qbk
#  )
