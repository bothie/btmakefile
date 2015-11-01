###############################################################################
#
# The btmakefile are Copyright (C) 2001-2006 by Bodo Thiesen <bothie@gmx.de>
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program; if not, write to the Free Software
#    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
###############################################################################

package        = btmakefile
copyrightyears = 2001-2007
mainauthor     = Bodo Thiesen <bothie@gmx.de>

MAKEFILE = workaround_big_files_bug.Makefile
TOPDIR   = .
THISDIR  = .

# ENABLE_POINTER=true

SRCS = workaround_big_files_bug.c

LIBTARGET = workaround_big_files_bug

SOTARGET = libworkaround_big_files_bug.$(version).so
# SOFLAGS += -lm -ldl
ARTARGET = libworkaround_big_files_bug.a

include Makefile.Include

real-all:

real-clean:
	@rm -f $(SHROBJ) $(ARCOBJ) $(INCOBJ)
