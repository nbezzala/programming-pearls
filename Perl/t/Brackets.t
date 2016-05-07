#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Brackets;


is(Brackets::isBalanced("a(bcd)d"), 1, "String a(bcd) is balanced");


