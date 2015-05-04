--
-- Package defaults

local pkg = {}

pkg.display_name = "GNU Compiler Collection"
pkg.category     = "development"
pkg.keywords     = "compiler"
pkg.url          = "http://gcc.gnu.org/"
pkg.license      = "GPL"
pkg.description  = "GNU compiler collection"
pkg.help         = [[
This module loads the GNU Compiler collection, providing:
  C:        gcc
  C++:      g++
  Fortran:  gfortran
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers.
]]

return pkg
