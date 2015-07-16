--

-- Load the package defaults
local pkg = loadPkgDefaults(2, '', true)
setPkgInfo(pkg)

prepend_path("PATH",       pathJoin(pkg.prefix, "bin"))
prepend_path("PYTHONPATH", pathJoin(pkg.prefix, "lib/python3.4/site-packages"))

