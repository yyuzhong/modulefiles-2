--
-- Package defaults

local pkg = {}

pkg.display_name = "valgrind"
pkg.category     = "development"
pkg.keywords     = "toolkit"
pkg.url          = "http://www.valgrind.org"
pkg.license      = "GPL"
pkg.description  = "Valgrind"
pkg.help         = [[
Valgrind is an instrumentation framework for building dynamic analysis
tools. There are Valgrind tools that can automatically detect many memory
management and threading bugs, and profile your programs in detail. You
can also use Valgrind to build new tools. 
]]

return pkg
