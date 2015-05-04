--
-- Package defaults

local pkg = {}

pkg.display_name = "PGI Compilers"
pkg.category     = "development"
pkg.keywords     = "compiler"
pkg.url          = "http://www.pgroup.com/"
pkg.license      = "Commerical"
pkg.description  = "Portland Group Compilers"
pkg.help         = [[
This module loads the PGI Compilers:
  C:        pgcc
  C++:      pgCC
  Fortran:  pgfortran
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers.
]]

return pkg
