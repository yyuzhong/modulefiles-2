--
-- Package defaults

local pkg = {}

pkg.display_name = "GNU Scientific Library"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://www.gnu.org/software/gsl/"
pkg.license      = "GPL"
pkg.description  = "GNU numerical library"
pkg.help         = [[
The GNU Scientific Library (GSL) is a numerical library for C and C++
programmers. 

The library provides a wide range of mathematical routines such as random
number generators, special functions and least-squares fitting. There
are over 1000 functions in total with an extensive test suite.

The complete range of subject areas covered by the library includes,

	Complex Numbers				Roots of Polynomials
	Special Functions			Vectors and Matrices
	Permutations				Sorting
	BLAS Support				Linear Algebra
	Eigensystems				Fast Fourier Transforms
	Quadrature					Random Numbers
	Quasi-Random Sequences		Random Distributions
	Statistics					Histograms
	N-Tuples					Monte Carlo Integration
	Simulated Annealing			Differential Equations
	Interpolation				Numerical Differentiation
	Chebyshev Approximation		Series Acceleration
	Minimization				Least-Squares Fitting
	Physical Constants			IEEE Floating-Point
	Discrete Hankel Transforms	Root-Finding
	Discrete Wavelet Transforms	Basis splines
]]

return pkg
