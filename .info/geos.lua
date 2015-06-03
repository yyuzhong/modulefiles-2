--
-- Package defaults

local pkg = {}

pkg.display_name = "geos"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "https://trac.osgeo.org/geos/wiki"
pkg.license      = "LGPL"
pkg.description  = "GEOS Library"
pkg.help         = [[
GEOS (Geometry Engine - Open Source) is a C++ port of the Java Topology
Suite (JTS). As such, it aims to contain the complete functionality
of JTS in C++. This includes all the OpenGIS Simple Features for SQL
spatial predicate functions and spatial operators, as well as specific
JTS enhanced topology functions.
]]

return pkg
