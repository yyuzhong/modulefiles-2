-- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

load("slurm")

load("gcc")
load("python/2.7.10")
load("pyslurm")

-- Set the paths
prepend_path("PYTHONPATH", pathJoin(pkg.prefix, "lib/python2.7/site-packages"))
prepend_path("PATH", pathJoin(pkg.prefix, "bin"))

