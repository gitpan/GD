# This Makefile is for the GD extension to perl.
#
# It was generated automatically by MakeMaker version
# 1.19 (Revision: ) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#	ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker Parameters:

#	LIBS => [q[-lm]]
#	MYEXTLIB => q[libgd/libgd$(LIB_EXT)]
#	NAME => q[GD]
#	VERSION_FROM => q[GD.pm]
#	dist => { ZIPFLAGS=>q[-rl], ZIP=>q[/usr/bin/zip], COMPRESS=>q[gzip -9f], SUFFIX=>q[gz] }

# --- MakeMaker constants section:
NAME = GD
DISTNAME = GD
NAME_SYM = GD
VERSION = 1.19
VERSION_SYM = 1_19
XS_VERSION = 1.19
INST_LIB = :::lib
INST_ARCHLIB = :::lib
PERL_LIB = :::lib
PERL_SRC = :::
PERL = :::miniperl
FULLPERL = :::perl
LDLOADLIBS = :libgd:libgd.Lib.CFM68K "{{MW68KLibraries}}MathLibCFM68K (4i_8d).Lib" :libgd:libgd.Lib.PPC "{{MWPPCLibraries}}"MathLib
SOURCE =  GD.c

MODULES = GD.pm \
	qd.pl


.INCLUDE : $(PERL_SRC)BuildRules.mk


# FULLEXT = Pathname for extension directory (eg DBD:Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT.
# ROOTEXT = Directory part of FULLEXT (eg DBD)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = GD
BASEEXT = GD
ROOTEXT = 
DEFINE = -i :libgd

# Handy lists of source code files:
XS_FILES= GD.xs
C_FILES = GD.c
H_FILES = 


.INCLUDE : $(PERL_SRC)ext:ExtBuildRules.mk


# --- MakeMaker dlsyms section:

dynamic :: GD.exp


GD.exp: Makefile.PL myextlib
	$(PERL) "-I$(PERL_LIB)" -e 'use ExtUtils::Mksymlists; Mksymlists("NAME" => "GD", "DL_FUNCS" => {  }, "DL_VARS" => []);'


# --- MakeMaker dynamic section:

all :: dynamic

install :: do_install_dynamic

install_dynamic :: do_install_dynamic


# --- MakeMaker static section:

all :: static

install :: do_install_static

install_static :: do_install_static

static :: myextlib


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	Set OldEcho {Echo}
	Set Echo 0
	Directory libgd
	If "`Exists -f Makefile.mk`" != ""
	    $(MAKE) clean
	End
	Set Echo {OldEcho}
		$(RM_RF) GD.c
	$(MV) Makefile.mk Makefile.mk.old


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	Set OldEcho {Echo}
	Set Echo 0
	Directory libgd
	If "`Exists -f Makefile.mk.old`" != ""
	    $(MAKE) realclean
	End
	Set Echo {OldEcho}
		Set OldEcho {Echo}
	Set Echo 0
	Directory libgd
	If "`Exists -f Makefile.mk`" != ""
	    $(MAKE) realclean
	End
	Set Echo {OldEcho}
		$(RM_RF) Makefile.mk Makefile.mk.old


# --- MakeMaker postamble section:
#$(MYEXTLIB): libgd:Makefile
#	cd libgd && $(MAKE) -e all
myextlib: 
	directory libgd
		Set OldEcho {Echo}
		Set Echo 0
		BuildProgram all
		Set Echo {OldEcho}
	directory ::

html: GD.pm
	pod2html GD.pm
	mv GD.pm.html GD.html


# --- MakeMaker rulez section:

install install_static install_dynamic :: 
	$(PERL_SRC)PerlInstall -l $(PERL_LIB)
	$(PERL_SRC)PerlInstall -l "Bird:MacPerl Ä:site_perl:"

.INCLUDE : $(PERL_SRC)BulkBuildRules.mk


# End.
