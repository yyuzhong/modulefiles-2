--
-- Package defaults

local pkg = {}

pkg.display_name = "PDT"
pkg.category     = "development"
pkg.keywords     = "instrumentation"
pkg.url          = "https://www.cs.uoregon.edu/research/pdt/home.php"
pkg.license      = "Public Domain"
pkg.description  = "Program Database Toolkit"
pkg.help         = [[
Many tasks in an integrated programming environment require access to
program information for their implementation. Program Database Toolkit
(PDT) is a framework for analyzing source code written in several
programming languages and for making rich program knowledge accessible to
developers of static and dynamic analysis tools. PDT implements a standard
program representation, the program database (PDB), that can be accessed
in a uniform way through a class library supporting common PDB operations.
]]

return pkg
