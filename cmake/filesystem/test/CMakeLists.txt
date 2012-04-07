# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

if(MSVC)
  # <asynch-exceptions>on
endif(MSVC)

boost_add_test(v2_path_test RUN ../v2/test/path_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v2_operations_test RUN ../v2/test/operations_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v2_fstream_test RUN ../v2/test/fstream_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v2_convenience_test RUN ../v2/test/convenience_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v2_large_file_support_test RUN ../v2/test/large_file_support_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v3_path_unit_test RUN ../v3/test/path_unit_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v3_path_test RUN ../v3/test/path_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v3_operations_unit_test RUN ../v3/test/operations_unit_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v3_operations_test RUN ../v3/test/operations_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v3_fstream_test RUN ../v3/test/fstream_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v3_convenience_test RUN ../v3/test/convenience_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v3_large_file_support_test RUN ../v3/test/large_file_support_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v3_deprecated_test RUN ../v3/test/deprecated_test.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(v3_simple_ls RUN ../v3/example/simple_ls.cpp LINK_BOOST_LIBRARIES filesystem)

boost_add_test(locale_info RUN ../v3/test/locale_info.cpp LINK_BOOST_LIBRARIES filesystem)
