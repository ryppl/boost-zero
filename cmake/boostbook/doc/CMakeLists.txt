# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

include(RypplDocumentation)

set(dbk_file ${CMAKE_CURRENT_BINARY_DIR}/boostbook.dbk)

xsltproc(
  INPUT      ${CMAKE_CURRENT_SOURCE_DIR}/boostbook.xml
  OUTPUT     ${dbk_file}
  CATALOG    ${BOOSTBOOK_CATALOG}
  STYLESHEET ${BOOSTBOOK_XSL_DIR}/docbook.xsl
  )

ryppl_documentation(${dbk_file})
