--
-- Package defaults

local pkg = {}

pkg.display_name = "CUDA tools"
pkg.category     = "development"
pkg.keywords     = "compiler"
pkg.url          = "http://www.nvidia.com/"
pkg.license      = "Commerical"
pkg.description  = "CUDA compiler and libraries"
pkg.help         = [[
This module loads the CUDA toolkit, providing:
  Compiler:           nvcc
For more information on the individual programs please
refer to the user guide within the doc directory.
]]

return pkg
