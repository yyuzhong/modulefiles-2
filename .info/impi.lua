--
-- Package defaults

local pkg = {}

pkg.display_name = "impi"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://intel.com"
pkg.license      = "Commerical"
pkg.description  = "Intel MPI"
pkg.help         = [[
This module loads the Intel MPI
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers.
]]

return pkg
