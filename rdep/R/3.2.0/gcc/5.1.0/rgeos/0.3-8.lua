--

load("geos")

-- Load the package defaults
local pkg = loadPkgDefaults(2, '', true)
setPkgInfo(pkg)

prepend_path("R_LIBS", pathJoin(pkg.prefix))

