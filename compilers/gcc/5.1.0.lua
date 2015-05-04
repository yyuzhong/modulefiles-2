-- This module loads the GNU Compilers.
--

-- Local family (to enforce only one compiler)
local fam = "Compiler"
family(fam)

-- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

-- Set the paths
prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib64"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(pkg.prefix, "lib64/pkgconfig"))

-- Set env vars for the compilers
pushenv("CC", "gcc")
pushenv("FC", "gfortran")
pushenv("CXX", "g++")

---- Update the module path 
prependModulePath(pathJoin("cdep", pkg.id))
prependModulePath(pathJoin("mpis", pkg.id))

