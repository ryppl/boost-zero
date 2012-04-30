# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(Ryppl)
include(RypplDocumentation)

ryppl_find_and_use_package(Boostbook)

set(dbk_file ${CMAKE_CURRENT_BINARY_DIR}/any.dbk)

xsltproc(
  INPUT      ${CMAKE_CURRENT_SOURCE_DIR}/any.xml
  OUTPUT     ${dbk_file}
  CATALOG    ${BOOSTBOOK_CATALOG}
  STYLESHEET ${BOOSTBOOK_XSL_DIR}/docbook.xsl
  )

ryppl_documentation(${dbk_file})
