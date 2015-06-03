--
-- Package defaults

local pkg = {}

pkg.display_name = "PROJ.4"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://proj.osgeo.org/"
pkg.license      = "MIT"
pkg.description  = "PROJ.4 Library"
pkg.help         = [[
PROJ.4 is a library for performing conversions between cartographic
projections.

The library is based on the work of Gerald Evenden at the
USGS, but is now an OSGeo project maintained by Frank Warmerdam.

The library also ships with executables for performing these
transformations from the command line. 
]]

return pkg
