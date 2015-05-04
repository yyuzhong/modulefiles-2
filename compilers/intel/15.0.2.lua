-- This module loads the Intel Compilers.
--

-- We can cross compile for the Phi
add_property("arch","mic")

-- Local family (to enforce only one compiler)
local fam = "Compiler"
family(fam)

-- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

-- Set the paths
local release = "composer_xe_2015.2.164"
prepend_path("PATH",                pathJoin(pkg.prefix, release, "bin/intel64"))
prepend_path("LD_LIBRARY_PATH",     pathJoin(pkg.prefix, release, "compiler/lib/intel64"))
prepend_path("MANPATH",             pathJoin(pkg.prefix, release, "man/en_US"))
prepend_path("MIC_LD_LIBRARY_PATH", pathJoin(pkg.prefix, release, "compiler/lib/mic"))

-- Set the license file
setenv("INTEL_LICENSE_FILE",        pathJoin(pkg.prefix, "licences/USE_SERVER.lic"))

-- Set env vars for the compilers
pushenv("CC",  "icc")
pushenv("FC",  "ifort")
pushenv("CXX", "icpc")
pushenv("AR",  "xiar")
pushenv("LD",  "xild")

---- Update the module path 
prependModulePath(pathJoin("cdep", pkg.id))
prependModulePath(pathJoin("mpis", pkg.id))
