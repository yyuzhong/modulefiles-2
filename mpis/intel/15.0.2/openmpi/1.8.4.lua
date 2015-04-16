-- This module loads the Intel MPI Library.
--

-- Local family and vendor
local fam = "MPI"

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Only one compiler at a time.
family(fam)

-- Whatis and help information
whatis("Description: OpenMPI: This module loads the OpenMPI Library")
help([[
This module loads the OpenMPI version ]] ..version..[[:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- We need Slurm
prereq("slurm")

-- Set the base directory and current release
local basedir = "/curc/tools/x86_64/rh6/software"

-- Figure out our installation root directory
local hierA   = hierarchyA(fname,1)
local comp    = hierA[1]
local root    = pathJoin(basedir, fname, comp)

-- Set the paths needed
local binpath = pathJoin(root, "bin")
local libpath = pathJoin(root, "lib")
local manpath = pathJoin(root, "man")
local incpath = pathJoin(root, "include")
local pkgpath = pathJoin(root, "lib/pkgconfig")

-- Export path and man paths
prepend_path("PATH",    binpath)
prepend_path("MANPATH", manpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)

-- Export the link-time library search path
prepend_path("LIBRARY_PATH", libpath)

-- Export the include paths
prepend_path("CPATH", incpath)
prepend_path("FPATH", incpath)

-- Export the Package config path
prepend_path("PKG_CONFIG_PATH", pkgpath)

-- Set env vars for the compilers
local cc  = os.getenv("CC")  or "cc"
local fc  = os.getenv("FC")  or "fc"
local cxx = os.getenv("CXX") or "c++"
pushenv("CC",  "mpicc")
pushenv("FC",  "mpif90")
pushenv("CXX", "mpicxx")

-- Update the module path to contain the OpenMPI module tree
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot, "mdep", fname, comp)
prepend_path("MODULEPATH", mdir)
