--
-- Package defaults

local pkg = {}

pkg.display_name = "Intel MKL"
pkg.category     = "development"
pkg.keywords     = "compiler"
pkg.url          = "http://intel.com"
pkg.license      = "Commerical"
pkg.description  = "Intel Math Kernel Library"
pkg.help         = [[
Intel Math Kernel Library accelerates math processing
routines that increase application performance and reduce development
time.

MKL includes highly vectorized and threaded Linear Algebra, Fast Fourier
Transforms (FFT), Vector Math and Statistics functions.
]]
return pkg
