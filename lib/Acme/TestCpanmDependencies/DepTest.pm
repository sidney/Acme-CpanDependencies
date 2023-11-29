=head1 NAME

Acme::TestCpanmDependencies::DepTest - test helper

=head1 SYNOPSIS

blah blah blah

=cut

package Acme::TestCpanmDependencies::DepTest;

use Acme::TestCpanmDependencies;

sub test_dep {
  Acme::TestCpanmDependencies::call_up_from_down();
  return 1;
  }

1;
