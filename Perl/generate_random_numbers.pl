#!/usr/bin/perl

use Math::BigInt;

my $select = 1_000_000;
my $remaining = 10_000_000;

my $file = "random.txt";
open (my $fh, ">", $file) or die "Could not open file for write $!";

for (my $i = 0; $i < 10_000_000; $i++) {
    if ( ((rand() * 10_000_000) % $remaining) < $select) {
        print $fh "$i\n";
        $select--;
    }
    $remaining--;
}


#
#my %hash;
#
#for (my $n = 1; $n <  10_000_000; $n++) {
#    $hash{$n} = 1;
#}
#
#
#
