--

-- Prerequisites
prereq("szip")

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: hdf5: This module loads HDF5")
help([[
This module loads HDF5 version ]] ..version..[[:
For more information please refer to the website:
http://www.hdfgroup.org/
]])

-- Set the base directory
local basedir = "/curc/tools/x86_64/rh6/software"

-- Figure out our installation root directory
local hierA   = hierarchyA(fname,1)
local comp    = hierA[1]
local root    = pathJoin(basedir, fname, comp)

local binpath = pathJoin(root, "bin")
local libpath = pathJoin(root, "lib")
local incpath = pathJoin(root, "include")

-- Export path and man paths
prepend_path("PATH",    binpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)

-- Export the include paths
prepend_path("CPATH", incpath)
