-- This module loads the load balancer programs.
--

-- Set the base directory
local basedir = "/curc/tools/x_86_64/rh6"

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: loadblance: This module loads the serial load balancer")
help([[
This module loads the load balancer version ]] ..version..[[:
  Executable:         lb
This program will run multiple serial jobs concurrently
under MPI.

For more information on the individual programs please
refer to the man page.
]])

-- We need Slurm
prereq("slurm")

local root    = pathJoin(basedir, fname)

-- Set the paths needed
local binpath = pathJoin(root, "/bin")
local manpath = pathJoin(root, "/man")


-- Export path and man paths
prepend_path("PATH",    binpath)
prepend_path("MANPATH", manpath)

