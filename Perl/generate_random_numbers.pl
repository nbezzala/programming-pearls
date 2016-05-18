#!/usr/bin/perl
use Math::BigInt;

my %hash;

for (my $n = 1; $n <  10_000_000; $n++) {
    $hash{$n} = 1;
}

my $file = "random.txt";
open (my $fh, ">", $file) or die "Could not open file for write $!";

print $fh join("\n", keys %hash);

