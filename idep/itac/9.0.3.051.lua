--

-- We support the Phi
add_property("arch","mic")

-- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

-- Set the paths
prepend_path("PATH",            pathJoin(pkg.prefix, "intel64", "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "intel64", "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "intel64", "slib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "mic", "slib"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "man"))
prepend_path("CLASSPATH",       pathJoin(pkg.prefix, "intel64", "lib"))
setenv("VT_ROOT", pathJoin(pkg.prefix))
setenv("VT_ARCH", "intel64")
setenv("INTEL_LICENSE_FILE",    "/curc/tools/x86_64/rh6/etc/licences/intel/USE_SERVER.lic")

