--

load('mkl')

-- Load the package defaults
local pkg = loadPkgDefaults(1)
setPkgInfo(pkg)


prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib64"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "share/man"))

prependModulePath(pathJoin("rdep", pkg.modpath))
