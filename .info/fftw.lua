--
-- Package defaults

local pkg = {}

pkg.display_name = "fftw"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://www.fftw.org/"
pkg.license      = "GPL"
pkg.description  = "Fastest Fourier Transform in the West"
pkg.help         = [[
FFTW is a C subroutine library for computing the discrete Fourier
transform (DFT) in one or more dimensions, of arbitrary input size,
and of both real and complex data (as well as of even/odd data, i.e. the
discrete cosine/sine transforms or DCT/DST).
]]

return pkg
