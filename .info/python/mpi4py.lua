--
-- Package defaults

local pkg = {}

pkg.display_name = "mpi4py"
pkg.category     = "development"
pkg.keywords     = "language"
pkg.url          = "https://bitbucket.org/mpi4py/mpi4py/overview"
pkg.license      = "BSD"
pkg.description  = "Python Programming Language"
pkg.help         = [[
This package provides Python bindings for the Message Passing Interface
(MPI) standard. It is implemented on top of the MPI-1/2/3 specification
and exposes an API which grounds on the standard MPI-2 C++ bindings.
]]

return pkg
