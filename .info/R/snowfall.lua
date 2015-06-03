--
-- Package defaults

local pkg = {}

pkg.display_name = "snowfall"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "cran.r-project.org/package=snowfall"
pkg.license      = "GPL"
pkg.description  = "snowfall: Easier cluster computing (based on snow)"
pkg.help         = [[
Usability wrapper around snow for easier development of parallel R
programs. This package offers e.g. extended error checks, and additional
functions. All functions work in sequential mode, too, if no cluster is
present or wished. Package is also designed as connector to the cluster
management tool sfCluster, but can also used without it.

]]

return pkg
