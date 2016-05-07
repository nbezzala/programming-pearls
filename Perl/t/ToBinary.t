#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../lib";
use ToBinary;


is(ToBinary::decimal_to_binary(1), "1", "Binary of 1 is 1");
is(ToBinary::decimal_to_binary(2), "10", "Binary of 2 is 10");
is(ToBinary::decimal_to_binary(3), "11", "Binary of 3 is 11");
is(ToBinary::decimal_to_binary(4), "100", "Binary of 4 is 100");
is(ToBinary::decimal_to_binary(5), "101", "Binary of 5 is 101");
is(ToBinary::decimal_to_binary(6), "110", "Binary of 6 is 110");
is(ToBinary::decimal_to_binary(7), "111", "Binary of 7 is 111");
is(ToBinary::decimal_to_binary(8), "1000", "Binary of 8 is 1000");

done_testing();
