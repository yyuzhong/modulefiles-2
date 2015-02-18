-- This module loads the Allinea programs.
--

-- Set the base directory and current release
local basedir = "/curc/tools/x_86_64/rh6"

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: Allinea: This module loads the Allinea tools")
help([[
This module loads the Allinea tools version ]] ..version..[[:
  Debugger:           ddt
  Profiling:          map
For more information on the individual programs please
refer to the user guide within the doc directory.
]])

-- We need Slurm
prereq("slurm")

local root    = pathJoin(basedir, fname)


-- Set the paths needed
local binpath = pathJoin(root,    "/bin")
local libpath = pathJoin(root,    "/lib")
local lexpath = pathJoin(root,    "/libexec")
local licpath = pathJoin(basedir, "/licences")


-- Export path and man paths
prepend_path("PATH",    binpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("LD_LIBRARY_PATH", lexpath)

-- Export the link-time library search path
prepend_path("LIBRARY_PATH", libpath)
prepend_path("LIBRARY_PATH", lexpath)

-- Set the license directory
setenv("ALLINEA_LICENCE_DIR", licpath)