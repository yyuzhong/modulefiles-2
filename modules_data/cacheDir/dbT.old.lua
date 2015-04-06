timestampFn = {
  "/curc/tools/x86_64/rh6/modules/modules_data/system.txt",
}
dbT = {
  ["README.md"] = {
    ["/curc/tools/x86_64/rh6/modules/README.md"] = {
      ["epoch"] = 1427840616,
      ["full"] = "README.md",
      ["full_lower"] = "readme.md",
      ["markedDefault"] = false,
      ["name"] = "README.md",
      ["name_lower"] = "readme.md",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/README.md",
    },
  },
  ["compilers/gcc"] = {
    ["/curc/tools/x86_64/rh6/modules/compilers/gcc/4.9.2.lua"] = {
      ["Description"] = "GNU: This module loads the GNU Compilers",
      ["epoch"] = 1427840748,
      ["full"] = "compilers/gcc/4.9.2",
      ["full_lower"] = "compilers/gcc/4.9.2",
      ["help"] = [[
This module loads the GNU Compilers version 4.9.2:
  C:        gcc
  C++:      g++
  Fortran:  gfortran
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/tools/x86_64/rh6/software/compilers/gcc/4.9.2/lib"] = 1,
        ["/curc/tools/x86_64/rh6/software/compilers/gcc/4.9.2/lib64"] = 1,
      },
      ["markedDefault"] = true,
      ["name"] = "compilers/gcc",
      ["name_lower"] = "compilers/gcc",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/compilers/gcc/4.9.2.lua",
      pathA = {
        ["/curc/tools/x86_64/rh6/software/compilers/gcc/4.9.2/bin"] = 1,
      },
      whatis = {
        "Description: GNU: This module loads the GNU Compilers",
      },
    },
  },
  ["compilers/intel"] = {
    ["/curc/tools/x86_64/rh6/modules/compilers/intel/15.0.1.lua"] = {
      ["Description"] = "Intel: This module loads the Intel Compilers",
      ["epoch"] = 1427843653,
      ["full"] = "compilers/intel/15.0.1",
      ["full_lower"] = "compilers/intel/15.0.1",
      ["help"] = [[
This module loads the Intel Compilers version 15.0.1:
  C:        icc
  C++:      icpc
  Fortran:  ifort
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      ["markedDefault"] = true,
      ["name"] = "compilers/intel",
      ["name_lower"] = "compilers/intel",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/compilers/intel/15.0.1.lua",
      propT = {
        arch = {
          ["mic"] = 1,
        },
      },
      whatis = {
        "Description: Intel: This module loads the Intel Compilers",
      },
    },
  },
  ["compilers/pgi"] = {
    ["/curc/tools/x86_64/rh6/modules/compilers/pgi/14.4.lua"] = {
      ["Description"] = "PGI: This module loads the Portland Group Compilers",
      ["epoch"] = 1427840616,
      ["full"] = "compilers/pgi/14.4",
      ["full_lower"] = "compilers/pgi/14.4",
      ["help"] = [[
This module loads the PGI Compilers version 14.4:
  C:        pgcc
  C++:      pgCC
  Fortran:  pgfortran
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/tools/x_86_64/rh6/pgi/14.4/linux86-64/14.4/lib"] = 1,
        ["/curc/tools/x_86_64/rh6/pgi/14.4/linux86-64/14.4/libso"] = 1,
      },
      ["markedDefault"] = true,
      ["name"] = "compilers/pgi",
      ["name_lower"] = "compilers/pgi",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/compilers/pgi/14.4.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/pgi/14.4/linux86-64/14.4/bin"] = 1,
      },
      whatis = {
        "Description: PGI: This module loads the Portland Group Compilers",
      },
    },
  },
  ["idep/allinea"] = {
    ["/curc/tools/x86_64/rh6/modules/idep/allinea/4.2.2.lua"] = {
      ["Description"] = "Allinea: This module loads the Allinea tools",
      ["epoch"] = 1427840616,
      ["full"] = "idep/allinea/4.2.2",
      ["full_lower"] = "idep/allinea/4.2.2",
      ["help"] = [[
This module loads the Allinea tools version 4.2.2:
  Debugger:           ddt
  Profiling:          map
For more information on the individual programs please
refer to the user guide within the doc directory.

]],
      lpathA = {
        ["/curc/tools/x_86_64/rh6/idep/allinea/4.2.2/lib"] = 1,
        ["/curc/tools/x_86_64/rh6/idep/allinea/4.2.2/libexec"] = 1,
      },
      ["markedDefault"] = true,
      ["name"] = "idep/allinea",
      ["name_lower"] = "idep/allinea",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/allinea/4.2.2.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/idep/allinea/4.2.2/bin"] = 1,
      },
      whatis = {
        "Description: Allinea: This module loads the Allinea tools",
      },
    },
    ["/curc/tools/x86_64/rh6/modules/idep/allinea/5.0.lua"] = {
      ["Description"] = "Allinea: This module loads the Allinea tools",
      ["epoch"] = 1427840616,
      ["full"] = "idep/allinea/5.0",
      ["full_lower"] = "idep/allinea/5.0",
      ["help"] = [[
This module loads the Allinea tools version 5.0:
  Debugger:           ddt
  Profiling:          map
For more information on the individual programs please
refer to the user guide within the doc directory.

]],
      lpathA = {
        ["/curc/tools/x_86_64/rh6/idep/allinea/5.0/lib"] = 1,
        ["/curc/tools/x_86_64/rh6/idep/allinea/5.0/libexec"] = 1,
      },
      ["markedDefault"] = false,
      ["name"] = "idep/allinea",
      ["name_lower"] = "idep/allinea",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/allinea/5.0.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/idep/allinea/5.0/bin"] = 1,
      },
      whatis = {
        "Description: Allinea: This module loads the Allinea tools",
      },
    },
  },
  ["idep/jpeglib"] = {
    ["/curc/tools/x86_64/rh6/modules/idep/jpeglib/9a.lua"] = {
      ["Description"] = "jpeglib: This module loads the jpeg library",
      ["epoch"] = 1427840616,
      ["full"] = "idep/jpeglib/9a",
      ["full_lower"] = "idep/jpeglib/9a",
      ["help"] = [[
This module loads the jpeg library9a:
For more information please refer to the man page for zlib.
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/tools/x_86_64/rh6/idep/jpeglib/9a/lib"] = 1,
      },
      ["markedDefault"] = false,
      ["name"] = "idep/jpeglib",
      ["name_lower"] = "idep/jpeglib",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/jpeglib/9a.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/idep/jpeglib/9a/bin"] = 1,
      },
      whatis = {
        "Description: jpeglib: This module loads the jpeg library",
      },
    },
  },
  ["idep/loadbalance"] = {
    ["/curc/tools/x86_64/rh6/modules/idep/loadbalance/0.1.lua"] = {
      ["Description"] = "loadblance: This module loads the serial load balancer",
      ["epoch"] = 1427840616,
      ["full"] = "idep/loadbalance/0.1",
      ["full_lower"] = "idep/loadbalance/0.1",
      ["help"] = [[
This module loads the load balancer version 0.1:
  Executable:         lb
This program will run multiple serial jobs concurrently
under MPI.

For more information on the individual programs please
refer to the man page.

]],
      ["markedDefault"] = true,
      ["name"] = "idep/loadbalance",
      ["name_lower"] = "idep/loadbalance",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/loadbalance/0.1.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/idep/loadbalance/0.1/bin"] = 1,
      },
      whatis = {
        "Description: loadblance: This module loads the serial load balancer",
      },
    },
  },
  ["idep/matlab"] = {
    ["/curc/tools/x86_64/rh6/modules/idep/matlab/2013b.lua"] = {
      ["Description"] = "Matlab: This module loads Matlab",
      ["epoch"] = 1427840616,
      ["full"] = "idep/matlab/2013b",
      ["full_lower"] = "idep/matlab/2013b",
      ["help"] = [[
This module loads Matlab version 2013b:
For more information please refer to the website
http://www.mathworks.com/products/matlab/

]],
      ["markedDefault"] = false,
      ["name"] = "idep/matlab",
      ["name_lower"] = "idep/matlab",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/matlab/2013b.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/idep-matlab-2013b/bin"] = 1,
      },
      whatis = {
        "Description: Matlab: This module loads Matlab",
      },
    },
    ["/curc/tools/x86_64/rh6/modules/idep/matlab/2014a.lua"] = {
      ["Description"] = "Matlab: This module loads Matlab",
      ["epoch"] = 1427840616,
      ["full"] = "idep/matlab/2014a",
      ["full_lower"] = "idep/matlab/2014a",
      ["help"] = [[
This module loads Matlab version 2014a:
For more information please refer to the website
http://www.mathworks.com/products/matlab/

]],
      ["markedDefault"] = false,
      ["name"] = "idep/matlab",
      ["name_lower"] = "idep/matlab",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/matlab/2014a.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/idep-matlab-2014a/bin"] = 1,
      },
      whatis = {
        "Description: Matlab: This module loads Matlab",
      },
    },
    ["/curc/tools/x86_64/rh6/modules/idep/matlab/2014b.lua"] = {
      ["Description"] = "Matlab: This module loads Matlab",
      ["epoch"] = 1427840616,
      ["full"] = "idep/matlab/2014b",
      ["full_lower"] = "idep/matlab/2014b",
      ["help"] = [[
This module loads Matlab version 2014b:
For more information please refer to the website
http://www.mathworks.com/products/matlab/

]],
      ["markedDefault"] = true,
      ["name"] = "idep/matlab",
      ["name_lower"] = "idep/matlab",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/matlab/2014b.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/idep-matlab-2014b/bin"] = 1,
      },
      whatis = {
        "Description: Matlab: This module loads Matlab",
      },
    },
  },
  ["idep/slurm"] = {
    ["/curc/tools/x86_64/rh6/modules/idep/slurm/14.03.7.lua"] = {
      ["Description"] = "SLURM: This module loads the SLURM scheduler",
      ["epoch"] = 1427840616,
      ["full"] = "idep/slurm/14.03.7",
      ["full_lower"] = "idep/slurm/14.03.7",
      ["help"] = [[
This module loads the SLURM scheduler version 14.03.7:
  Job submission:     sbatch / salloc / sinteractive / srun
  Information:        squeue / sinfo
  Cancelation:        scancel
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/slurm/idep/slurm/14.03.7/lib"] = 1,
        ["/curc/slurm/idep/slurm/14.03.7/lib64"] = 1,
      },
      ["markedDefault"] = false,
      ["name"] = "idep/slurm",
      ["name_lower"] = "idep/slurm",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/slurm/14.03.7.lua",
      pathA = {
        ["/curc/slurm/idep/slurm/14.03.7/bin"] = 1,
      },
      whatis = {
        "Description: SLURM: This module loads the SLURM scheduler",
      },
    },
    ["/curc/tools/x86_64/rh6/modules/idep/slurm/14.03.9.lua"] = {
      ["Description"] = "SLURM: This module loads the SLURM scheduler",
      ["epoch"] = 1427840616,
      ["full"] = "idep/slurm/14.03.9",
      ["full_lower"] = "idep/slurm/14.03.9",
      ["help"] = [[
This module loads the SLURM scheduler version 14.03.9:
  Job submission:     sbatch / salloc / sinteractive / srun
  Information:        squeue / sinfo
  Cancelation:        scancel
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/slurm/idep/slurm/14.03.9/lib"] = 1,
        ["/curc/slurm/idep/slurm/14.03.9/lib64"] = 1,
      },
      ["markedDefault"] = true,
      ["name"] = "idep/slurm",
      ["name_lower"] = "idep/slurm",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/slurm/14.03.9.lua",
      pathA = {
        ["/curc/slurm/idep/slurm/14.03.9/bin"] = 1,
      },
      propT = {
        lmod = {
          ["sticky"] = 1,
        },
      },
      whatis = {
        "Description: SLURM: This module loads the SLURM scheduler",
      },
    },
  },
  ["idep/stdenv"] = {
    ["/curc/tools/x86_64/rh6/modules/idep/stdenv.lua"] = {
      ["epoch"] = 1427840616,
      ["full"] = "idep/stdenv",
      ["full_lower"] = "idep/stdenv",
      ["markedDefault"] = false,
      ["name"] = "idep/stdenv",
      ["name_lower"] = "idep/stdenv",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/stdenv.lua",
    },
  },
  ["idep/szip"] = {
    ["/curc/tools/x86_64/rh6/modules/idep/szip/2.1.lua"] = {
      ["Description"] = "szip: This module loads the szip libaray",
      ["epoch"] = 1427840616,
      ["full"] = "idep/szip/2.1",
      ["full_lower"] = "idep/szip/2.1",
      ["help"] = [[
This module loads the szip compression library version 2.1:
For more information please refer to the website:
http://www.hdfgroup.org/doc_resource/SZIP/

]],
      ["markedDefault"] = false,
      ["name"] = "idep/szip",
      ["name_lower"] = "idep/szip",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/szip/2.1.lua",
      whatis = {
        "Description: szip: This module loads the szip libaray",
      },
    },
  },
  ["idep/zlib"] = {
    ["/curc/tools/x86_64/rh6/modules/idep/zlib/1.2.8.lua"] = {
      ["Description"] = "zlib: This module loads the zlib library",
      ["epoch"] = 1427840616,
      ["full"] = "idep/zlib/1.2.8",
      ["full_lower"] = "idep/zlib/1.2.8",
      ["help"] = [[
This module loads the zlib compression library1.2.8:
For more information please refer to the man page for zlib.
refer to the man page for the individual compilers. 

]],
      ["markedDefault"] = false,
      ["name"] = "idep/zlib",
      ["name_lower"] = "idep/zlib",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/idep/zlib/1.2.8.lua",
      whatis = {
        "Description: zlib: This module loads the zlib library",
      },
    },
  },
  ["modules_data/cacheDir"] = {
    ["/curc/tools/x86_64/rh6/modules/modules_data/cacheDir/dbT.new.lua"] = {
      ["epoch"] = 1427852636,
      ["full"] = "modules_data/cacheDir/dbT.new",
      ["full_lower"] = "modules_data/cachedir/dbt.new",
      ["markedDefault"] = false,
      ["name"] = "modules_data/cacheDir",
      ["name_lower"] = "modules_data/cachedir",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/modules_data/cacheDir/dbT.new.lua",
    },
    ["/curc/tools/x86_64/rh6/modules/modules_data/cacheDir/moduleT.lua"] = {
      ["epoch"] = 1427852636,
      ["full"] = "modules_data/cacheDir/moduleT",
      ["full_lower"] = "modules_data/cachedir/modulet",
      ["markedDefault"] = false,
      ["name"] = "modules_data/cacheDir",
      ["name_lower"] = "modules_data/cachedir",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/modules_data/cacheDir/moduleT.lua",
    },
    ["/curc/tools/x86_64/rh6/modules/modules_data/cacheDir/moduleT.luac_"] = {
      ["epoch"] = 1427852636,
      ["full"] = "modules_data/cacheDir/moduleTc_",
      ["full_lower"] = "modules_data/cachedir/moduletc_",
      ["markedDefault"] = false,
      ["name"] = "modules_data/cacheDir",
      ["name_lower"] = "modules_data/cachedir",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/modules_data/cacheDir/moduleT.luac_",
    },
  },
  ["modules_data/system.txt"] = {
    ["/curc/tools/x86_64/rh6/modules/modules_data/system.txt"] = {
      ["epoch"] = 1427852636,
      ["full"] = "modules_data/system.txt",
      ["full_lower"] = "modules_data/system.txt",
      ["markedDefault"] = false,
      ["name"] = "modules_data/system.txt",
      ["name_lower"] = "modules_data/system.txt",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/modules_data/system.txt",
    },
  },
  ["mpis/gnu/4.9.2/impi"] = {
    ["/curc/tools/x86_64/rh6/modules/mpis/gnu/4.9.2/impi/4.1.30.lua"] = {
      ["Description"] = "IMPI: This module loads the Intel MPI Library",
      ["epoch"] = 1427840616,
      ["full"] = "mpis/gnu/4.9.2/impi/4.1.30",
      ["full_lower"] = "mpis/gnu/4.9.2/impi/4.1.30",
      ["help"] = [[
This module loads the Intel MPI version 4.1.30:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/tools/x_86_64/rh6/intel/13.0.0/impi/lib"] = 1,
      },
      ["markedDefault"] = false,
      ["name"] = "mpis/gnu/4.9.2/impi",
      ["name_lower"] = "mpis/gnu/4.9.2/impi",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/mpis/gnu/4.9.2/impi/4.1.30.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/intel/13.0.0/impi/bin"] = 1,
      },
      whatis = {
        "Description: IMPI: This module loads the Intel MPI Library",
      },
    },
    ["/curc/tools/x86_64/rh6/modules/mpis/gnu/4.9.2/impi/5.0.2.lua"] = {
      ["Description"] = "IMPI: This module loads the Intel MPI Library",
      ["epoch"] = 1427840616,
      ["full"] = "mpis/gnu/4.9.2/impi/5.0.2",
      ["full_lower"] = "mpis/gnu/4.9.2/impi/5.0.2",
      ["help"] = [[
This module loads the Intel MPI version 5.0.2:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/tools/x_86_64/rh6/intel/15.0.1/impi_5.0.2/lib"] = 1,
      },
      ["markedDefault"] = true,
      ["name"] = "mpis/gnu/4.9.2/impi",
      ["name_lower"] = "mpis/gnu/4.9.2/impi",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/mpis/gnu/4.9.2/impi/5.0.2.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/intel/15.0.1/impi_5.0.2/bin64"] = 1,
      },
      whatis = {
        "Description: IMPI: This module loads the Intel MPI Library",
      },
    },
  },
  ["mpis/gnu/4.9.2/openmpi"] = {
    ["/curc/tools/x86_64/rh6/modules/mpis/gnu/4.9.2/openmpi/1.8.4.lua"] = {
      ["Description"] = "OpenMPI: This module loads the OpenMPI Library",
      ["epoch"] = 1427852548,
      ["full"] = "mpis/gnu/4.9.2/openmpi/1.8.4",
      ["full_lower"] = "mpis/gnu/4.9.2/openmpi/1.8.4",
      ["help"] = [[
This module loads the OpenMPI version 1.8.4:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/tools/x86_64/rh6/mpis/gnu/4.9.2/openmpi/1.8.4/curc/tools/x86_64/rh6/modules/lib"] = 1,
      },
      ["markedDefault"] = false,
      ["name"] = "mpis/gnu/4.9.2/openmpi",
      ["name_lower"] = "mpis/gnu/4.9.2/openmpi",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/mpis/gnu/4.9.2/openmpi/1.8.4.lua",
      pathA = {
        ["/curc/tools/x86_64/rh6/mpis/gnu/4.9.2/openmpi/1.8.4/curc/tools/x86_64/rh6/modules/bin64"] = 1,
      },
      whatis = {
        "Description: OpenMPI: This module loads the OpenMPI Library",
      },
    },
  },
  ["mpis/intel/13.0.0/impi"] = {
    ["/curc/tools/x86_64/rh6/modules/mpis/intel/13.0.0/impi/4.1.30.lua"] = {
      ["Description"] = "IMPI: This module loads the Intel MPI Library",
      ["epoch"] = 1427840616,
      ["full"] = "mpis/intel/13.0.0/impi/4.1.30",
      ["full_lower"] = "mpis/intel/13.0.0/impi/4.1.30",
      ["help"] = [[
This module loads the Intel MPI version 4.1.30:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/tools/x_86_64/rh6/intel/13.0.0/mpis/intel/13.0.0/impi_4.1.30/lib"] = 1,
      },
      ["markedDefault"] = false,
      ["name"] = "mpis/intel/13.0.0/impi",
      ["name_lower"] = "mpis/intel/13.0.0/impi",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/mpis/intel/13.0.0/impi/4.1.30.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/intel/13.0.0/mpis/intel/13.0.0/impi_4.1.30/bin"] = 1,
      },
      whatis = {
        "Description: IMPI: This module loads the Intel MPI Library",
      },
    },
  },
  ["mpis/intel/13.0.0/openmpi"] = {
    ["/curc/tools/x86_64/rh6/modules/mpis/intel/13.0.0/openmpi/1.8.4.lua"] = {
      ["Description"] = "OpenMPI: This module loads the OpenMPI Library",
      ["epoch"] = 1427840616,
      ["full"] = "mpis/intel/13.0.0/openmpi/1.8.4",
      ["full_lower"] = "mpis/intel/13.0.0/openmpi/1.8.4",
      ["help"] = [[
This module loads the OpenMPI version 1.8.4:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/tools/x_86_64/rh6/mpis/intel/13.0.0/openmpi/1.8.4/curc/tools/x86_64/rh6/modules/lib"] = 1,
      },
      ["markedDefault"] = false,
      ["name"] = "mpis/intel/13.0.0/openmpi",
      ["name_lower"] = "mpis/intel/13.0.0/openmpi",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/mpis/intel/13.0.0/openmpi/1.8.4.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/mpis/intel/13.0.0/openmpi/1.8.4/curc/tools/x86_64/rh6/modules/bin"] = 1,
      },
      whatis = {
        "Description: OpenMPI: This module loads the OpenMPI Library",
      },
    },
  },
  ["mpis/intel/15.0.1/impi"] = {
    ["/curc/tools/x86_64/rh6/modules/mpis/intel/15.0.1/impi/5.0.2.lua"] = {
      ["Description"] = "IMPI: This module loads the Intel MPI Library",
      ["epoch"] = 1427840616,
      ["full"] = "mpis/intel/15.0.1/impi/5.0.2",
      ["full_lower"] = "mpis/intel/15.0.1/impi/5.0.2",
      ["help"] = [[
This module loads the Intel MPI version 5.0.2:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/tools/x_86_64/rh6/intel/15.0.1/mpis/intel/15.0.1/impi_5.0.2/lib"] = 1,
      },
      ["markedDefault"] = false,
      ["name"] = "mpis/intel/15.0.1/impi",
      ["name_lower"] = "mpis/intel/15.0.1/impi",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/mpis/intel/15.0.1/impi/5.0.2.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/intel/15.0.1/mpis/intel/15.0.1/impi_5.0.2/bin64"] = 1,
      },
      whatis = {
        "Description: IMPI: This module loads the Intel MPI Library",
      },
    },
  },
  ["mpis/intel/15.0.1/openmpi"] = {
    ["/curc/tools/x86_64/rh6/modules/mpis/intel/15.0.1/openmpi/1.8.4.lua"] = {
      ["Description"] = "OpenMPI: This module loads the OpenMPI Library",
      ["epoch"] = 1427840616,
      ["full"] = "mpis/intel/15.0.1/openmpi/1.8.4",
      ["full_lower"] = "mpis/intel/15.0.1/openmpi/1.8.4",
      ["help"] = [[
This module loads the OpenMPI version 1.8.4:
  C:        mpicc
  C++:      mpicxx
  Fortran:  mpif90
For more information on the individual compilers and their suboptions
refer to the man page for the individual compilers. 

]],
      lpathA = {
        ["/curc/tools/x_86_64/rh6/mpis/intel/15.0.1/openmpi/1.8.4/curc/tools/x86_64/rh6/modules/lib"] = 1,
      },
      ["markedDefault"] = false,
      ["name"] = "mpis/intel/15.0.1/openmpi",
      ["name_lower"] = "mpis/intel/15.0.1/openmpi",
      parent = {
        "default",
      },
      ["path"] = "/curc/tools/x86_64/rh6/modules/mpis/intel/15.0.1/openmpi/1.8.4.lua",
      pathA = {
        ["/curc/tools/x_86_64/rh6/mpis/intel/15.0.1/openmpi/1.8.4/curc/tools/x86_64/rh6/modules/bin"] = 1,
      },
      whatis = {
        "Description: OpenMPI: This module loads the OpenMPI Library",
      },
    },
  },
}

