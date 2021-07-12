#!/usr/bin/env perl

use strict;
use warnings;
use Test::Most;

use ok 'Local::MyClass::MyChildPlain';
use ok 'Local::MyClass::MyChildOverride';

my $PREFIX = 'Local::MyClass::MyChild';
for ( qw(Plain Override) ) {
    my $object = new_ok "$PREFIX$_";
    lives_and { is $object->my_method, "child $PREFIX$_" } "$_ child";
}

done_testing;
