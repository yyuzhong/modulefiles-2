--
-- Package defaults

local pkg = {}

pkg.display_name = "nco"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://nco.sourceforge.net/"
pkg.license      = "BSD-like"
pkg.description  = "netCDF Operator"
pkg.help         = [[
The NCO toolkit manipulates and analyzes data stored in netCDF-accessible
formats, including DAP, HDF4, and HDF5. It exploits the geophysical
expressivity of many CF (Climate & Forecast) metadata conventions,
the flexible description of physical dimensions translated by UDUnits,
the network transparency of OPeNDAP, the storage features (e.g.,
compression, chunking, groups) of HDF (the Hierarchical Data Format),
and many powerful mathematical and statistical algorithms of GSL (the
GNU Scientific Library). NCO is fast, powerful, and free. 
]]

return pkg
