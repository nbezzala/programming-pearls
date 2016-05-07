package Brackets;
use Data::Dumper;


sub isBalanced {
    my $str = shift;

    my @array = split(//, $str);
	my @brackets;
	for my $i ( @array ) {
		if ( $i eq "(" ) {
			push @brackets, "(";
		}
		if ( $i eq ")" ) {
			pop @brackets;
		}
print $i, "\n";
	}
print Dumper(
print Dumper(\@array);
}

1;
