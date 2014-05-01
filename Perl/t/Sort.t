#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Sort;

=pod
Possible missing tests: 
Sort alphabets
sort negative numbers

=cut

my @numbers = (3);
my $sorted = Sort::insertion_sort(\@numbers);
is_deeply($sorted, [3], "Sorted single element list");

@numbers = (1, 2, 3);
$sorted = Sort::insertion_sort(\@numbers);
is_deeply($sorted, [1, 2, 3], "Sorted already sorted list");

@numbers = (3, 2, 1);
$sorted = Sort::insertion_sort(\@numbers);
is_deeply($sorted, [1, 2, 3], "Sorted reverse sorted list");

@numbers = (3, 3, 3);
$sorted = Sort::insertion_sort(\@numbers);
is_deeply($sorted, [3, 3, 3], "Sorted list with all numbers same");

@numbers = (4, 2);
$sorted = Sort::insertion_sort(\@numbers);
is_deeply($sorted, [2, 4], "Sorted two element list");

@numbers = (4, 2);
$sorted = Sort::bit_sort(\@numbers);
is_deeply($sorted, [2, 4], "Sorted two element list");

@numbers = (4, 2, 16, 8, 10);
$sorted = Sort::bit_sort(\@numbers);
is_deeply($sorted, [2, 4, 8, 10, 16], "Sorted five element list");

@numbers = (4, 2, 16, 31, 8, 10);
$sorted = Sort::bit_sort(\@numbers);
is_deeply($sorted, [2, 4, 8, 10, 16, 31], "Sorted list with 31 in it");

@numbers = ( 32, 18 );
$sorted = Sort::bit_sort(\@numbers);
is_deeply($sorted, [ 18, 32 ], "Sorted list with 32 in it");

# Fix this test, should fail nicely for numbers greater than 32
#@numbers = ( 33, 18 );
#$sorted = Sort::bit_sort(\@numbers);
#is_deeply($sorted, [ 18, 33 ], "Sorted list with 32 in it");

#@numbers = ( 33 );
#$sorted = Sort::array_bit_sort(\@numbers);
#is_deeply($sorted, [ 33 ], "Sorted list with 33 in it");

@numbers = (1);
$sorted = Sort::bit_sort_64(\@numbers);
is_deeply($sorted, [1], "Sorted single element list");

@numbers = (2);
$sorted = Sort::bit_sort_64(\@numbers);
is_deeply($sorted, [2], "Sorted single element list");

@numbers = (3);
$sorted = Sort::bit_sort_64(\@numbers);
is_deeply($sorted, [3], "Sorted single element list");

@numbers = ( 31 );
$sorted = Sort::bit_sort_64(\@numbers);
is_deeply($sorted, [ 31 ], "Sorted list with 31 in it");

@numbers = ( 32);
$sorted = Sort::bit_sort_64(\@numbers);
is_deeply($sorted, [ 32 ], "Sorted list with 32 in it");

@numbers = ( 33, 18 );
$sorted = Sort::bit_sort_64(\@numbers);
is_deeply($sorted, [ 18, 33 ], "Sorted list with 33 in it");

@numbers = ( 63 );
$sorted = Sort::bit_sort_64(\@numbers);
is_deeply($sorted, [ 63 ], "Sorted list with 63 in it");

@numbers = ( 63, 43, 18, 1, 23, 39 );
$sorted = Sort::bit_sort_64(\@numbers);
is_deeply($sorted, [ 1, 18, 23, 39, 43, 63 ], "Sorted list with 6 elements in random order");

@numbers = ( 1 .. 64 );
$sorted = Sort::bit_sort_64(\@numbers);
is_deeply($sorted, [ 1 .. 64 ], "Sorted an already sorted list");

done_testing;
