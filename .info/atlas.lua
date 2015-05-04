--
-- Package defaults

local pkg = {}

pkg.display_name = "ATLAS"
pkg.category     = "development"
pkg.keywords     = "linear algebra"
pkg.url          = "http://math-atlas.sourceforge.net/"
pkg.license      = "BSD"
pkg.description  = "Automatically Tuned Linear Algebra Software"
pkg.help         = [[
The ATLAS (Automatically Tuned Linear Algebra Software) project is an
ongoing research effort focusing on applying empirical techniques in
order to provide portable performance. At present, it provides C and
Fortran77 interfaces to a portably efficient BLAS implementation, as
well as a few routines from LAPACK.

The following environment variables will be set:
	CURC_ATLAS_ROOT
	CURC_ATLAS_INC
	CURC_ATLAS_LIB
for the location of the ATLAS installation, include and library
directories.

To use them in compiling a program with ATLAS one would:
	$CC -I${CURC_ATLAS_INC} -o test test.c -L${CURC_ATLAS_LIB} -latlas
]]

return pkg
