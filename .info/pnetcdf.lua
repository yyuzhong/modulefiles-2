--
-- Package defaults

local pkg = {}

pkg.display_name = "pnetcdf"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://cucis.ece.northwestern.edu/projects/PnetCDF/"
pkg.license      = "BSD-like"
pkg.description  = "Parallel NetCDF Library"
pkg.help         = [[
Parallel netCDF (PnetCDF), a collaborative work of Northwestern University
and Argonne National Laboratory, is a parallel I/O library for accessing
NetCDF files in CDF and CDF-2 formats ¹. In addition, PnetCDF supports
the CDF-5 file format, an extension of CDF-2, that allows users to
define large dimensions, attributes, variables (> 2B array elements).

NetCDF supports parallel I/O starting from version 4, but the file
format is restricted to HDF5. PnetCDF is currently the only choice to
perform parallel I/O on files in classic formats (CDF-1 and 2). 
]]

return pkg
