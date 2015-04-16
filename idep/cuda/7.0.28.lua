-- This module loads the CUDA programs
--

add_property("arch","gpu")

-- Set the base directory and current release
local basedir = "/curc/tools/x86_64/rh6/software"
local etcdir  = "/curc/tools/x86_64/rh6/etc"

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: CUDA: This module loads the CUDA tools")
help([[
This module loads the CUDA toolkit version ]] ..version..[[:
  Compiler:           nvcc
For more information on the individual programs please
refer to the user guide within the doc directory.
]])

local root    = pathJoin(basedir, fname)

-- Set the paths needed
local binpath = pathJoin(root,    "bin")
local libpath = pathJoin(root,    "lib64")

-- Export path and man paths
prepend_path("PATH",    binpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)
