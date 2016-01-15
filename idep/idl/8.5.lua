--

-- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

-- Set the paths
prepend_path("PATH",            pathJoin(pkg.prefix, "idl85", "bin"))
prepend_path("PATH",            pathJoin(pkg.prefix, "envi53", "bin"))

setenv("EXELIS_DIR",            pkg.prefix)
setenv("IDL_DIR",               pathJoin(pkg.prefix, "idl85"))
setenv("ENVI_DIR",              pathJoin(pkg.prefix, "envi53"))

