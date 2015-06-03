--
-- Package defaults

local pkg = {}

pkg.display_name = "snow"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "cran.r-project.org/package=snow"
pkg.license      = "GPL"
pkg.description  = "Simple Network of Workstations"
pkg.help         = [[
The snow (Simple Network of Workstations) package implements a simple
mechanism for using a collection of workstations or a Beowulf cluster for
``embarrassingly parallel'' computations in R. 
]]

return pkg
