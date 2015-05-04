--
-- Package defaults

local pkg = {}

pkg.display_name = "Intel Compilers"
pkg.category     = "development"
pkg.keywords     = "compiler"
pkg.url          = "http://intel.com"
pkg.license      = "Commerical"
pkg.description  = "Intel Fortran, C and C++ compilers"
pkg.help         = [[
This module loads the Intel compilers:
  C:        icc
  C++:      icpc
  Fortran:  ifort
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers.
]]

return pkg
