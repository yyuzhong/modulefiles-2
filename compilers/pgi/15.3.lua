-- This module loads the PGI Compilers.
--

-- Local family and vendor
local fam = "Compiler"
family(fam)

-- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

-- Set the paths
prepend_path("PATH",            pathJoin(pkg.prefix, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "libso"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "man"))

-- Set env vars for the compilers
pushenv("CC",  "pgcc")
pushenv("FC",  "pgfortran")
pushenv("F90", "pgf90")
pushenv("F77", "pgf77")
pushenv("CXX", "pgc++")
-- The PGI preprocessor is very finicky
-- pushenv("CPP", "pgprepro")

-- Set env vars for the license file
setenv("PGI",             pathJoin(pkg.prefix))
setenv("LM_LICENSE_FILE", pathJoin(pkg.prefix, "license.dat"))

---- Update the module path 
prependModulePath(pathJoin("cdep", pkg.id))
prependModulePath(pathJoin("mpis", pkg.id))
