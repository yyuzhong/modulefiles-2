-- This module loads the load balancer programs.
--

-- We need Slurm
load("slurm")

-- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

-- Set the paths
prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "share/man"))

