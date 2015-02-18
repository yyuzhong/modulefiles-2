-- This module loads SLURM
--

-- Set the base directory
local basedir = "/curc/slurm"

-- Local family and vendor
local fam = "Scheduler"
family(fam)

-- Local name/vendor and version
local fname   = myModuleFullName()
local name    = myModuleName()
local version = myModuleVersion()

-- Make slurm stick when users purge modules
add_property("lmod", "sticky")

-- Whatis and help information
whatis("Description: SLURM: This module loads the SLURM scheduler")
help([[
This module loads the SLURM scheduler version ]] ..version..[[:
  Job submission:     sbatch / salloc / sinteractive / srun
  Information:        squeue / sinfo
  Cancelation:        scancel
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 
]])

-- Set the paths needed
local root    = pathJoin(basedir, fname)

local binpath = pathJoin(root, "/bin")
local libpath = pathJoin(root, "/lib")
local l64path = pathJoin(root, "/lib64")
local manpath = pathJoin(root, "/share/man")
local incpath = pathJoin(root, "/include")

local pmilib  = pathJoin(root, "/lib/libpmi.so")

-- Export path and man paths
prepend_path("PATH",    binpath)
prepend_path("MANPATH", manpath)

-- Export the run-time library search path
prepend_path("LD_LIBRARY_PATH", libpath)
prepend_path("LD_LIBRARY_PATH", l64path)

-- Export the link-time library search path
prepend_path("LIBRARY_PATH", libpath)
prepend_path("LIBRARY_PATH", l64path)

-- Export the include paths
prepend_path("CPATH", incpath)
prepend_path("FPATH", incpath)
prepend_path("INCLUDE", incpath)

-- Set a variable to define the root path
setenv("SLURM_ROOT", root)

-- This is a chicken and egg problem,
-- Intel's MPI needs the pmi library, yet it's in the slurm lib dir.
setenv("I_MPI_PMI_LIBRARY", pmilib)
