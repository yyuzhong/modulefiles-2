-- This module loads the PGI Compilers.
--

-- Local family and vendor
local fam = "Compiler"
local ven = "pgi"

-- Local version and sub version
local ver = "14"
local sub = ".4"


-- Only one compiler at a time.
family(fam)

-- Whatis and help information
whatis("Description: PGI: This module loads the Portland Group Compilers")
help([[
This module loads the PGI Compilers version ]] ..ver..sub..[[:
  C:        pgcc
  C++:      pgCC
  Fortran:  pgfortran
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- Set the base directory and current release
local basedir = "/curc/tools/x_86_64/rh6/pgi/"..ver..sub.."/linux86-64"

-- Set the paths needed
local binpath = pathJoin(basedir, ver .. sub, "/bin")
local libpath = pathJoin(basedir, ver .. sub, "/lib")
local lsopath = pathJoin(basedir, ver .. sub, "/libso")
local manpath = pathJoin(basedir, ver .. sub, "/man")

local lm_l    = pathJoin(basedir, "/licenses/license.dat")

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
pushenv("CC", "pgcc")
pushenv("FC", "pgfortran")
pushenv("CXX", "pgCC")

-- Set env vars for the license file
setenv("LM_LICENSE_FILE",    lm_l)

-- Update the module path to contain the Intel module tree
local mroot = os.getenv("MODULEPATH_ROOT")
local cdir  = pathJoin(mroot, "cdep", ven, ver..sub)
local mdir  = pathJoin(mroot, "mpis", ven, ver..sub)
prepend_path("MODULEPATH", cdir)
prepend_path("MODULEPATH", mdir)
