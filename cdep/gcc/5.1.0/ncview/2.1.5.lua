--

-- Load the package defaults
local pkg = loadPkgDefaults(1)
setPkgInfo(pkg)

-- Prerequisites
load("szip")
load("hdf5")
load("netcdf")
load("udunits")

 -- Set the paths
prepend_path("PATH",             pathJoin(pkg.prefix, "bin"))

