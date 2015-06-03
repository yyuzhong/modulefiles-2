--

-- Load the package defaults
local pkg = loadPkgDefaults(2, pathJoin("R_packages/3.2.0", myModuleFullName()))
setPkgInfo(pkg)

prepend_path("R_LIBS", pathJoin(pkg.prefix))

