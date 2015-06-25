--
-- Package defaults

local pkg = {}

pkg.display_name = "numexpr"
pkg.category     = "development"
pkg.keywords     = "language"
pkg.url          = "https://github.com/pydata/numexpr"
pkg.license      = "MIT"
pkg.description  = "Python Programming Language"
pkg.help         = [[
Numexpr is a fast numerical expression evaluator for NumPy. With it,
expressions that operate on arrays (like "3*a+4*b") are accelerated and
use less memory than doing the same calculation in Python.

In addition, its multi-threaded capabilities can make use of all your
cores, which may accelerate computations, most specially if they are
not memory-bounded (e.g. those using transcendental functions).

Last but not least, numexpr can make use of Intel's VML (Vector Math
Library, normally integrated in its Math Kernel Library, or MKL). This
allows further acceleration of transcendent expressions.
]]

return pkg
