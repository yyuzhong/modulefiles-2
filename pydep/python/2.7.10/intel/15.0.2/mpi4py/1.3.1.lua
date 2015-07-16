--

load('impi')

-- Load the package defaults
local pkg = loadPkgDefaults(2, '', true)
setPkgInfo(pkg)

prepend_path("PYTHONPATH", pathJoin(pkg.prefix, "lib/python2.7/site-packages"))

