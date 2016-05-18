package Search;

sub binary_search {
	my $n = shift;
    my $aref = shift;

	my $start = 0;
	my $end = scalar(@$aref);
	my $mid = $end/2;

	while ( $start < $end ) {
		if ( $aref->[$mid] == $n ) {
			return 1;
		}
		if ( $aref->[$mid] < $n ) {
			$end = $mid;
			$mid = $mid/2;
		} else {
			$start = $mid;
			$end = ($end - $start)/2
		}
	}
	
	return 0;	
}

1;
