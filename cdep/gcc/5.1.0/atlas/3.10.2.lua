--

-- Load the package defaults
local pkg = loadPkgDefaults(1)
setPkgInfo(pkg)

prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))
pushenv("BLAS", pathJoin(pkg.prefix, "lib", "libcblas.a"))
pushenv("LAPACK", pathJoin(pkg.prefix, "lib", "liblapack.a"))
pushenv("ATLAS", pathJoin(pkg.prefix, "lib", "libstlas.a"))

