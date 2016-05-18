#!/usr/bin/perl

# Problem: 
# Find the longest string of 0s between two 1s
#
# Wrong solution
# Counts only the first occurrence of 101 or 1001
sub solution {
    my ($n)=@_;
    # write your code in Perl 5.18

    my $k = 0;
    my $binary = binary($n);

    $binary =~ m/1(0+)1/;
    print "$binary : $1 : " . length($1) . "\n";

    return length($1);
}

sub binary {
    my $n = shift;

    return $n if $n == 0 || $n == 1;

    my $k = $n % 2;

    my $b = int($n/2);

    return binary($b) . $k;
}


#sub old_binary {
#    my $n = shift;
#    my $gap = shift;
#    my $max = shift;
#
#    return $n if $n == 0;
#
#
#
#    
#    my $k = $n % 2;
#    if ( $k == 0 && $gap >= 0 ) {
#        $gap++;
#    } else {
#        $gap = 0;
#    }
#
#    $max = $gap if $max < $gap;
#
#    my $b = int($n/2);
#
#    print "n: $n, K: $k, Gap: $gap, Max: $max, B: $b \n";
#    
#    return solution($b, $gap, $max) . $k; 
#}


print "328 ", solution(328), "\n";
print "1162 ", solution(1162), "\n";
print "5 ", solution(5), "\n";
print "6 ", solution(6), "\n";
print "7 ", solution(7), "\n";
print "8 ", solution(8), "\n";
print "9 ", solution(9), "\n";
print "10 ", solution(10), "\n";
