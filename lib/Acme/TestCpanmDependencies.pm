=head1 NAME

Acme::CpanmTestDependencies - a module used to test some aspects of build dependency handling in cpanm

=head1 SYNOPSIS

    Nothing to run, just test if it builds using cpanm

=head1 DESCRIPTION

blah blah blah

=cut

package Acme::TestCpanmDependencies;
use strict;
use warnings;

require v5.14.0;

use NetAddr::IP 4.010;

our $VERSION = "0.000001";

sub call_up_from_down {
  return;
}

sub something_using_netaddr_ip {
  return NetAddr::IP->VERSION;
}

1;
