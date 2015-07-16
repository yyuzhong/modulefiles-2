--

-- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

-- Export path and man paths
prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "man"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))

-- prependModulePath(pathJoin("perldep", pkg.modpath))
