--------------------------------------------------------------------------
-- Lmod SitePackage for CURC.
--------------------------------------------------------------------------
--
--  Lmod is licensed under the terms of the MIT license reproduced below.
--  This means that Lmod is free software and can be used for both academic
--  and commercial purposes at absolutely no cost.
--
--  ----------------------------------------------------------------------
--
--  Copyright (C) 2008-2014 Robert McLay
--
--  Permission is hereby granted, free of charge, to any person obtaining
--  a copy of this software and associated documentation files (the
--  "Software"), to deal in the Software without restriction, including
--  without limitation the rights to use, copy, modify, merge, publish,
--  distribute, sublicense, and/or sell copies of the Software, and to
--  permit persons to whom the Software is furnished to do so, subject
--  to the following conditions:
--
--  The above copyright notice and this permission notice shall be
--  included in all copies or substantial portions of the Software.
--
--  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
--  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
--  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
--  NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
--  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
--  ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
--  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
--  THE SOFTWARE.
--
--------------------------------------------------------------------------

require("strict")
require("sandbox")
require("serializeTbl")
local hook   = require("Hook")
local getenv = os.getenv

-- local Dbg    = require("Dbg")
-- local dbg    = Dbg:dbg()
-- PkgBase = require("PkgBase")
-- Pkg     = PkgBase.build("PkgCURC")

SiteRootDir = "/curc/tools/x86_64/rh6/software"
ModsRootDir = "/curc/tools/x86_64/rh6/modules"
InfoDir     = "/curc/tools/x86_64/rh6/modules/.info"

-- By using the hook.register function, this function "load_hook" is called
-- ever time a module is loaded with the file name and the module name.


------------------------------------------------------------------------
-- Load hook to log to syslog
------------------------------------------------------------------------
function load_hook(t)
   -- the arg t is a table:
   --     t.modFullName:  the module full name: (i.e: gcc/4.9.2)
   --     t.fn:           The file name: (i.e /curc/tools/x86_64/rh6/modules/compilers/gcc/4.9.2.lua)

   if (mode() ~= "load") then return end

   ------------------------------------------------------------------------
   -- Exit out if MPI rank is greater than zero
   ------------------------------------------------------------------------
   local M = {"PMI_RANK", "PMI_ID", "OMPI_COMM_WORLD_RANK",
              "OMPI_MCA_ns_nds_vpid"}
   for i = 1,#M do
      local my_rank = tonumber(getenv(M[i])) or 0
      if (my_rank > 0) then
         return
      end
   end


   ------------------------------------------------------------------------
   -- Log to syslog
   ------------------------------------------------------------------------
   local user  = os.getenv("SLURM_JOB_USER") or os.getenv("USER")
   local jobid = os.getenv("SLURM_JOB_ID") or "unknown"
   local msg   = string.format("user=%s,module=%s,fn=%s,job=%s",
                               user, t.modFullName, t.fn, jobid)
   os.execute("logger -t LMOD -p local0.info " .. msg)
end


------------------------------------------------------------------------
-- Local directory mappings
------------------------------------------------------------------------
local mapT =
{
   grouped = {
      ['/curc/tools/x86_64/rh6/software/lmod/lmod/modulefiles/Core']  = "Lmod Internal Modules",
      ['/curc/tools/x86_64/rh6/modules/idep']                         = "Independent Applications",
      ['/curc/tools/x86_64/rh6/modules/compilers']                    = "Compilers",
      ['/curc/tools/x86_64/rh6/modules/cdep']                         = "Compiler Dependent Applications",
      ['/curc/tools/x86_64/rh6/modules/mpis']                         = "MPI Implementations",
      ['/curc/tools/x86_64/rh6/modules/mdep']                         = "MPI Dependent Applications",
      ['/curc/tools/x86_64/rh6/modules/pydep']                        = "Python Packages",
      ['/curc/tools/x86_64/rh6/modules/rdep']                         = "R Packages",
   },
}

------------------------------------------------------------------------
-- Hook for available to show local directory mappings
------------------------------------------------------------------------
function avail_hook(t)
   local availStyle = masterTbl().availStyle
   local styleT     = mapT[availStyle]
  
   if (not availStyle or availStyle == "system" or styleT == nil) then
      return
   end

   for k,v in pairs(t) do
      for pat,label in pairs(styleT) do
         if (k:find(pat)) then
            t[k] = label
            break
         end
      end
   end
end

