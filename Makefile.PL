#############################################################################
## Name:        Makefile.PL
## Purpose:     Makefile
## Author:      Hans Oesterholt-Dijkema
## Modified by:
## Created:     19-4-2004
## RCS-ID:      $Id: Makefile.PL,v 1.3 2004/04/19 18:25:05 cvs Exp $
## Copyright:   (c) 2004 Hans Oesterholt-Dijkema
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under Artistic license.
#############################################################################

use strict;

my $r=eval("use Wx::build::MakeMaker 0.16;return 1;");
if (not $r) {
  die "wxPerl is a prerequisite for this module\n".
      "Please install Wx-0.16 or above\n";
}

wxWriteMakefile( NAME         => 'Wx::Polygon',
                 VERSION_FROM => 'Polygon.pm',
                 LIBS         => ( '' ),
                 WX_CORE_LIB  => ( 'core base' ),
               );


