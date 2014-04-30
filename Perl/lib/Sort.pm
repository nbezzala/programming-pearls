package Sort;

use Data::Dumper;

=head 

For each item in the array, compare it to all the items after it.
If the second item is bigger, swap the two items.

=cut

sub insertion_sort {
	my $arr = shift;

	my $len = scalar(@$arr);

	for (my $i = 0; $i < $len; $i++) {
		for (my $j = $i+1; $j < $len; $j++) {
			if ($arr->[$i] > $arr->[$j]) {
				my $temp = $arr->[$i];
				$arr->[$i] = $arr->[$j];
				$arr->[$j] = $temp;
			}
		}
	}

	return $arr;
}

=head

Implementation of bit sort for numbers less than 32 with input as an array
Doing this first because Int in Perl would use a 32 bit integer,
and we want to solve the simple problem first before attacking the bigger ones

We set $bits to 0. Then we set the correct bits to 1 in $bits.


=cut

sub bit_sort {
	my $arr = shift;

	my $bits = 0;

	my @sorted;
	for my $i ( @$arr ) {
		my $p = 2 ** ($i - 1);
		$bits |= $p;
	}

	for my $i ( 1..32 ) {
		$p = 2 ** ($i - 1);
		push @sorted, $i if $bits & $p;
	}

	return \@sorted;
}

=head

Implementation of a bit sort for numbers upto 64 with input as an array of positive integers

We create an array of integers to get an array of bits.
First we need to find out which array element to set the bit for.

=cut

sub bit_sort_64 {
    my $arr = shift;

	my @bits = (0, 0);
	
	for my $i ( @$arr ) {
		my $n = int($i/32);
		my $k = $i - ($n * 32);
		my $p = 2 ** ( $k-1 );
		$bits[$n] = $bits[$n] | $p;
	}

sprintf("%b \n", $bits[0]);


	for my $i ( 0 .. 1 ) {
		for my $j ( 1 .. 32 ) {
			$p = ($i * 32) + 2**$j;
			push @sorted, $p if $bits[$i] & ($p - 32*$i);
		}	
   	} 
	
	return \@sorted;
}

1;
