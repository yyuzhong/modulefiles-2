--
-- Package defaults

local pkg = {}

pkg.display_name = "gdal"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://www.gdal.org/"
pkg.license      = "MIT"
pkg.description  = "GDAL Library"
pkg.help         = [[
GDAL (Geospatial Data Abstraction Library) is a translator library for
raster and vector geospatial data formats that is released under an X/MIT
style Open Source license by the Open Source Geospatial Foundation. As
a library, it presents a single raster abstract data model and vector
abstract data model to the calling application for all supported
formats. It also comes with a variety of useful commandline utilities
for data translation and processing.
]]

return pkg
