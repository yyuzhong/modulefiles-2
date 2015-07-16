--
-- Prerequisites

-- Load the package defaults
local pkg = loadPkgDefaults(2)
setPkgInfo(pkg)

prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "share/man"))

