--
-- Package defaults

local pkg = {}

pkg.display_name = "GRIB API"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "https://software.ecmwf.int/wiki/display/GRIB/Home"
pkg.license      = "Apache License"
pkg.description  = "ECMWF GRIB API"
pkg.help         = [[
The ECMWF GRIB API is an application program interface accessible from
C, FORTRAN and Python programs developed for encoding and decoding WMO
FM-92 GRIB edition 1 and edition 2 messages. A useful set of command
line tools is also provided to give quick access to GRIB messages.
]]

return pkg
