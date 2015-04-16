--
-- Prerequisites
prereq("intel","impi")

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: boost: This module loads PARALLEL Boost C++ libraries")
help([[
This module loads the PARALLEL Boost C++ version ]] ..version..[[:
For more information please refer to the website:
http://www.boost.org/
]])

-- Set the base directory
local basedir = "/curc/tools/x86_64/rh6/software"

-- Figure out our installation root directory
local hierA   = hierarchyA(fname,2)
local comp    = hierA[1]
local mpi     = hierA[2]
local root    = pathJoin(basedir, fname, mpi, comp)

local libpath = pathJoin(root, "lib")
local incpath = pathJoin(root, "include")

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)

-- Export the include paths
prepend_path("CPATH", incpath)

-- Set the root directory variable
setenv("BOOST_ROOT", root)
