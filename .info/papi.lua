--
-- Package defaults

local pkg = {}

pkg.display_name = "PAPI"
pkg.category     = "program"
pkg.keywords     = "tools"
pkg.url          = "http://icl.cs.utk.edu/papi"
pkg.license      = "BSD"
pkg.description  = "Performance Application Programming Interface"
pkg.help         = [[
PAPI provides the tool designer and application engineer with a consistent
interface and methodology for use of the performance counter hardware
found in most major microprocessors. PAPI enables software engineers to
see, in near real time, the relation between software performance and
processor events.

In addition Component PAPI provides access to a collection of components
that expose performance measurement opportunites across the hardware
and software stack. 
]]

return pkg
