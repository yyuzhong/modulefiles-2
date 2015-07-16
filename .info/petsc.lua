--
-- Package defaults

local pkg = {}

pkg.display_name = "PETSc"
pkg.category     = "development"
pkg.keywords     = "toolkit"
pkg.url          = "http://www.mcs.anl.gov/petsc/index.html"
pkg.license      = "BSD"
pkg.description  = "Portable, Extensible Toolkit for Scientific Computation"
pkg.help         = [[
PETSc, is a suite of data structures and routines for the scalable
(parallel) solution of scientific applications modeled by partial
differential equations. It supports MPI, and GPUs through CUDA or OpenCL,
as well as hybrid MPI-GPU parallelism

PETSc has been compiled with the following external packages included:
  - metis
  - parmetis
  - hyper
  - superlu
  - superlu_dist
  - mumps
]]

return pkg
