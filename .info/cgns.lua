--
-- Package defaults

local pkg = {}

pkg.display_name = "CGNS"
pkg.category     = "development"
pkg.keywords     = "library"
pkg.url          = "http://cgns.github.io/"
pkg.license      = "LGPL"
pkg.description  = "CGNS Library"
pkg.help         = [[
The CFD General Notation System (CGNS) provides a general, portable, and
extensible standard for the storage and retrieval of computational fluid
dynamics (CFD) analysis data. It consists of a collection of conventions,
and free and open software implementing those conventions. It is
self-descriptive, machine-independent, well-documented, and administered
by an international steering committee. It is also an American Institute
of Aeronautics and Astronautics (AIAA) Recommended Practice. 

The system consists of two parts: (1) a standard format for recording
the data, and (2) software that reads, writes, and modifies data in
that format.  The format is a conceptual entity established by the
documentation; the software is a physical product supplied to enable
developers to access and produce data recorded in that format.

The CGNS system is designed to facilitate the exchange of data
between sites and applications, and to help stabilize the archiving of
aerodynamic data.  The data are stored in a compact, binary format and
are accessible through a complete and extensible library of functions.
The API (Application Program Interface) is platform independent and can
be easily implemented in C, C++, Fortran and Fortran90 applications.
]]

return pkg
