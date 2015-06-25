--

-- Prerequisites
load("szip")
load("hdf5")

-- Load the package defaults
local pkg = loadPkgDefaults(1)
setPkgInfo(pkg)

 -- Set the paths
prepend_path("LD_LIBRARY_PATH",  pathJoin(pkg.prefix, "lib"))

