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
   +-- mdep/             MPI Dependent Programs.
   |
   +-- pydep/            Python Packages/Modules/Libraries.
   |
   +-- rdep/             R Packages/Modules/Libraries.
   |
   +-- .site/            Site Specific Configuration.
   |
   +-- .info/            Package Default Information.
   |
   \-- .data/            Modules Data Cache.
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

6. ** Python Packages/Modules/Libraries**
   This directory contains python packages for each python version and compiler pair.
   i.e. h5py
 
7. ** R Packages/Modules/Libraries**
   This directory contains R packages for each R version and compiler pair.
   i.e. netcdf

8. **Site Specific Configuration**
   This directory contains the file `SitePackage.lua` which contains the
   + default specifications for packages 
   + default `CURC_${PACKAGE}_{ROOT,INC,LIB}` directory settings
   + logging to syslog on loading a package

9. **Package Default Information**
   Each package should have a `$package.lua` file that contains the following
   template (using GCC as an example):
```
--
-- Package defaults

local pkg = {}

pkg.display_name = "GNU Compiler Collection"
pkg.category     = "development"
pkg.keywords     = "compiler"
pkg.url          = "http://gcc.gnu.org/"
pkg.license      = "GPL"
pkg.description  = "GNU compiler collection"
pkg.help         = [[
This module loads the GNU Compiler collection, providing:
  C:        gcc
  C++:      g++
  Fortran:  gfortran
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers.
]]

return pkg
```

10. **Modules Data Cache**
   This directory contains all the internal lmod cache data. 
