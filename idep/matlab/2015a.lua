-- This module loads Matlab.
--

local basedir = "/curc/tools/x86_64/rh6/software"

local fam = "Matlab"
family(fam)

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Whatis and help information
whatis("Description: Matlab: This module loads Matlab")
help([[
This module loads Matlab version ]] ..version..[[:
For more information please refer to the website
http://www.mathworks.com/products/matlab/
]])

-- Set the base directory and current release
local binpath = pathJoin(basedir, fam, version, "bin")

-- Export path and man paths
prepend_path("PATH",    binpath)
