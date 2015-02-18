-- This module loads the Intel MPI Library.
--

-- Local family and vendor
local fam = "MPI"
local ven = "intel"

-- Local version and sub version
local ver = "5.0"
local sub = ".2"


-- Only one compiler at a time.
family(fam)

-- Whatis and help information
whatis("Description: IMPI: This module loads the Intel MPI Library")
help([[
This module loads the Intel MPI version ]] ..ver..sub..[[:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- We need Slurm
prereq("slurm")

-- Set the base directory and current release
local basedir = "/curc/tools/x_86_64/rh6/intel/15.0.1"
local release = "/impi"
local root    = pathJoin(basedir, release .. "_" .. ver .. sub)

-- Set the paths needed
local binpath = pathJoin(root, "/bin64")
local libpath = pathJoin(root, "/lib")
local manpath = pathJoin(root, "/man")
local incpath = pathJoin(root, "/include")

local intel_l = pathJoin(basedir, "/licenses/server.lic")
local lm_l    = pathJoin(basedir, "/licenses/USE_SERVER.lic")


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
prepend_path("C_INCLUDE_PATH", incpath)
prepend_path("CPLUS_INCLUDE_PATH", incpath)
prepend_path("OBJC_INCLUDE_PATH", incpath)


-- Set env vars for the compilers
local cc  = os.getenv("CC")  or "cc"
local fc  = os.getenv("FC")  or "fc"
local cxx = os.getenv("CXX") or "c++"
setenv("I_MPI_CC",  cc)
setenv("I_MPI_FC",  fc)
setenv("I_MPI_CXX", cxx)
pushenv("CC",  "mpicc")
pushenv("FC",  "mpifc")
pushenv("CXX", "mpicxx")

-- Set env var for IMPI
setenv("I_MPI_ROOT", root)

-- Use PMI with SLURM
local slurm_root = os.getenv("SLURM_ROOT")
setenv("I_MPI_PMI_LIBRARY", pathJoin(slurm_root,"/lib/libpmi.so"))

-- Filesystem hints for lustre
setenv("I_MPI_EXTRA_FILESYSTEM", 1)
setenv("I_MPI_EXTRA_FILESYSTEM_LIST", "lustre")

-- Update the module path to contain the Intel module tree
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot, "mdep", ven, ver..sub)
prepend_path("MODULEPATH", mdir)
