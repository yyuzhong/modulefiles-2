-- This module loads the Intel Compilers.
--

-- Set the base directory
local basedir = "/curc/tools/x_86_64/rh6"

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: zlib: This module loads the zlib library")
help([[
This module loads the zlib compression library]] ..version..[[:
For more information please refer to the man page for zlib.
refer to the man page for the individual compilers. 
]])

-- Figure out our installation root directory
local hierA   = hierarchyA(fname,1)
local comp    = hierA[1]
local root    = pathJoin(basedir, fname, comp)

-- Set the paths needed
local libpath = pathJoin(root,    "lib")
local manpath = pathJoin(root,    "share/man")
local incpath = pathJoin(root,    "include")
local pkgpath = pathJoin(libpath, "pkgconfig")

-- Export path and man paths
prepend_path("MANPATH", manpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)
-- prepend_path("LD_RUN_PATH", libpath)

-- Export the link-time library search path
-- prepend_path("LIBRARY_PATH", libpath)

-- Export the include paths
prepend_path("CPATH", incpath)

-- Export the Package config path
prepend_path("PKG_CONFIG_PATH", pkgpath)
