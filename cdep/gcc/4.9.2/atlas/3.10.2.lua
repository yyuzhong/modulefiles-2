--

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: atlas: This module provides ATLAS")
help([[
This module loads ATLAS version ]] ..version..[[:
The Automatically Tuned Linear Algebra Software
For more information please refer to the website:
http://math-atlas.sourceforge.net/
]])

-- Set the base directory
local basedir = "/curc/tools/x86_64/rh6/software"

-- Figure out our installation root directory
local hierA   = hierarchyA(fname,1)
local comp    = hierA[1]
local root    = pathJoin(basedir, fname, comp)

local libpath = pathJoin(root, "lib")
local incpath = pathJoin(root, "include")

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)

-- Export the include paths
prepend_path("CPATH", incpath)
