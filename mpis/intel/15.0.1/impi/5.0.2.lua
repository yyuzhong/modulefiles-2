-- This module loads the Intel MPI Library.
--

-- Set the base directory and current release
local basedir = "/curc/tools/x_86_64/rh6"
local idir    = "intel/15.0.1"

-- Local family
local fam = "MPI"
family(fam)

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName() 
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: IMPI: This module loads the Intel MPI Library")
help([[
This module loads the Intel MPI version ]] ..version..[[:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- We need Slurm
prereq("slurm")

local root    = pathJoin(basedir, idir, name .."_".. version)

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
local mdir  = pathJoin(mroot, "mdep", fname)
prepend_path("MODULEPATH", mdir)
