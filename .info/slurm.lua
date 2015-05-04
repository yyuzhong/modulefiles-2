--
-- Package defaults

local pkg = {}

pkg.display_name = "Slurm"
pkg.category     = "program"
pkg.keywords     = "scheduler"
pkg.url          = "http://www.schedmd.com/slurmdocs/"
pkg.license      = "GNU"
pkg.description  = "Slurm is an open-source workload manager"
pkg.help         = [[
This module loads the slurm scheduler providing:
  Job submission:     sbatch / salloc / sinteractive / srun
  Information:        squeue / sinfo
  Cancelation:        scancel
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers.
]]

return pkg
