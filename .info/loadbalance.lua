--
-- Package defaults

local pkg = {}

pkg.display_name = "Serial Loadbalance"
pkg.category     = "program"
pkg.keywords     = "tools"
pkg.url          = "https://github.com/ResearchComputing/lb"
pkg.license      = "GPL"
pkg.description  = "Loadbalance serial porgrams"
pkg.help         = [[
This module loads the load balancer, 
  Executable:         lb
This program will run multiple serial jobs concurrently
under MPI.

For more information on the individual programs please
refer to the man page.
]]

return pkg
