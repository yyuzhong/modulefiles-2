--
-- Package defaults

local pkg = {}

pkg.display_name = "rgdal"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "cran.r-project.org/package=rgdal"
pkg.license      = "GPL"
pkg.description  = "GDAL in R"
pkg.help         = [[
Provides bindings to Frank Warmerdam's Geospatial Data Abstraction Library
(GDAL) (>= 1.6.3, < 2) and access to projection/transformation operations
from the PROJ.4 library. 
]]

return pkg
