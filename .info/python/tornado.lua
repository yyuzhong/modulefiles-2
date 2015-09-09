--
-- Package defaults

local pkg = {}

pkg.display_name = "tornado"
pkg.category     = "development"
pkg.keywords     = "language"
pkg.url          = "http://www.tornadoweb.org/"
pkg.license      = "BSD"
pkg.description  = "Python Module"
pkg.help         = [[
Tornado is a Python web framework and asynchronous networking library,
originally developed at FriendFeed. By using non-blocking network I/O,
Tornado can scale to tens of thousands of open connections, making it
ideal for long polling, WebSockets, and other applications that require
a long-lived connection to each user. 
]]

return pkg
