# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

if(NOT Boost_BUILD_DOCS)
  return()
endif()

# Accumulators docs are dependent upon
# latex dvips and ps being in your PATH.
# This is true for most Unix installs, but
# not on Win32, where you will need to install
# MkTex and Ghostscript and add these tools
# to your path.

#find gs gswin32c

# Use Doxygen to emit a tagfile with the definition of depends_on<>. That
# tagfile will be used by Doxygen below when generating the Statistics Library
# Reference. This is all so that the Doxygen-generated documentation for the
# features shows the dependency relationships between them.

boost_doxygen(accumulators TAG
  INPUT
    ../include/boost/accumulators/framework/depends_on.hpp
    ../include/boost/accumulators/framework/extractor.hpp
  PARAMETERS
    "MACRO_EXPANSION = YES"
    "EXPAND_ONLY_PREDEF = YES"
    "PREDEFINED = \"BOOST_ACCUMULATORS_DOXYGEN_INVOKED=1\" \\
      \"BOOST_PP_REPEAT_FROM_TO(a,b,c,d)=\" \\
      \"BOOST_PP_ENUM_PARAMS(a,b)=b ## 1, b ## 2, ...\""
  )

file(GLOB accdoc_headers
  "../include/boost/accumulators/accumulators*.hpp"
  "../include/boost/accumulators/framework/*.hpp"
  "../include/boost/accumulators/framework/parameters/*.hpp"
  "../include/boost/accumulators/framework/accumulators/*.hpp"
  )

boost_add_reference(accdoc ${accdoc_headers}
  DOXYFILE
    acc.doxyfile
  XSLTPROC_PARAMETERS
    boost.doxygen.reftitle="Accumulators Framework Reference"
  )

file(GLOB statsdoc_headers
  "../include/boost/accumulators/statistics*.hpp"
  "../include/boost/accumulators/statistics/*.hpp"
  "../include/boost/accumulators/statistics/variates/*.hpp"
  )

# Generate the HTML form of the stats documentation, as this
# causes Doxygen to generate .png images for the LaTeX formulas
# embedded in the doc comments.

set(statsdoc_html_dir ${CMAKE_CURRENT_BINARY_DIR}/statsdoc-html)
set(images_dir ${CMAKE_CURRENT_BINARY_DIR}/html/images)

set(copy_forms_cmake ${CMAKE_CURRENT_BINARY_DIR}/copy_forms.cmake)
file(WRITE ${copy_forms_cmake}
  "file(GLOB images \${SRCDIR}/form_*.png)\n"
  "file(COPY \${images} DESTINATION \${DSTDIR})\n"
  )

boost_add_reference(statsdoc ${statsdoc_headers}
  DOXYFILE
    acc.doxyfile
  TAGFILES
    "${accumulators_tag}"
  DOXYGEN_PARAMETERS
    "GENERATE_HTML = YES"
    "HTML_OUTPUT=${statsdoc_html_dir}"
  XSLTPROC_PARAMETERS
    boost.doxygen.reftitle="Statistics Library Reference"
  )

add_custom_command(OUTPUT formulas.copied
  COMMAND ${CMAKE_COMMAND}
          -DSRCDIR="${statsdoc_html_dir}"
          -DDSTDIR="${images_dir}"
          -P ${copy_forms_cmake}
  COMMAND ${CMAKE_COMMAND} -E touch formulas.copied
  DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/statsdoc-xml/index.xml
  )

file(GLOB opdoc_headers
  "../include/boost/accumulators/numeric/functional.hpp"
  "../include/boost/accumulators/numeric/functional/*.hpp"
  )

boost_add_reference(opdoc ${opdoc_headers}
  DOXYFILE
    op.doxyfile
  XSLTPROC_PARAMETERS
    boost.doxygen.reftitle="Numeric Operators Library Reference"
  )

boost_documentation(accumulators.qbk
  accdoc.xml
  statsdoc.xml
  opdoc.xml
  formulas.copied
  )
