# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

boost_doxygen(reference XML TAG
  DOXYFILE
    reference.dox
  INPUT
    ../boost/asio.hpp
    ../boost/asio
    ../boost/asio/impl
    ../boost/asio/ip
    ../boost/asio/local
    ../boost/asio/posix
    ../boost/asio/ssl
    ../boost/asio/windows
    noncopyable_dox.txt
    std_exception_dox.txt
  )

xsltproc(
  ${CMAKE_CURRENT_BINARY_DIR}/reference.qbk
  ${CMAKE_CURRENT_SOURCE_DIR}/reference.xsl
  ${reference_xml}
  )

boost_doxygen(tutorial XML
  DOXYFILE
    tutorial.dox
  INPUT
    ../example/tutorial/index_dox.txt
    ../example/tutorial/timer_dox.txt
    ../example/tutorial/daytime_dox.txt
  TAGFILES
    ${reference_tag}
  )

xsltproc(
  ${CMAKE_CURRENT_BINARY_DIR}/tutorial.qbk
  ${CMAKE_CURRENT_SOURCE_DIR}/tutorial.xsl
  ${tutorial_xml}
  )

boost_documentation(asio.qbk
  # DEPENDS
  index.xml
  quickref.xml
# tutorial.qbk
# reference.qbk
  )
