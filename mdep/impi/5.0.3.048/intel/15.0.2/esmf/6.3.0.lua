--

-- Prerequisites
load("mkl")
load("netcdf")
load("pnetcdf")

-- Load the package defaults
local pkg = loadPkgDefaults(2)
setPkgInfo(pkg)

 -- Set the paths
prepend_path("PATH",             pathJoin(pkg.prefix, "bin"))
prepend_path("LD_LIBRARY_PATH",  pathJoin(pkg.prefix, "lib"))
setenv("ESMFMKFILE", pathJoin(pkg.prefix, "lib/libO/Linux.intel.64.intelmpi.default/esmf.mk"))

