--
-- Package defaults

local pkg = {}

pkg.display_name = "pygrib"
pkg.category     = "development"
pkg.keywords     = "language"
pkg.url          = "https://github.com/jswhit/pygrib"
pkg.license      = "BSD"
pkg.description  = "Python Module"
pkg.help         = [[
Python module for reading and writing GRIB files (edition 1 and edition
2).

GRIB is the World Meteorological Organization (WMO) standard file format
for the exchange of weather data.

Provides a interfaces for the ECWMF GRIB_API C library and the NCEP
grib2 C library, including command line utilities for listing (grib_list)
and repacking (grib_repack) GRIB files. 
]]

return pkg
