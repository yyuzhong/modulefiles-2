--
-- Package defaults

local pkg = {}

pkg.display_name = "GNU Multiple Precision"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "https://gmplib.org/"
pkg.license      = "GPL"
pkg.description  = "GNU Multiple Precision Arithmetic Library"
pkg.help         = [[
GMP is a free library for arbitrary precision arithmetic, operating on
signed integers, rational numbers, and floating-point numbers. There
is no practical limit to the precision except the ones implied by the
available memory in the machine GMP runs on. GMP has a rich set of
functions, and the functions have a regular interface. 
]]

return pkg
