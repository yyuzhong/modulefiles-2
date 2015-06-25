--
-- Package defaults

local pkg = {}

pkg.display_name = "hdfeos5"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://hdfeos.org"
pkg.license      = "BSD-like"
pkg.description  = "HDF5 EOS Library"
pkg.help         = [[
HDF is the prescribed format for standard data products that are derived
from EOS missions. HDF-EOS (Hierarchical Data Format - Earth Observing
System) is a self-describing file format for transfer of various types
of data between different machines based upon HDF. HDF-EOS is a standard
format to store data collected from EOS satellites: Terra, Aqua and Aura.
]]

return pkg
