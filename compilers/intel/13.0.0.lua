-- This module loads the Intel Compilers.
--

-- Local family and vendor
local fam = "Compiler"
local ven = "intel"

-- Local version and sub version
local ver = "13.0"
local sub = ".0"


-- Only one compiler at a time.
family(fam)

-- Whatis and help information
whatis("Description: Intel: This module loads the Intel Compilers")
help([[
This module loads the Intel Compilers version ]] ..ver..sub..[[:
  C:        icc
  C++:      icpc
  Fortran:  ifort
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- Set the base directory and current release
local basedir = "/curc/tools/x_86_64/rh6/intel/"
local release = "/composer_xe_2013.0.079"

-- Set the paths needed
local binpath = pathJoin(basedir, ver .. sub, release, "/bin/intel64")
local libpath = pathJoin(basedir, ver .. sub, release, "/compiler/lib/intel64")
local bugpath = pathJoin(basedir, ver .. sub, release, "/debugger/lib/intel64")
local manpath = pathJoin(basedir, ver .. sub, release, "/man/en_US")
local mklroot = pathJoin(basedir, ver .. sub, release, "/mkl")
local mklpath = pathJoin(mklroot, "/lib/intel64")
local incpath = pathJoin(mklroot, "/include")
local micpath = pathJoin(basedir, ver .. sub, release, "/compiler/lib/mic")

local intel_l = pathJoin(basedir, "/licenses/server.lic")
local lm_l    = pathJoin(basedir, "/licenses/USE_SERVER.lic")


-- Export path and man paths
prepend_path("PATH",    binpath)
prepend_path("MANPATH", manpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("LD_LIBRARY_PATH", bugpath)
prepend_path("LD_LIBRARY_PATH", mklpath)

-- Export the link-time library search path
prepend_path("LIBRARY_PATH", libpath)
prepend_path("LIBRARY_PATH", bugpath)
prepend_path("LIBRARY_PATH", mklpath)

-- Export the include paths
prepend_path("CPATH", incpath)
prepend_path("FPATH", incpath)
prepend_path("INCLUDE", incpath)


-- Set env vars for the compilers
pushenv("CC", "icc")
pushenv("FC", "ifort")
pushenv("CXX", "icpc")

-- Set env var for MKL
setenv("MKLROOT", mklroot)

-- Set env var for MIC
setenv("MIC_LD_LIBRARY_PATH", micpath)
 
-- Set env vars for the license file
setenv("INTEL_LICENSE_FILE", intel_l)
setenv("LM_LICENSE_FILE",    lm_l)

-- Set the env var for version
setenv("INTEL_MAJOR_VERSION", ver)
setenv("INTEL_MINOR_VERSION", sub)

-- Update the module path to contain the Intel module tree
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot, "mpis", ven, ver..sub)
local cdir  = pathJoin(mroot, "cdep", ven, ver..sub)
prepend_path("MODULEPATH", mdir)
prepend_path("MODULEPATH", cdir)
