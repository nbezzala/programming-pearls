#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Search;

my @numbers = (4, 6, 8, 10);

my $found = Search::binary_search(3, \@numbers);
is($found, 0, "3 not found in array of even numbers from 4 to 10");

$found = Search::binary_search(5, \@numbers);
is($found, 0, "5 not found in array of even numbers from 4 to 10");

$found = Search::binary_search(7, \@numbers);
is($found, 0, "7 not found in array of even numbers from 4 to 10");

$found = Search::binary_search(9, \@numbers);
is($found, 0, "9 not found in array of even numbers from 4 to 10");

$found = Search::binary_search(11, \@numbers);
is($found, 0, "11 not found in array of even numbers from 4 to 10");

$found = Search::binary_search(2, \@numbers);
is($found, 0, "2 not found in array of even numbers from 4 to 10");

$found = Search::binary_search(2, \@numbers);
is($found, 1, "4 found in array of even numbers from 4 to 10");

$found = Search::binary_search(6, \@numbers);
is($found, 1, "6 found in array of even numbers from 4 to 10");

$found = Search::binary_search(8, \@numbers);
is($found, 1, "8 found in array of even numbers from 4 to 10");

$found = Search::binary_search(10, \@numbers);
is($found, 1, "10 found in array of even numbers from 4 to 10");

$found = Search::binary_search(12, \@numbers);
is($found, 0, "12 not found in array of even numbers from 4 to 10");

