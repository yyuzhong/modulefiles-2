--

conflict("boost")

-- Load the package defaults
local pkg = loadPkgDefaults(2)
setPkgInfo(pkg)

prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))
setenv("BOOST_ROOT", pkg.prefix)
