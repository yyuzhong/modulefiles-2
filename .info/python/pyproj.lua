--
-- Package defaults

local pkg = {}

pkg.display_name = "pyproj"
pkg.category     = "development"
pkg.keywords     = "language"
pkg.url          = "http://jswhit.github.io/pyproj/"
pkg.license      = "BSD"
pkg.description  = "Python Programming Language"
pkg.help         = [[
Cython wrapper to provide python interfaces to PROJ.4
(http://trac.osgeo.org/proj/) functions.

Performs cartographic transformations and geodetic computations.

The Proj class can convert from geographic (longitude,latitude) to
native map projection (x,y) coordinates and vice versa, or from one map
projection coordinate system directly to another. The module variable
pj_list is a dictionary containing all the available projections and
their descriptions.

The Geod class can perform forward and inverse geodetic, or Great Circle,
computations. The forward computation involves determining latitude,
longitude and back azimuth of a terminus point given the latitude and
longitude of an initial point, plus azimuth and distance. The inverse
computation involves determining the forward and back azimuths and
distance given the latitudes and longitudes of an initial and terminus
point.
]]

return pkg
