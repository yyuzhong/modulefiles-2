# Lmod Module Hierarchy

The directory hierarchy is as follows:

```
  /
   |
   +-- idep/             Independent Programs.
   |
   +-- compilers/        Compilers Available.
   |
   +-- cdep/             Compiler Dependent Programs.
   |
   +-- mpis/             MPIs Available.
   |
   --- mdep/             MPI Dependent Programs.
```

1. **Independent Applications**
   These modules can be loaded without depending on any other module.
   i.e. slurm

2. **Compilers Available**
   This is all the various compilers available on the system.
   i.e. intel (v15.0.1)

3. **Compiler Dependent Programs**
   This contains sub directories for each compiler (and version). That
   will be appended to the module path when that specific compiler and
   version are loaded. 

4. **MPIs Available**
   This contains sub directories for each compiler (and version), simillar
   to `cdep`. However it only contains MPI implementations. So when a user
   looks for available modules to load it will clearly show the MPIs that
   are on the system.
   i.e. impi (v5.0.2)

5. **MPI Dependent Programs**
   This contains sub directories for each mpi implementation and compiler pair.
   i.e. phdf (v1.8.14)

