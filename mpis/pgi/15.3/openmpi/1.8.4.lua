-- This module loads the OpenMPI Library.
--

-- Local family and vendor
family("MPI")

-- Load the package defaults
local pkg = loadPkgDefaults(1)
setPkgInfo(pkg)

-- We need Slurm
always_load("slurm")

-- Set the paths
prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(pkg.prefix, "lib/pkgconfig"))

-- Set env vars for the compilers
pushenv("CC",  "mpicc")
pushenv("FC",  "mpif90")
pushenv("CXX", "mpicxx")

---- Update the module path
prependModulePath(pathJoin("mdep", pkg.modpath))
