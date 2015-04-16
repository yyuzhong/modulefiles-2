-- This module loads the PGI Compilers.
--

-- Local family and vendor
local fam = "Compiler"
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()


-- Only one compiler at a time.
family(fam)

-- Whatis and help information
whatis("Description: PGI: This module loads the Portland Group Compilers")
help([[
This module loads the PGI Compilers version ]] ..version..[[:
  C:        pgcc
  C++:      pgCC
  Fortran:  pgfortran
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- Set the base directory and current release
local basedir = "/curc/tools/x86_64/rh6/software"


-- Set the paths needed
local binpath = pathJoin(basedir, name, "linux86-64", version, "bin")
local libpath = pathJoin(basedir, name, "linux86-64", version, "lib")
local lsopath = pathJoin(basedir, name, "linux86-64", version, "libso")
local manpath = pathJoin(basedir, name, "linux86-64", version, "man")

local lm_l    = pathJoin(basedir, name, "license.dat")

-- Export path and man paths
prepend_path("PATH",    binpath)
prepend_path("MANPATH", manpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("LD_LIBRARY_PATH", lsopath)

-- Export the link-time library search path
prepend_path("LIBRARY_PATH", libpath)
prepend_path("LIBRARY_PATH", lsopath)

-- Set env vars for the compilers
pushenv("CC",  "pgcc")
pushenv("FC",  "pgfortran")
pushenv("F90", "pgf90")
pushenv("F77", "pgf77")
pushenv("CXX", "pgc++")
-- The PGI preprocessor is very finicky
-- pushenv("CPP", "pgprepro")

-- Set env vars for the license file
setenv("PGI", pathJoin(basedir, name))
setenv("LM_LICENSE_FILE",    lm_l)

-- Update the module path to contain the Intel module tree
local mroot = os.getenv("MODULEPATH_ROOT")
local cdir  = pathJoin(mroot, "cdep", fname)
local mdir  = pathJoin(mroot, "mpis", fname)
prepend_path("MODULEPATH", cdir)
prepend_path("MODULEPATH", mdir)
