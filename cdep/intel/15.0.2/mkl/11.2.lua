-- This module loads MKL
--


add_property("arch","mic")

-- Set the base directory (relative to the software root)
local comp    = "intel/15.0.2/composer_xe_2015.2.164"
local mkldir  = "mkl"

-- Figure out our installation root directory
local root    = pathJoin(comp, mkldir)

-- Load the package defaults
local pkg = loadPkgDefaults(0, root)
setPkgInfo(pkg)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH",     pathJoin(pkg.prefix, "lib", "intel64"))
prepend_path("LD_LIBRARY_PATH",     pathJoin(pkg.prefix, "..", "compiler", "lib", "intel64"))
prepend_path("MIC_LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib", "mic"))

-- MKL specific variables
setenv("MKLROOT",         pkg.prefix)
setenv("MKL_LP64_ILP64",  "lp64")
setenv("MKL_TARGET_ARCH", "intel64")
setenv("MKL_MIC_ARCH",    "mic")

-- Over ride the default lib
setVarPath(pkg, "LIB", pathJoin(pkg.prefix, "lib", "intel64"))
