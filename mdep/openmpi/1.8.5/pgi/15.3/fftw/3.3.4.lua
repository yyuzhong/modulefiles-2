--

conflict("fftw")

-- Load the package defaults
local pkg = loadPkgDefaults(2)
setPkgInfo(pkg)

-- Export path and man paths
prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "share/man"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(pkg.prefix, "lib/pkgconfig"))

