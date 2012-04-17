# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8)
include(RypplProject)
ryppl_project(BoostLocale
  FEED_URI http://ryppl.github.com/feeds/boost/locale.xml
  SUMMARY "Provide localization and Unicode handling tools for C++."
  # DESCRIPTION
  # "Write a full (possibly multi-paragraph) description here"
  HOMEPAGE "http://boost.org/libs/locale/"
  AUTHOR "Artyom Beilis"
  MAINTAINER "Artyom Beilis"
  CATEGORY Development
  KEYWORDS "Boost" "String"
  ICON "http://svn.boost.org/svn/boost/website/public_html/live/gfx/boost-dark-trans.png" "image/png"
  CMAKE_LANGUAGES CXX
)

include(RypplFindPackage)
ryppl_find_package(Boost
  COMPONENTS
    cmake
    config
    function
    integer
    iterator
    smart_ptr
    thread
    type_traits
    unordered
    utility
  NO_MODULE
  )
include(${Boost_USE_FILE})
include(BoostAddLibrary)

ryppl_find_package(Iconv)
if(ICONV_FOUND)
  option(BOOST_LOCALE_NO_ICONV "Disable iconv library" OFF)
else()
  set(BOOST_LOCALE_NO_ICONV ON)
endif()

include(RypplFindPackage)
ryppl_find_package(ICU)
if(ICU_FOUND AND ICU_I18N_FOUND)
  option(BOOST_LOCALE_NO_ICU "Disable ICU library/backend" OFF)
else()
  set(BOOST_LOCALE_NO_ICU ON)
endif()

if(APPLE OR "${CMAKE_SYSTEM_NAME}" STREQUAL "Linux")
  option(BOOST_LOCALE_NO_POSIX_BACKEND "Disable POSIX backend" OFF)
else()
  set(BOOST_LOCALE_NO_POSIX_BACKEND ON)
endif()

if(NOT CMAKE_CXX_COMPILER_ID STREQUAL "SunPro")
  option(BOOST_LOCALE_NO_STD_BACKEND "Disable STD backend" OFF)
else()
  set(BOOST_LOCALE_NO_STD_BACKEND ON)
endif()

if(WIN32 OR CYGWIN) 
  option(BOOST_LOCALE_NO_WINAPI_BACKEND	"Disable Win32API backend" OFF)
else()
  set(BOOST_LOCALE_NO_WINAPI_BACKEND ON)
endif()

set(sources 
  src/encoding/codepage.cpp
  src/shared/date_time.cpp
  src/shared/format.cpp
  src/shared/formatting.cpp
  src/shared/generator.cpp
  src/shared/ids.cpp
  src/shared/localization_backend.cpp
  src/shared/message.cpp
  src/shared/mo_lambda.cpp
  src/util/info.cpp
  src/util/locale_data.cpp
  src/util/default_locale.cpp
  src/util/codecvt_converter.cpp
  )

set(tests
  test/test_config.cpp
  test/test_codepage.cpp
  test/test_message.cpp
  test/test_ios_prop.cpp
  test/test_codepage_converter.cpp
  test/test_date_time.cpp
  test/test_generator.cpp
  )

set(link_libraries
  )

if(BOOST_LOCALE_NO_ICONV)
  add_definitions(-DBOOST_LOCALE_NO_ICONV)
else()
  include_directories(${ICONV_INCLUDE_DIR})
  add_definitions(-DBOOST_LOCALE_WITH_ICONV)
  list(APPEND link_libraries
    ${ICONV_LIBRARIES}
    )
endif()

if(BOOST_LOCALE_NO_ICU)
  add_definitions(-DBOOST_LOCALE_NO_ICU)
else()
  include_directories(${ICU_INCLUDE_DIRS})
  add_definitions(-DBOOST_LOCALE_WITH_ICU)
  list(APPEND sources
    src/icu/boundary.cpp
    src/icu/codecvt.cpp
    src/icu/collator.cpp
    src/icu/conversion.cpp
    src/icu/date_time.cpp
    src/icu/formatter.cpp
    src/icu/icu_backend.cpp
    src/icu/numeric.cpp
    src/icu/time_zone.cpp
    )
  list(APPEND tests
    test/test_collate.cpp
    test/test_convert.cpp
    test/test_boundary.cpp
    test/test_formatting.cpp
    test/test_icu_vs_os_timezone.cpp
    )
  list(APPEND link_libraries
    ${ICU_LIBRARIES}
    ${ICU_I18N_LIBRARIES}
    thread-shared
    )
endif()

if(BOOST_LOCALE_NO_POSIX_BACKEND)
  add_definitions(-DBOOST_LOCALE_NO_POSIX_BACKEND)
else()
  add_definitions(-DBOOST_LOCALE_WITH_POSIX_BACKEND)
  list(APPEND sources
    src/posix/collate.cpp
    src/posix/converter.cpp
    src/posix/numeric.cpp
    src/posix/codecvt.cpp
    src/posix/posix_backend.cpp
    )
  list(APPEND tests
    test/test_posix_collate.cpp
    test/test_posix_convert.cpp
    test/test_posix_formatting.cpp
    )
endif()

if(BOOST_LOCALE_NO_STD_BACKEND)
  add_definitions(-DBOOST_LOCALE_NO_STD_BACKEND)
else()
  add_definitions(-DBOOST_LOCALE_WITH_STD_BACKEND)
  list(APPEND sources
    src/std/codecvt.cpp
    src/std/collate.cpp
    src/std/converter.cpp
    src/std/numeric.cpp
    src/std/std_backend.cpp
    )
  list(APPEND tests
    test/test_std_convert.cpp
    test/test_std_formatting.cpp
    test/test_std_collate.cpp
    )
endif()

if(BOOST_LOCALE_NO_WINAPI_BACKEND)
  add_definitions(-DBOOST_LOCALE_NO_WINAPI_BACKEND)
else()
  add_definitions(-DBOOST_LOCALE_WITH_WINAPI_BACKEND)
  list(APPEND sources
    src/win32/collate.cpp
    src/win32/converter.cpp
    src/win32/numeric.cpp
    src/win32/win_backend.cpp
    )
  list(APPEND tests
    test/test_winapi_formatting.cpp
    test/test_winapi_collate.cpp
    test/test_winapi_convert.cpp
    )
endif()

if(NOT BOOST_LOCALE_NO_POSIX_BACKEND OR
   NOT BOOST_LOCALE_NO_STD_BACKEND OR
   NOT BOOST_LOCALE_NO_WINAPI_BACKEND)
  list(APPEND sources
    src/util/gregorian.cpp
    )
endif()

if(WIN32 OR CYGWIN)
  if(NOT BOOST_LOCALE_NO_STD_BACKEND OR NOT BOOST_LOCALE_NO_WINAPI_BACKEND)
    list(APPEND sources
      src/win32/lcid.cpp
      )
  endif()
endif()

include_directories(include)

boost_add_library(locale
  SOURCES
    ${sources}
  LINK_LIBRARIES
    ${link_libraries}
  )

add_subdirectory(test)
