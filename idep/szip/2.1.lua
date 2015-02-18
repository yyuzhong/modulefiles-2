-- This module loads the Intel Compilers.
--

-- Set the base directory
local basedir = "/curc/tools/x_86_64/rh6"

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: szip: This module loads the szip libaray")
help([[
This module loads the szip compression library version ]] ..version..[[:
For more information please refer to the website:
http://www.hdfgroup.org/doc_resource/SZIP/
]])

-- Set the paths needed
local root    = pathJoin(basedir, fname)

local libpath = pathJoin(root, "/lib")
local incpath = pathJoin(root, "/include")

-- Export the run-time library search path
-- prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("LD_RUN_PATH", libpath)

-- Export the include paths
prepend_path("CPATH", incpath)
