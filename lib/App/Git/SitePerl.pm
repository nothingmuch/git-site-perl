package App::Git::SitePerl;

use strict;
use warnings;


our $VERSION = "0.01";

# ex: set sw=4 et:

__PACKAGE__

__END__

=pod

=head1 NAME

App::Git::SitePerl - Versioned site installs using Git and L<CPAN>

=head1 SYNOPSIS

Installation:

    # create a .git and configure CPAN.pm:

    % git site-perl-init

Usage:

    # use CPAN.pm normally:

    % cpan Module::Foo

=head1 DESCRIPTION

These two scripts provide hooks to have a versioned sitelib directory, by
configuring L<CPAN> to use a wrapper that invokes C<make install> or
C<./Build install> normally, and then calls C<git add> and C<git commit>.

=head1 LIMITATIONS

=head2 Only C<$Config{installsitelib}> is kept under version control

If your perl is completely isolated from the rest of the system (e.g. installed
with the prefix C</usr/local/perl-5.xx.x> instead of C</usr/local>) then it's
better to C<git init> at the top level of that prefix.

Unfortunately in a shared prefix there is too much potential for confusion by
accidentally committing non Perl things.

=head1 TODO

=over 4

=item *

L<CPANPLUS> integration

=item *

L<local::lib> support

=head1 SEE ALSO

L<CPAN>, L<local::lib>
