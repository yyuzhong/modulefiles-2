--
require("strict")

local Dbg       = require("Dbg")
local dbg = Dbg:dbg()
-- Prerequisites
prereq("szip","openmpi")

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: phdf5: This module loads PARALLEL HDF5")
help([[
This module loads the PARALLEL HDF5 version ]] ..version..[[:
For more information please refer to the website:
http://www.hdfgroup.org/
]])

-- Set the base directory
local basedir = "/curc/tools/x86_64/rh6/software"

-- Figure out our installation root directory
local hierA   = hierarchyA(fname,2)
local comp    = hierA[1]
local mpi     = hierB[2]
local root    = pathJoin(basedir, fname, mpi, comp)

local binpath = pathJoin(root, "bin")
local libpath = pathJoin(root, "lib")
local incpath = pathJoin(root, "include")

-- Export path and man paths
prepend_path("PATH",    binpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)

-- Export the include paths
prepend_path("CPATH", incpath)
