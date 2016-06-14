package Search;

use POSIX;

sub binary_search {
	my $n = shift;
    my $aref = shift;

	my $start = 0;
	my $end = scalar(@$aref) - 1;

	while ( $start <= $end ) {

		my $mid = floor(($end + $start)/2);

		if ( $aref->[$mid] == $n ) {
			return 1;
		}

		if ( $aref->[$mid] < $n ) {
			$end = $mid - 1;
		} else {
			$start = $mid + 1;
		}

	}
	
	return 0;	
}

1;