------------------------------------------------------------------------
-- Load package defaults
--
-- Input arguments are:
-- 1) level		The level that the package sites at, for example
--              0 - Independent Programs and Compilers
--              1 - Compiler dependent programs
--              2 - Compiler and MPI (or R or Python or ...) programs
-- 2) prefix    A package prefix, if it is different from the default.
--              This can be absolute or relative to SiteRootDir
-- 3) parent    If this package belongs to a encompassing program,
--              for example Rmpi belongs to R. This allows for the 
--              info file to exist in a subdirectory.
------------------------------------------------------------------------
local function loadPkgDefaults(levels, prefix, sub_pkg)
   local pkg = {}
   local status
   local msg
   local whole
   local unpack = (_VERSION == "Lua 5.1") and unpack or table.unpack
   local p_nam
   local p_ver
   
   ------------------------------------------------------------
   -- Fill default values
   pkg.name         = myModuleName()
   pkg.version      = myModuleVersion()
   pkg.id           = myModuleFullName()
   pkg.display_name = pkg.name
   pkg.url          = ""
   pkg.license      = ""
   pkg.category     = ""
   pkg.keywords     = ""
   pkg.description  = ""
   pkg.help         = ""
   
   ------------------------------------------------------------
   -- Build package prefix from modulefile location
   -- hierarchyA() returns a dependency list of 
   --              the package.
   --              i.e. parallel HDF5 would have:
   --              gcc/5.1.0, openmpi/1.8.5
   local hierA      = hierarchyA(pkg.id, levels)

   -- We want to add our package and version,
   -- then reverse this dependency list.
   local a          = {}
   a[#a+1]          = pkg.name
   a[#a+1]          = pkg.version
   for i = levels,1,-1 do
      for v in hierA[i]:split("/") do
         a[#a+1] = v
      end
   end
   pkg.prefix       = pathJoin(SiteRootDir, unpack(a))
   pkg.modpath      = pathJoin(unpack(a))

   ------------------------------------------------------------
   -- We we given a different package prefix
   if prefix then
      if prefix:sub(1,1) == "/" then
         pkg.prefix = prefix
      else
         pkg.prefix = pathJoin(SiteRootDir, prefix)
      end
   end

   ------------------------------------------------------------
   -- If we are a sub package (i.e. numpy)
   if sub_pkg then
      table.remove(a,1) -- remove package name
      table.remove(a,1) -- remove package version
      p_nam = table.remove(a,1) -- parent's name
      p_ver = table.remove(a,1) -- parent's version
      local rest  = pathJoin(unpack(a))
      pkg.prefix = pathJoin(SiteRootDir, p_nam .."_packages", p_ver, rest, pkg.id)
   end
   
	pkgDesc(pkg, p_nam)
	pkgVars(pkg)
	return pkg
end

------------------------------------------------------------------------
-- Set the package description
------------------------------------------------------------------------
function pkgDesc(pkg, parent)
   ------------------------------------------------------------
   -- Read default package description file
   local fn         = pathJoin(InfoDir, parent, pkg.name .. ".lua")
   local f          = io.open(fn)
   local whole      = false
   local status     = false
   local msg        = "Empty file"

   if (f) then
     whole = f:read("*all")
     f:close()
   end
   
   ------------------------------------------------------------
   -- Evaluate string from package description file through
   -- sandbox_run for safety checks.
   
   if (whole) then
     status, msg = sandbox_run(whole)
   end
   
   --if (not status) then
   --  LmodError("Please report to rc-help the error:\n",
   --            "Unable to load file: ", fn, ": ", msg, "\n")
   --end
   
--   if (status) then 
     for k,v in pairs(msg) do
       pkg[k] = v
     end
   -- end
end

------------------------------------------------------------------------
-- Site name hook for env vars
------------------------------------------------------------------------
local function site_name_hook()
   return "CURC"
end

------------------------------------------------------------------------
-- Add ROOT, INC and LIB variables
------------------------------------------------------------------------
function pkgVars(pkg)

   local p_site = site_name_hook() .."_"
                  .. pkg.name:gsub("%S",{["/"] = "_", ["."] = "_", ["-"] = "_"})
                  .. "_"
   local p_root = string.upper(p_site .."ROOT")
   local p_lib  = string.upper(p_site .."LIB")
   local p_inc  = string.upper(p_site .."INC")
   local l_dir = pathJoin(pkg.prefix, "lib")
   local i_dir = pathJoin(pkg.prefix, "include")
   local l64_dir = pathJoin(pkg.prefix, "lib64")

   setenv(p_root, pkg.prefix)
   if isDir(l_dir) then
     setenv(p_lib, l_dir)
   elseif isDir(l64_dir) then
     setenv(p_lib, l64_dir)
   end

   if isDir(i_dir) then
     setenv(p_inc, i_dir)
   end 

end

------------------------------------------------------------------------
-- Set package information
------------------------------------------------------------------------
function setPkgInfo(pkg)
   help(pkg.help)
   whatis("Name            : " .. pkg.display_name)
   whatis("Version         : " .. pkg.version)
   whatis("Module          : " .. pkg.id)
   whatis("Category        : " .. pkg.category)
   whatis("Keyword         : " .. pkg.keywords)
   whatis("URL             : " .. pkg.url)
   whatis("License         : " .. pkg.license)
   whatis("Description     : " .. pkg.description)
   whatis("Prefix          : " .. pkg.prefix)
end

------------------------------------------------------------------------
-- Prepend to the module path
------------------------------------------------------------------------
function prependModulePath(subdir)
   local mroot = os.getenv("MODULEPATH_ROOT")
   local mdir  = pathJoin(mroot, subdir)
   prepend_path("MODULEPATH", mdir)
end

------------------------------------------------------------------------
-- Append to the module path
------------------------------------------------------------------------
function appendModulePath(subdir)
   local mroot = os.getenv("MODULEPATH_ROOT")
   local mdir  = pathJoin(mroot, subdir)
   append_path("MODULEPATH", mdir)
end

------------------------------------------------------------------------
-- Set a site & pkg variable path (i.e. ROOT, INC or LIB)
------------------------------------------------------------------------
function setVarPath(pkg, var, subdir)
   local sname = site_name_hook()
   local pname = pkg.name
   local iname = sname .. "_" .. pname .. "_" .. var
   setenv(iname:upper(), subdir)
end

------------------------------------------------------------------------
hook.register("load",     load_hook)
hook.register("avail",    avail_hook)
hook.register("SiteName", site_name_hook)

sandbox_registration { load_hook         = load_hook,
                       avail_hook        = avail_hook,
                       site_name_hook    = site_name_hook,
                       loadPkgDefaults   = loadPkgDefaults,
                       setPkgInfo        = setPkgInfo,
                       prependModulePath = prependModulePath,
                       appendModulePath  = appendModulePath,
                       setVarPath        = setVarPath,
                     }


