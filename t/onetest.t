#!perl

use strict;
use Test::More tests => 1;

BEGIN{
    require_ok 'Acme::TestCpanmDependencies';
}

diag("Acme::TestCpanmDependencies/$Acme::TestCpanmDependenciesApp::VERSION");

__DATA__
