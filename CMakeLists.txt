##########################################################################
# Copyright (C) 2012 Daniel Pfeifer <daniel@pfeifer-mail.de>             #
#                                                                        #
# Distributed under the Boost Software License, Version 1.0.             #
# See accompanying file LICENSE_1_0.txt or copy at                       #
#   http://www.boost.org/LICENSE_1_0.txt                                 #
##########################################################################

cmake_minimum_required(VERSION 2.8.5 FATAL_ERROR)
project(Boost)

# make visual studio look nice
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

add_subdirectory(boost)

