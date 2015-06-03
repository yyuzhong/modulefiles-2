--

conflict("boost")

-- Load the package defaults
local pkg = loadPkgDefaults(1)
setPkgInfo(pkg)

prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))
setenv("BOOST_ROOT", pkg.prefix)
