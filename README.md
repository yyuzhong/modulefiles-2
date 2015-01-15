Lmod Module Hierarchy
---------------------

1) idep  -- Independent Applications.
   These modules can be loaded without depending on any other module.
   i.e. slurm

2) compilers -- Compilers Available.
   This is all the various compilers available on the system.
   i.e. intel (v15.0.1)

2) cdep -- Compiler Dependent Programs.
   This contains sub directories for each compiler (and version). That
   will be appended to the module path when that specific compiler and
   version are loaded. 
   i.e. impi (v5.0.2)

3) mdep -- MPI Dependent Programs.
   This contains sub directories for each mpi implementation and compiler pair.
   i.e. phdf (v1.8.14)

