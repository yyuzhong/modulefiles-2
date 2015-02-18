-- This module loads the GNU Compilers.
--

-- Local family and vendor
local fam = "Compiler"
local ven = "gnu"

-- Local version and sub version
local ver = "4.9"
local sub = ".2"


-- Only one compiler at a time.
family(fam)

-- Whatis and help information
whatis("Description: GNU: This module loads the GNU Compilers")
help([[
This module loads the GNU Compilers version ]] ..ver..sub..[[:
  C:        gcc
  C++:      g++
  Fortran:  gfortran
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- Set the base directory
local basedir = "/curc/tools/x_86_64/rh6/gnu/"

-- Set the paths needed
local binpath = pathJoin(basedir, ver .. sub, "/bin")
local libpath = pathJoin(basedir, ver .. sub, "/lib")
local l64path = pathJoin(basedir, ver .. sub, "/lib64")
local incpath = pathJoin(basedir, ver .. sub, "/lib64")
local manpath = pathJoin(basedir, ver .. sub, "/share/man")
local pkgpath = pathJoin(basedir, ver .. sub, "/lib/pkgconfig")


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
prepend_path("C_INCLUDE_PATH", incpath)
prepend_path("CPLUS_INCLUDE_PATH", incpath)
prepend_path("OBJC_INCLUDE_PATH", incpath)

-- Set env vars for the compilers
pushenv("CC", "gcc")
pushenv("FC", "gfortran")
pushenv("CXX", "g++")

-- Update the module path to contain the Intel module tree
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot, "mpis", ven, ver..sub)
local cdir  = pathJoin(mroot, "cdep", ven, ver..sub)
prepend_path("MODULEPATH", mdir)
prepend_path("MODULEPATH", cdir)
