-- This module loads the Intel Compilers.
--

-- Set the base directory
local basedir = "/curc/tools/x_86_64/rh6"

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: jpeglib: This module loads the jpeg library")
help([[
This module loads the jpeg library]] ..version..[[:
For more information please refer to the man page for zlib.
refer to the man page for the individual compilers. 
]])

-- Set the paths needed
local root    = pathJoin(basedir, fname)

local binpath = pathJoin(root, "/bin")
local libpath = pathJoin(root, "/lib")
local manpath = pathJoin(root, "/share/man")
local incpath = pathJoin(root, "/include")

-- Export path and man paths
prepend_path("PATH",    binpath)
prepend_path("MANPATH", manpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("LD_RUN_PATH", libpath)

-- Export the link-time library search path
prepend_path("LIBRARY_PATH", libpath)

-- Export the include paths
prepend_path("CPATH", incpath)
