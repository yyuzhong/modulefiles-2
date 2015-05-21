--

-- We need Slurm
always_load("slurm")

-- Load the package defaults
local pkg = loadPkgDefaults(0, 'toolworks/totalview.8.15.4-6')
setPkgInfo(pkg)

-- Set the paths
prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "man"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))

setenv("LM_LICENSE_FILE", pathJoin(pkg.prefix, "licences/license.dat"))
