-- This module loads the Allinea programs.
--

-- We need Slurm
always_load("slurm")

-- We support the Phi
add_property("arch","mic")

-- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

-- Set the paths
prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))

-- Set the license directory
setenv("ALLINEA_LICENCE_DIR",   pathJoin(pkg.prefix, "licences"))

