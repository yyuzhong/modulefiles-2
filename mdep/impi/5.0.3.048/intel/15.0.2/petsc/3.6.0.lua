--


load('mkl')
load('fftw')
load('hdf5')

-- Load the package defaults
local pkg = loadPkgDefaults(2)
setPkgInfo(pkg)

 -- Set the paths
prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(pkg.prefix, "lib/pkgconfig"))

setenv("PETSC_DIR", pkg.prefix)
