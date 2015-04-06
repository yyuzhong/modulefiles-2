-- This module loads the GNU Compilers.
--

-- Local family and vendor
local fam = "Compiler"

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Only one compiler at a time.
family(fam)

-- Whatis and help information
whatis("Description: GNU: This module loads the GNU Compilers")
help([[
This module loads the GNU Compilers version ]] ..version..[[:
  C:        gcc
  C++:      g++
  Fortran:  gfortran
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- Set the base directory
local basedir = "/curc/tools/x86_64/rh6/software"

-- Set the paths needed
local binpath = pathJoin(basedir, fname, "/bin")
local libpath = pathJoin(basedir, fname, "/lib")
local l64path = pathJoin(basedir, fname, "/lib64")
local incpath = pathJoin(basedir, fname, "/lib64")
local manpath = pathJoin(basedir, fname, "/share/man")
local pkgpath = pathJoin(basedir, fname, "/lib/pkgconfig")


-- Export path and man paths
prepend_path("PATH",    binpath)
prepend_path("MANPATH", manpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("LD_LIBRARY_PATH", l64path)

-- Export the link-time library search path
prepend_path("LIBRARY_PATH", libpath)
prepend_path("LIBRARY_PATH", l64path)

-- Export the include paths
prepend_path("CPATH", incpath)

-- Export the Package config path
prepend_path("PKG_CONFIG_PATH", pkgpath)

-- Set env vars for the compilers
pushenv("CC", "gcc")
pushenv("FC", "gfortran")
pushenv("CXX", "g++")

-- Update the module path to contain the Intel module tree
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot, "mpis", fname)
local cdir  = pathJoin(mroot, "cdep", fname)
prepend_path("MODULEPATH", mdir)
prepend_path("MODULEPATH", cdir)
