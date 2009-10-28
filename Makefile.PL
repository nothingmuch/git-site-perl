#!/usr/bin/perl -w

use strict;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'App::Git::SitePerl',
    VERSION_FROM => 'lib/App/Git/SitePerl.pm',
    INSTALLDIRS  => 'site',
    SIGN         => 1,
    PL_FILES     => { },
    EXE_FILES    => [ grep { /\w$/ } glob("script/*") ],
    PREREQ_PM    => {
		CPAN => 0,
		Cwd => 0,
    },
);
