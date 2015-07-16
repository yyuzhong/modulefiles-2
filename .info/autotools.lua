--
-- Package defaults

local pkg = {}

pkg.display_name = "GNU Autotools"
pkg.category     = "development"
pkg.keywords     = "tools"
pkg.url          = "http://www.gnu.org/"
pkg.license      = "GPL"
pkg.description  = "GNU autoconf, automake & libtool"
pkg.help         = [[
This module loads the GNU Autotools collection, providing:
  autoconf
  automake
  libtool
  m4
  autoconf-archive

Autoconf is an extensible package of M4 macros that produce shell scripts
to automatically configure software source code packages. These scripts
can adapt the packages to many kinds of UNIX-like systems without manual
user intervention. Autoconf creates a configuration script for a package
from a template file that lists the operating system features that the
package can use, in the form of M4 macro calls.

Automake is a tool for automatically generating Makefile.ins from files
called Makefile.am. Each Makefile.am is basically a series of make
variable definitions1, with rules being thrown in occasionally. The
generated Makefile.ins are compliant with the GNU Makefile standards.

GNU libtool is a generic library support script. Libtool hides the
complexity of using shared libraries behind a consistent, portable
interface.
]]

return pkg
