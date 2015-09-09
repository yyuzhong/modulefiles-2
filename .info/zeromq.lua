--
-- Package defaults

local pkg = {}

pkg.display_name = "zeromq"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://zeromq.org"
pkg.license      = "LGPL"
pkg.description  = "ZeroMQ message library"
pkg.help         = [[
ZeroMQ (also known as 0MQ, or zmq) looks like an embeddable
networking library but acts like a concurrency framework. It gives
you sockets that carry atomic messages across various transports
like in-process, inter-process, TCP, and multicast. You can connect
sockets N-to-N with patterns like fan-out, pub-sub, task distribution,
and request-reply. It's fast enough to be the fabric for clustered
products. Its asynchronous I/O model gives you scalable multicore
applications, built as asynchronous message-processing tasks. It has
a score of language APIs and runs on most operating systems. ZeroMQ is
from iMatix and is LGPLv3 open source. 
]]

return pkg
