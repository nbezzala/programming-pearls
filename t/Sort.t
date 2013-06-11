#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use lib "../lib";
use Sort;

=pod
Possible missing tests: 
Sort alphabets
sort negative numbers

=cut

my @numbers = (3);
my $sorted = Sort::insertion_sort(\@numbers);
is_deeply($sorted, [3], "Sorted single element list");

my @numbers = (1, 2, 3);
my $sorted = Sort::insertion_sort(\@numbers);
is_deeply($sorted, [1, 2, 3], "Sorted already sorted list");

my @numbers = (3, 2, 1);
my $sorted = Sort::insertion_sort(\@numbers);
is_deeply($sorted, [1, 2, 3], "Sorted reverse sorted list");

my @numbers = (3, 3, 3);
my $sorted = Sort::insertion_sort(\@numbers);
is_deeply($sorted, [3, 3, 3], "Sorted list with all numbers same");

my @numbers = (4, 2);
my $sorted = Sort::insertion_sort(\@numbers);
is_deeply($sorted, [2, 4], "Sorted two element list");


done_testing;
