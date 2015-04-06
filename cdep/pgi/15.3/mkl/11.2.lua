-- This module loads MKL
--

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: mkl: This module loads mkl")
help([[
This module loads the Intel Math Kernel Library version ]] ..version..[[:
For more information please refer to the website:
https://software.intel.com/en-us/articles/intel-math-kernel-library-documentation/
]])

-- Set the base directory
local basedir = "/curc/tools/x86_64/rh6/software"
local comp    = "intel/15.0.2/composer_xe_2015.2.164"
local mkldir  = "mkl"

-- Figure out our installation root directory
local root    = pathJoin(basedir, comp, mkldir)

local libpath = pathJoin(root, "lib")
local micpath = pathJoin(root, "lib/mic")
local incpath = pathJoin(root, "include")
local clib    = pathJoin(basedir, comp, "lib")

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("LD_LIBRARY_PATH", clib)

-- Export the include paths
prepend_path("CPATH", incpath)

-- MKL specific variables
setenv("MKLROOT", root)
setenv("MKL_LP64_ILP64", "lp64")
setenv("MKL_TARGET_ARCH", "intel64")
