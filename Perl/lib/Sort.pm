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

nitish;
