--
-- Package defaults

local pkg = {}

pkg.display_name = "h5py"
pkg.category     = "development"
pkg.keywords     = "language"
pkg.url          = "http://www.h5py.org/"
pkg.license      = "BSD"
pkg.description  = "Python Programming Language"
pkg.help         = [[
The h5py package provides both a high- and low-level interface to the
HDF5 library from Python. The low-level interface is intended to be
a complete wrapping of the HDF5 API, while the high-level component
supports access to HDF5 files, datasets and groups using established
Python and NumPy concepts. 
]]

return pkg
