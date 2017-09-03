#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

use Test::Simple 'no_plan';

opendir(my $DIR, ".");
my @templates = grep(/\.json$/, readdir($DIR));
for my $template (@templates) {
  ok( system("packerio validate $template") == 0 );
}
