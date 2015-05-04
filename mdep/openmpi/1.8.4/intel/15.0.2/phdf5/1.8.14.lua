--
-- Prerequisites
load("szip")

conflict("hdf5")

-- Load the package defaults
local pkg = loadPkgDefaults(2)
setPkgInfo(pkg)

prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))

pushenv("CC", "h5pcc")
pushenv("FC", "h5pfc")

