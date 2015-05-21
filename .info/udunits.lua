--
-- Package defaults

local pkg = {}

pkg.display_name = "udunits"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://www.unidata.ucar.edu/software/udunits/"
pkg.license      = "BSD-like"
pkg.description  = "UDUNITS Tools and Library"
pkg.help         = [[
The UDUNITS-2 package provides support for units of physical
quantities. Its three main components are: 
  1) a C library for units of physical quantities;
  2) a utility; for obtaining the definition of a
     unit and for converting numeric values between
     compatible units;
  3) an extensive database of units. 
]]

return pkg
