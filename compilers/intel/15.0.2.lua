-- This module loads the Intel Compilers.
--

-- Local family and vendor
local fam     = "Compiler"
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Only one compiler at a time.
family(fam)
add_property("arch","mic")

-- Whatis and help information
whatis("Description: Intel: This module loads the Intel Compilers")
help([[
This module loads the Intel Compilers version ]] ..version..[[:
  C:        icc
  C++:      icpc
  Fortran:  ifort
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- Set the base directory and current release
local basedir = "/curc/tools/x86_64/rh6/software"
local etcdir  = "/curc/tools/x86_64/rh6/etc"
local release = "composer_xe_2015.2.164"

-- Set the paths needed
local binpath = pathJoin(basedir, fname, release, "bin/intel64")
local libpath = pathJoin(basedir, fname, release, "compiler/lib/intel64")
local manpath = pathJoin(basedir, fname, release, "man/en_US")
local incpath = pathJoin(basedir, fname, release, "include")

local micpath = pathJoin(basedir, fname, release, "compiler/lib/mic")

local intel_l = pathJoin(etcdir, "licences", name, "server.lic")
local lm_l    = pathJoin(etcdir, "licences", name, "USE_SERVER.lic")

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

-- Set env vars for the compilers
pushenv("CC", "icc")
pushenv("FC", "ifort")
pushenv("CXX", "icpc")

-- MIC Support
prepend_path("MIC_LD_LIBRARY_PATH", micpath)

-- Set env vars for the license file
setenv("INTEL_LICENSE_FILE", intel_l)
setenv("LM_LICENSE_FILE",    lm_l)

-- Update the module path to contain the Intel module tree
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot, "mpis", fname)
local cdir  = pathJoin(mroot, "cdep", fname)
prepend_path("MODULEPATH", mdir)
prepend_path("MODULEPATH", cdir)
