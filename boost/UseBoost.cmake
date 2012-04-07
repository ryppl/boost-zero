##########################################################################
# Copyright (C) 2012 Daniel Pfeifer <daniel@pfeifer-mail.de>             #
#                                                                        #
# Distributed under the Boost Software License, Version 1.0.             #
# See accompanying file LICENSE_1_0.txt or copy at                       #
#   http://www.boost.org/LICENSE_1_0.txt                                 #
##########################################################################

add_definitions(${Boost_DEFINITIONS})
include_directories(${Boost_INCLUDE_DIRS})

if(Boost_MODULE_PATH)
  list(APPEND CMAKE_MODULE_PATH ${Boost_MODULE_PATH})
endif(Boost_MODULE_PATH)
