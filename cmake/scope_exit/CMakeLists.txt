# Distributed under the Boost Software License, Version 1.0.
# See http://www.boost.org/LICENSE_1_0.txt

cmake_minimum_required(VERSION 2.8.8)
project(BoostScopeExit NONE)

include(RypplExport)

ryppl_export(
  DEPENDS
    BoostConfig 
    BoostPreprocessor 
    BoostTypeof 
  INCLUDE_DIRECTORIES
    include
  )
