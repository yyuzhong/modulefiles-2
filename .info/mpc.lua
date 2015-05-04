--
-- Package defaults

local pkg = {}

pkg.display_name = "GNU MPC Library"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://www.multiprecision.org/"
pkg.license      = "GPL"
pkg.description  = "GNU Multiple Precision Complex Library"
pkg.help         = [[
Gnu Mpc is a C library for the arithmetic of complex numbers with
arbitrarily high precision and correct rounding of the result. It extends
the principles of the IEEE-754 standard for fixed precision real floating
point numbers to complex numbers, providing well-defined semantics for
every operation. At the same time, speed of operation at high precision
is a major design goal. 
]]

return pkg
