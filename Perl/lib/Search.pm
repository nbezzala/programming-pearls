package Search;

sub binary_search {
	my $n = shift;
    my $aref = shift;

	my $start = 0;
	my $end = scalar(@$aref);
	my $mid = ($start + $end)/2;

	while ( $start < $end ) {
		if ( $aref->[$mid] == $n ) {
			return 1;
		}

		if ( $aref->[$mid] < $n ) {
			$end = $mid;
		} else {
			$start = $mid;
		}

        $mid = ($start + $end)/2;
	}
	
	return 0;	
}

1;
