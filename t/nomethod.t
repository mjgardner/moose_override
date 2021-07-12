#!/usr/bin/env perl

use strict;
use warnings;
use Test::Most;

use ok 'Local::MyClassNoMethod::MyChildPlain';
use ok 'Local::MyClassNoMethod::MyChildOverride';

my $PREFIX = 'Local::MyClassNoMethod::MyChild';
for ( qw(Plain Override) ) {
    my $object = new_ok "$PREFIX$_";
    lives_and { is $object->my_method, "child $PREFIX$_" } "$_ child";
}

done_testing;
