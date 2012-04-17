# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostCompatibility HEADER_ONLY
  FEED_URI http://ryppl.github.com/feeds/boost/compatibility.xml
  SUMMARY "Help for non-conforming standard libraries."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/compatibility/"
  AUTHOR "Jens Maurer" "Ralf Grosse-Kunstleve"
  MAINTAINER "Jens Maurer" "Ralf Grosse-Kunstleve"
  CATEGORY Development
  LICENSE "OSI Approved :: Boost Software License 1.0 (BSL-1.0)"
  VERSION 1.50-pre
  KEYWORDS "Boost" "workarounds"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
)

include(RypplFindPackage)
ryppl_find_package(Boost COMPONENTS cmake NO_MODULE)
include(${Boost_USE_FILE})
#include(BoostDocumentation)
include(BoostExport)

#boost_documentation(index.html)

boost_export(
  INCLUDE_DIRECTORIES
    include
  )
