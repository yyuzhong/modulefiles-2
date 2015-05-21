--

-- We need Slurm
always_load("slurm")

-- Local family and vendor
family("MPI")

---- Load the package defaults
local pkg = loadPkgDefaults(0)
setPkgInfo(pkg)

prepend_path("PATH",            pathJoin(pkg.prefix, "bin64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))
prepend_path("MANPATH",         pathJoin(pkg.prefix, "man"))

-- Set env vars for the compilers
local cc  = os.getenv("CC")  or "cc"
local fc  = os.getenv("FC")  or "fc"
local cxx = os.getenv("CXX") or "c++"
setenv("I_MPI_CC",  cc)
setenv("I_MPI_FC",  fc)
setenv("I_MPI_CXX", cxx)
pushenv("CC",  "mpicc")
pushenv("FC",  "mpifc")
pushenv("CXX", "mpicxx")

-- Set env var for IMPI
setenv("I_MPI_ROOT", pkg.prefix)

-- Use PMI with SLURM
local slurm_root = os.getenv("SLURM_ROOT")
setenv("I_MPI_PMI_LIBRARY", pathJoin(slurm_root, "lib/libpmi.so"))

-- Filesystem hints for lustre
setenv("I_MPI_EXTRA_FILESYSTEM", 1)
setenv("I_MPI_EXTRA_FILESYSTEM_LIST", "lustre")

-- -- Update the module path 
prependModulePath(pathJoin("mdep", pkg.modpath))
