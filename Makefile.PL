#!/usr/bin/perl
require v5.14.0;
  
use strict;
use warnings;

require v5.14.0;

use ExtUtils::MakeMaker 6.64;
use constant MIN_MAKEMAKER_VERSION => 6.64;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Module to use in testing configure_requires dependencies in cpanm",
  "AUTHOR" => "Sidney Markowitz",
  "CONFIGURE_REQUIRES" => {
                           "ExtUtils::MakeMaker" => 6.64,
                           "NetAddr::IP" => 4.010
  },
  "DISTNAME" => "Acme-TestCpanmDependencies",
  "LICENSE" => "apache_2_0",
  "MIN_PERL_VERSION" => 5.014001,
  "NAME" => "Acme::TestCpanmDependencies",
  "PREREQ_PM" => {
    "NetAddr::IP" => 4.010
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0
  },
  "VERSION" => "0.1",
  "test" => {
    "TESTS" => "t/*.t"
  }
);

use lib 'lib';
require Acme::TestCpanmDependencies::Deptest;
if (Acme::TestCpanmDependencies::DepTest::test_dep() == 0) {
  exit 0;
}

WriteMakefile(%WriteMakefileArgs);
