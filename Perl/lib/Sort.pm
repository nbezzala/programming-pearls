package Sort;

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

# Implementation of bit sort for numbers less than 32
# Because Int in Perl would use a 32 bit integer
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

nitish;
