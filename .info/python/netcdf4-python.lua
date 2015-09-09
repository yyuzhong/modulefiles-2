--
-- Package defaults

local pkg = {}

pkg.display_name = "netcdf4-python"
pkg.category     = "development"
pkg.keywords     = "language"
pkg.url          = "https://github.com/Unidata/netcdf4-python"
pkg.license      = "BSD"
pkg.description  = "Python Module"
pkg.help         = [[
netcdf4-python is a Python interface to the netCDF C library.

netCDF version 4 has many features not found in earlier versions of
the library and is implemented on top of HDF5. This module can read and
write files in both the new netCDF 4 and the old netCDF 3 format, and can
create files that are readable by HDF5 clients. The API modelled after
Scientific.IO.NetCDF, and should be familiar to users of that module.
]]

return pkg
