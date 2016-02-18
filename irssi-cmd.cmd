@ECHO OFF
SET PATH=bin
IF NOT EXIST bin\irssi.exe EXIT
SET PERL5LIB=lib/perl5/5.8
SET TERMINFO_DIRS=terminfo
START irssi.exe %1 %2 %3 %4 %5
