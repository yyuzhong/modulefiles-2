--
-- Package defaults

local pkg = {}

pkg.display_name = "ncview"
pkg.category     = "application"
pkg.keywords     = "x11"
pkg.url          = "http://meteora.ucsd.edu/~pierce/ncview_home_page.html"
pkg.license      = "GPL"
pkg.description  = "NetCDF X11 Viewer"
pkg.help         = [[
Ncview is a visual browser for netCDF format files. Typically you would
use ncview to get a quick and easy, push-button look at your netCDF
files. You can view simple movies of the data, view along various
dimensions, take a look at the actual data values, change color maps,
invert the data.
]]

return pkg
