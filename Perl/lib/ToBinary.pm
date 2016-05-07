package ToBinary;

sub decimal_to_binary {
    my $n = shift;

    return "Error" unless $n =~ /\d+/;

    return $n if ($n == 0 || $n == 1);

    my $rem = $n % 2;
    $n = int($n/2);
    return decimal_to_binary($n) . $rem;
}

1;
