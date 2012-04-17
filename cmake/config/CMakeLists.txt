# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostConfig HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/config.xml
  SUMMARY "Helps Boost library developers adapt to compiler idiosyncrasies: not intended for library users."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/config/config.htm"
  AUTHOR ""
  MAINTAINER ""
  CATEGORY Development
  KEYWORDS "Boost" "workarounds"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

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
