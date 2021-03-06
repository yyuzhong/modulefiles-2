--

-- Prerequisites
load("szip")
load("hdf5")
load("pnetcdf")

conflict("netcdf")

-- Load the package defaults
local pkg = loadPkgDefaults(2)
setPkgInfo(pkg)

 -- Set the paths
prepend_path("PATH",             pathJoin(pkg.prefix, "bin"))
prepend_path("LD_LIBRARY_PATH",  pathJoin(pkg.prefix, "lib"))

