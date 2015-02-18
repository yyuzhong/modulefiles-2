-- This module loads the Intel MPI Library.
--

-- Set the base directory
local basedir = "/curc/tools/x_86_64/rh6"

-- Local family
local fam = "MPI"
family(fam)

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName() 
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: OpenMPI: This module loads the OpenMPI Library")
help([[
This module loads the OpenMPI version ]]..version..[[:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- We need Slurm
prereq("slurm")

-- Figure out our installation root directory
local hierA   = hierarchyA(fname,1)
local comp    = hierA[1]
local root    = pathJoin(basedir, fname, comp)

-- Set the paths needed
local binpath = pathJoin(root, "/bin")
local libpath = pathJoin(root, "/lib")
local manpath = pathJoin(root, "/share/man")
local incpath = pathJoin(root, "/include")

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
pushenv("CC",  "mpicc")
pushenv("FC",  "mpifc")
pushenv("CXX", "mpicxx")

-- Set env var for IMPI
setenv("MPI_ROOT", root)

-- Update the module path to contain the Intel module tree
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot, "mdep", fname)
prepend_path("MODULEPATH", mdir)
