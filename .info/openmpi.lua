--
-- Package defaults

local pkg = {}

pkg.display_name = "Open MPI"
pkg.category     = "development"
pkg.keywords     = "mpi"
pkg.url          = "http://www.open-mpi.org/"
pkg.license      = "New BSD license"
pkg.description  = "Open Message Passing Interface"
pkg.help         = [[
This module loads the OpenMPI providing:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers.
]]

return pkg
