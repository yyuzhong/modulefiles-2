-- This module loads SLURM
--

-- Make slurm stick when users purge modules
add_property("lmod", "sticky")

-- Local family and vendor
local fam = "Scheduler"
family(fam)

-- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

-- Set the base directory
local basedir = "/curc/slurm/slurm/current"

-- Export path and man paths
prepend_path("PATH",    pathJoin(basedir, "bin"))
prepend_path("MANPATH", pathJoin(basedir, "share/man"))

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", pathJoin(basedir, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(basedir, "lib64"))

-- Set a variable to define the root path
setenv("SLURM_ROOT", basedir)

-- This is a chicken and egg problem,
-- Intel's MPI needs the pmi library, yet it's in the slurm lib dir.
setenv("I_MPI_PMI_LIBRARY", pathJoin(basedir, "lib/libpmi.so"))
